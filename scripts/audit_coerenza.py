"""Controllo di coerenza dei dati del sito (schede escursione, luoghi, guide).

Uso:  python -I scripts/audit_coerenza.py
Stampa un elenco di problemi per categoria. Non modifica nulla.
Complementare ai test (Escursioni.Tests/DataIntegrityTests.cs): qui ci sono i controlli
"di buon senso" che confrontano testi e numeri tra loro.
"""
import glob
import html
import json
import os
import re
import sys
from collections import defaultdict
from datetime import date, datetime

sys.stdout.reconfigure(encoding="utf-8")
ROOT = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "Escursioni.Web")
DATA = os.path.join(ROOT, "Data")
TODAY = date.today()

problems = defaultdict(list)


def p(cat, msg):
    problems[cat].append(msg)


def load(path):
    with open(path, encoding="utf-8-sig") as f:
        return json.load(f)


def plain(s):
    return html.unescape(re.sub(r"<[^>]+>", " ", s or ""))


def nums_km(text):
    # "12,5 km", "12.5 km", "13 km"
    return [float(x.replace(",", ".")) for x in re.findall(r"(\d+(?:[.,]\d+)?)\s*km\b", text)]


def nums_gain(text):
    # "+1.252 m", "+880 m", "880 metri di dislivello"
    out = [int(x.replace(".", "")) for x in re.findall(r"\+\s?(\d{1,2}(?:\.\d{3})|\d{2,4})\s*m\b", text)]
    out += [int(x.replace(".", "")) for x in re.findall(r"(\d{1,2}(?:\.\d{3})|\d{2,4})\s*metri di dislivello", text)]
    return out


hikes = {}
for f in glob.glob(os.path.join(DATA, "hikes", "*.json")):
    d = load(f)
    hikes[d["wikiloc_id"]] = d
variants = {load(f)["wikiloc_id"]: load(f) for f in glob.glob(os.path.join(DATA, "hikes-varianti", "*.json"))}
luoghi = load(os.path.join(DATA, "luoghi.json"))
sheets = {os.path.basename(f)[:-5]: load(f) for f in glob.glob(os.path.join(DATA, "luoghi-schede", "*.json"))}
guides = {os.path.basename(f)[:-5]: load(f) for f in glob.glob(os.path.join(DATA, "guide", "*.json"))}
zone_guides = {os.path.basename(f)[:-5]: load(f) for f in glob.glob(os.path.join(DATA, "zone-guide", "*.json"))}

# Slug delle escursioni come li calcola il sito non sono nei JSON: si leggono dall'indice di ricerca se c'è
slugs = set()
idx_path = os.environ.get("SEARCH_INDEX")
if idx_path and os.path.exists(idx_path):
    slugs = {x["slug"] for x in load(idx_path)}

# Bounding box approssimativi delle zone (lat_min, lat_max, lon_min, lon_max)
ZONE_BOX = {
    "Alpi Apuane": (43.85, 44.25, 9.95, 10.55),
    "Garfagnana": (43.95, 44.35, 10.15, 10.65),
    "Val di Lima": (43.95, 44.12, 10.55, 10.85),
    "Versilia e Massarosa": (43.75, 44.05, 10.15, 10.45),
    "Monti Pisani": (43.65, 43.9, 10.35, 10.7),
    "Lucchesia e colline toscane": (43.1, 44.1, 10.2, 11.2),
    "Livorno e costa toscana": (42.7, 43.7, 10.0, 10.75),
    "Lunigiana": (44.1, 44.5, 9.7, 10.3),
    "Appennino Tosco-Emiliano": (43.9, 44.6, 9.7, 11.6),
    "Grosseto e Maremma": (42.3, 43.2, 10.6, 11.9),
    "Firenze e provincia": (43.4, 44.2, 10.9, 11.8),
}

price_re = re.compile(r"(€\s?\d|\d\s?€|\d+(?:[.,]\d+)?\s?euro\b)", re.I)
seo_titles = defaultdict(list)
cenni = defaultdict(list)
metas = defaultdict(list)

