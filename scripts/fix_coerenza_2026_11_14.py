"""Correzioni puntuali trovate dal controllo di coerenza del 14 novembre 2026 (eseguito una volta)."""
import json
import os
import re
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from gpx_stats import stats  # noqa: E402

sys.stdout.reconfigure(encoding="utf-8")
WEB = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "Escursioni.Web")
HIKES = os.path.join(WEB, "Data", "hikes")


def edit(path, fn):
    raw = open(path, "rb").read().decode("utf-8")
    d = json.loads(raw)
    fn(d)
    out = json.dumps(d, ensure_ascii=False, indent=2)
    if "\r\n" in raw:
        out = out.replace("\n", "\r\n")
    if raw.endswith("\n"):
        out += "\r\n" if "\r\n" in raw else "\n"
    open(path, "wb").write(out.encode("utf-8"))


def hike(wid, fn):
    edit(os.path.join(HIKES, f"{wid}.json"), fn)


# 1. Orrido di Botri: il GPS era rimasto acceso nel viaggio di ritorno. Si tiene solo la camminata.
gpx_path = os.path.join(WEB, "wwwroot", "media", "gpx", "106910190.gpx")
s = stats("106910190")
pts, cum = s["pts"], s["cum"]
cut = None
for i in range(20, len(pts), 5):
    a, b = pts[i - 20], pts[i]
    dt = (b[3] - a[3]).total_seconds() / 3600
    if dt > 0 and (cum[i] - cum[i - 20]) / dt > 12:
        cut = i - 20
        break
txt = open(gpx_path, encoding="utf-8").read()
if cut and txt.count("<trkpt") > cut + 1:
    trkpts = list(re.finditer(r"<trkpt\b.*?</trkpt>\s*", txt, re.S))
    start, end = trkpts[cut + 1].start(), trkpts[-1].end()
    txt = txt[:start] + txt[end:]
    open(gpx_path, "w", encoding="utf-8", newline="").write(txt)
    s2 = stats("106910190")
    minutes = round(s2["durata_h"] * 60)

    def orrido(d):
        d["tempo_min"] = minutes
        d["tempo_hhmm"] = f"{minutes // 60}:{minutes % 60:02d}"
        if d.get("tempo_mov_min") and d["tempo_mov_min"] > minutes:
            d["tempo_mov_min"] = None
            d["tempo_mov_hhmm"] = None
        d["quota_min_m"], d["quota_max_m"] = s2["quota"]
        d["coordinate_count"] = s2["punti"]
    hike(106910190, orrido)
    print("Orrido: traccia tagliata a", s2["km"], "km,", s2["punti"], "punti, tempo", minutes, "min, quote", s2["quota"])

# 2. Zone sbagliate (verificate dal comune di partenza)
ZONE = {
    104143205: "Grosseto e Maremma",          # Casale di Pari (Civitella Paganico, GR)
    104200262: "Grosseto e Maremma",          # Sovana (Sorano, GR)
    124574099: "Lucchesia e colline toscane",  # Sasso Pisano (Castelnuovo Val di Cecina, PI): non è sui Monti Pisani
    190572766: "Livorno e costa toscana",      # Campiglia Marittima (LI)
    192547578: "Firenze e provincia",          # Gambassi Terme (FI)
    97809994: "Monti Pisani",                  # San Cerbone, Moriglione di Penna: Monti Pisani
    123535150: "Lucchesia e colline toscane",  # Canneto (Monteverdi Marittimo, PI): non è in Maremma
}
for wid, z in ZONE.items():
    hike(wid, lambda d, z=z: d.__setitem__("tag", z))

# 3. Dati mancanti ricavati dal GPX o dal titolo
hike(261295859, lambda d: d.__setitem__("tipo_giro", "Anello"))      # partenza e arrivo coincidono
hike(268624800, lambda d: d.__setitem__("comune", "Mondsee"))
hike(230866244, lambda d: d.__setitem__("dislivello_m", stats("230866244")["dislivello"]))

# 4. Descrizioni per Google delle schede luogo oltre i 160 caratteri (venivano tagliate)
SHEETS = os.path.join(WEB, "Data", "luoghi-schede")
META = {
    "lago-santo-modenese": "Lago Santo Modenese (1501 m): come arrivare da Pievepelago, i rifugi Giovo, Vittoria e Marchetti e le salite al Rondinaio e ai laghi vicini.",
    "lago-scaffaiolo": "Lago Scaffaiolo (1793 m) al Corno alle Scale: come arrivare dalla Doganaccia, da Pratorsi e dagli impianti, il Rifugio Duca degli Abruzzi.",
}
for slug, m in META.items():
    assert len(m) <= 160, (slug, len(m))
    edit(os.path.join(SHEETS, f"{slug}.json"), lambda d, m=m: d.__setitem__("meta_descrizione", m))
alto = os.path.join(SHEETS, "rifugio-albergo-alto-matanna.json")
d = json.load(open(alto, encoding="utf-8"))
print("Alto Matanna meta attuale:", len(d["meta_descrizione"]), d["meta_descrizione"])
print("fatto")
