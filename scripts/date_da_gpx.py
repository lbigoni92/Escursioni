"""Ricava il giorno esatto delle escursioni dal GPX (Wikiloc dà solo il mese).

Uso, dalla cartella del repository:

    python -I scripts/date_da_gpx.py          # mostra cosa cambierebbe
    python -I scripts/date_da_gpx.py --scrivi # aggiorna i JSON

Per ogni scheda (Data/hikes e Data/hikes-varianti) senza "data_esatta": legge l'ora del primo
punto della traccia, la porta all'ora italiana e, se il mese coincide con quello di Wikiloc,
scrive il giorno in "data_escursione" con "data_esatta": true. Se il mese non coincide
(traccia caricata in ritardo o GPS con l'ora sbagliata) non tocca niente e lo segnala.
"""
import glob
import json
import os
import re
import sys
from datetime import datetime, timedelta, timezone

sys.stdout.reconfigure(encoding="utf-8")
WEB = "Escursioni.Web"
SCRIVI = "--scrivi" in sys.argv


def ultima_domenica(anno, mese):
    d = datetime(anno, mese + 1, 1) - timedelta(days=1) if mese < 12 else datetime(anno, 12, 31)
    return d - timedelta(days=(d.weekday() + 1) % 7)


def ora_italiana(utc):
    """Ora legale italiana: dall'ultima domenica di marzo all'ultima di ottobre, alle 01:00 UTC."""
    inizio = ultima_domenica(utc.year, 3).replace(hour=1, tzinfo=timezone.utc)
    fine = ultima_domenica(utc.year, 10).replace(hour=1, tzinfo=timezone.utc)
    return utc + timedelta(hours=2 if inizio <= utc < fine else 1)


def primo_orario(gpx):
    with open(gpx, encoding="utf-8", errors="ignore") as f:
        testo = f.read(400_000)
    m = re.search(r"<trkpt\b[^>]*>.*?<time>([^<]+)</time>", testo, re.S)
    if not m:
        return None
    t = m.group(1).strip().replace("Z", "+00:00")
    try:
        d = datetime.fromisoformat(t)
    except ValueError:
        return None
    if d.tzinfo is None:
        d = d.replace(tzinfo=timezone.utc)
    return ora_italiana(d.astimezone(timezone.utc))


cambiate, uguali, diverse, senza = [], [], [], []
for path in sorted(glob.glob(f"{WEB}/Data/hikes/*.json") + glob.glob(f"{WEB}/Data/hikes-varianti/*.json")):
    raw = open(path, "rb").read().decode("utf-8")
    d = json.loads(raw)
    if d.get("data_esatta"):
        continue
    wid = str(d["wikiloc_id"])
    gpx = f"{WEB}/wwwroot/media/gpx/{wid}.gpx"
    attuale = (d.get("data_escursione") or "")[:10]
    giorno = primo_orario(gpx) if os.path.exists(gpx) else None
    if giorno is None:
        senza.append((wid, attuale))
        continue
    nuova = giorno.strftime("%Y-%m-%d")
    if attuale and nuova[:7] != attuale[:7]:
        diverse.append((wid, attuale, nuova, d.get("titolo", "")[:50]))
        continue
    (uguali if nuova == attuale else cambiate).append((wid, attuale, nuova))
    if SCRIVI:
        d["data_escursione"] = nuova
        d["data_esatta"] = True
        out = json.dumps(d, ensure_ascii=False, indent=2)
        nl = "\r\n" if "\r\n" in raw else "\n"
        out = out.replace("\n", nl) + (nl if raw.endswith(("\n", "\r\n")) else "")
        with open(path, "w", encoding="utf-8", newline="") as fh:
            fh.write(out)

print(f"giorno ricavato dal GPX: {len(cambiate)} cambiate, {len(uguali)} già giuste")
print(f"mese diverso da Wikiloc (non toccate): {len(diverse)}")
for x in diverse:
    print("  ", *x)
print(f"GPX senza orari (restano al mese): {len(senza)}")
for x in senza:
    print("  ", *x)
if not SCRIVI:
    print("(prova: niente scritto, aggiungi --scrivi)")