for wid, h in hikes.items():
    t = h.get("titolo_seo") or ""
    meta = h.get("meta_descrizione") or ""
    seo_titles[t.lower()].append(wid)
    metas[meta.lower()].append(wid)
    name = f"{wid} {t or h.get('titolo')}"

    # Campi obbligatori
    for k in ["titolo_seo", "meta_descrizione", "tag", "difficolta", "tipo_giro", "distanza_km", "dislivello_m", "data_escursione", "come_arrivare"]:
        if not h.get(k):
            p("campi mancanti", f"{name}: manca {k}")
    if not h.get("media"):
        p("campi mancanti", f"{name}: nessuna foto")
    if not h.get("comune"):
        p("campi mancanti", f"{name}: manca comune (luogo di partenza)")

    # Lunghezza descrizione per Google
    if len(meta) > 160:
        p("meta descrizione", f"{name}: {len(meta)} caratteri")
    if meta and len(meta) < 70:
        p("meta descrizione", f"{name}: troppo corta ({len(meta)} caratteri)")

    km = h.get("distanza_km")
    gain = h.get("dislivello_m")
    # Numeri nei testi coerenti con i dati della traccia (tolleranza 10% sui km, 12% sul dislivello)
    for field in ["meta_descrizione"]:
        txt = h.get(field) or ""
        for v in nums_km(txt):
            if km and abs(v - float(km)) / float(km) > 0.10 and v > 1:
                p("numeri incoerenti", f"{name}: {field} dice {v} km, la traccia {km} km")
        for v in nums_gain(txt):
            if gain and abs(v - gain) / max(gain, 1) > 0.12:
                p("numeri incoerenti", f"{name}: {field} dice +{v} m, la traccia +{gain} m")
    intro = plain(h.get("descrizione_html"))[:400]
    for v in nums_km(intro)[:1]:
        if km and abs(v - float(km)) / float(km) > 0.15 and v > 2:
            p("numeri incoerenti (da verificare)", f"{name}: la descrizione inizia con {v} km, la traccia {km} km")

    # Tempo plausibile
    tmin = h.get("tempo_min")
    if tmin and km:
        speed = float(km) / (tmin / 60)
        if tmin > 14 * 60 and "due giorni" not in (t + h.get("titolo", "")).lower() and "2 giorni" not in (t + h.get("titolo", "")).lower():
            p("tempo anomalo", f"{name}: tempo totale {h.get('tempo_hhmm')} per {km} km (GPS rimasto acceso?)")
        elif speed > 7 and "bici" not in (t + h.get("titolo", "")).lower():
            p("tempo anomalo", f"{name}: {speed:.1f} km/h di media ({km} km in {h.get('tempo_hhmm')})")

    # Quote e dislivello
    qmin, qmax = h.get("quota_min_m"), h.get("quota_max_m")
    if qmin is not None and qmax is not None and gain is not None:
        if h.get("tipo_giro") == "Anello" and (qmax - qmin) > 80 and gain < (qmax - qmin) * 0.9:
            p("quote e dislivello", f"{name}: anello con dislivello +{gain} m ma quote {qmin}-{qmax} m")

    # Data
    try:
        de = datetime.strptime(h["data_escursione"][:10], "%Y-%m-%d").date()
        if de > TODAY:
            p("date", f"{name}: data escursione nel futuro ({de})")
    except Exception:
        pass
    if (h.get("updated_at") or "") < (h.get("created_at") or ""):
        p("date", f"{name}: updated_at precedente a created_at")

    # Zona coerente con le coordinate
    lat, lon, tag = h.get("centroid_lat"), h.get("centroid_lon"), h.get("tag")
    if lat and lon and tag in ZONE_BOX:
        a, b, c, e = ZONE_BOX[tag]
        if not (a <= lat <= b and c <= lon <= e):
            p("zona da verificare", f"{name}: zona {tag} ma coordinate {lat:.3f}, {lon:.3f}")

    # Prezzi in cifre (regola: mai)
    for field in ["descrizione_html", "come_arrivare", "cenno_storico", "meta_descrizione"]:
        if price_re.search(plain(h.get(field))):
            p("prezzi in cifre", f"{name}: {field} contiene un prezzo")

    # Difficoltà e tipo di giro dichiarati nella descrizione per Google
    ml = meta.lower()
    diff = (h.get("difficolta") or "").lower()
    said = None
    if re.search(r"molto difficile", ml): said = "molto difficile"
    elif re.search(r"difficile", ml) and "non difficile" not in ml: said = "difficile"
    elif re.search(r"facile", ml) and "non facile" not in ml and "facile da seguire" not in ml: said = "facile"
    elif re.search(r"difficoltà media|media", ml): said = "medio"
    if said and diff and said != diff and not (said == "difficile" and diff in ("molto difficile", "per esperti")):
        p("difficoltà incoerente (da verificare)", f"{name}: la descrizione dice '{said}', il dato è '{h.get('difficolta')}'")
    if ml.startswith("anello") and h.get("tipo_giro") and h.get("tipo_giro") != "Anello":
        p("tipo di giro incoerente", f"{name}: la descrizione dice anello, il dato è '{h.get('tipo_giro')}'")
    if h.get("cenno_storico"):
        cenni[h["cenno_storico"].strip()].append(wid)

    # Fonti
    for fo in h.get("fonti") or []:
        if not str(fo.get("url", "")).startswith("https://"):
            p("fonti", f"{name}: fonte non https {fo.get('url')}")
    if h.get("cenno_storico") and not h.get("fonti"):
        p("fonti", f"{name}: cenno storico senza fonti")

    # Link interni nella descrizione
    for href in re.findall(r'href="(/escursioni/[^"#]+)"', h.get("descrizione_html") or ""):
        if slugs and href.split("/")[-1] not in slugs:
            p("link interni", f"{name}: link a scheda inesistente {href}")
    # Varianti
    for v in h.get("varianti") or []:
        if v not in variants:
            p("varianti", f"{name}: variante {v} non trovata in hikes-varianti")
    # GPX
    if not os.path.exists(os.path.join(ROOT, "wwwroot", "media", "gpx", f"{wid}.gpx")):
        p("file", f"{name}: manca il GPX")

for t, ids in seo_titles.items():
    if t and len(ids) > 1:
        p("titoli duplicati", f"{ids}: '{t}'")
for c, ids in cenni.items():
    if len(ids) > 1:
        p("cenni storici identici", f"{ids}: {c[:70]}...")
for m, ids in metas.items():
    if m and len(ids) > 1:
        p("descrizioni duplicate", f"{ids}")

# Luoghi
osm_ids = set()
for wid, lst in luoghi.get("escursioni", {}).items():
    for o in lst:
        osm_ids.add(o)
    if int(wid) not in hikes and int(wid) not in variants:
        p("luoghi.json", f"escursione {wid} in luoghi.json ma non nel sito")
missing_places = [w for w in hikes if str(w) not in luoghi.get("escursioni", {})]
for w in missing_places:
    p("luoghi.json", f"{w} {hikes[w].get('titolo_seo')}: luoghi non ancora calcolati")
for slug, s in sheets.items():
    name = f"luogo {slug}"
    if s.get("osm") not in osm_ids:
        p("schede luogo", f"{name}: osm {s.get('osm')} non toccato da nessuna escursione")
    meta = s.get("meta_descrizione") or ""
    if len(meta) > 160:
        p("schede luogo", f"{name}: meta {len(meta)} caratteri")
    for field in ["testo_html", "meta_descrizione"]:
        if price_re.search(plain(s.get(field))):
            p("prezzi in cifre", f"{name}: {field} contiene un prezzo")
    if not s.get("fonti"):
        p("schede luogo", f"{name}: senza fonti")
    for href in re.findall(r'href="(/escursioni/(?!zona/)[^"#]+)"', s.get("testo_html") or ""):
        if slugs and href.split("/")[-1] not in slugs:
            p("link interni", f"{name}: link a scheda inesistente {href}")

# Guide
for slug, g in guides.items():
    for wid in g.get("escursioni", []):
        if wid not in hikes:
            p("guide", f"guida {slug}: escursione {wid} non esiste")
    for href in re.findall(r'href="(/escursioni/[^"#]+)"', g.get("testo_html") or ""):
        if slugs and href.split("/")[-1] not in slugs:
            p("link interni", f"guida {slug}: link a scheda inesistente {href}")
    if price_re.search(plain(g.get("testo_html"))):
        p("prezzi in cifre", f"guida {slug} contiene un prezzo")

total = sum(len(v) for v in problems.values())
print(f"Schede: {len(hikes)} escursioni, {len(variants)} varianti, {len(sheets)} luoghi, {len(guides)} guide")
print(f"Problemi trovati: {total}\n")
for cat in sorted(problems):
    print(f"== {cat} ({len(problems[cat])})")
    for m in problems[cat]:
        print("  -", m)
    print()
