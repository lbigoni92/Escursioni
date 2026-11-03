"""Fotografia dei contenuti del sito, per confrontare lo stato prima e dopo un rilascio.

Legge una cartella Data (quella del repository o una estratta da un altro branch) e stampa
le metriche in JSON. Esempio, per misurare ciò che è online (master):

    git archive master Escursioni.Web/Data | tar -x -C /tmp/master
    python scripts/seo_snapshot.py /tmp/master/Escursioni.Web/Data > master.json
"""
import collections
import glob
import json
import os
import re
import statistics
import sys


def words(html):
    text = re.sub(r"<[^>]+>", " ", html or "")
    return len(re.findall(r"\w+", text))


def load(folder):
    rows = []
    for p in sorted(glob.glob(os.path.join(folder, "*.json"))):
        with open(p, encoding="utf-8") as f:
            rows.append(json.load(f))
    return rows


def quantile(values, q):
    if not values:
        return 0
    values = sorted(values)
    return values[min(len(values) - 1, int(q * len(values)))]


def snapshot(data):
    hikes = load(os.path.join(data, "hikes"))
    varianti = load(os.path.join(data, "hikes-varianti"))
    escluse = load(os.path.join(data, "hikes-escluse"))
    schede_luogo = glob.glob(os.path.join(data, "luoghi-schede", "*.json"))
    redirects_path = os.path.join(data, "redirects.json")
    redirects = json.load(open(redirects_path, encoding="utf-8")) if os.path.exists(redirects_path) else {}

    w = [words(h.get("descrizione_html")) for h in hikes]
    # testo della scheda: descrizione più le sezioni separate "Come arrivare" e "Cenno storico"
    wp = [w[i] + words(h.get("come_arrivare")) + words(h.get("cenno_storico")) for i, h in enumerate(hikes)]
    meta = [len(h.get("meta_descrizione") or "") for h in hikes]
    h3 = collections.Counter(
        t.strip().lower()
        for h in hikes
        for t in re.findall(r"<h3[^>]*>(.*?)</h3>", h.get("descrizione_html") or "", re.S)
    )
    return {
        "schede_principali": len(hikes),
        "varianti_unite": len(varianti),
        "schede_con_varianti": sum(1 for h in hikes if h.get("varianti")),
        "escluse": len(escluse),
        "schede_riviste": sum(1 for h in hikes if h.get("descrizione_rivista")),
        "con_cenno_storico": sum(1 for h in hikes if (h.get("cenno_storico") or "").strip()),
        "con_come_arrivare": sum(1 for h in hikes if (h.get("come_arrivare") or "").strip()),
        "con_fonti": sum(1 for h in hikes if h.get("fonti")),
        "fonti_totali": sum(len(h.get("fonti") or []) for h in hikes),
        "pagine_luogo": len(schede_luogo),
        "redirect_manuali": len(redirects),
        "parole_descrizione": {
            "mediana": statistics.median(w) if w else 0,
            "p25": quantile(w, 0.25),
            "min": min(w) if w else 0,
            "sotto_100": sum(1 for x in w if x < 100),
        },
        "parole_scheda": {
            "mediana": statistics.median(wp) if wp else 0,
            "p25": quantile(wp, 0.25),
            "min": min(wp) if wp else 0,
            "sotto_100": sum(1 for x in wp if x < 100),
        },
        "meta_descrizione_mediana_caratteri": statistics.median(meta) if meta else 0,
        "h3_piu_ripetuti": h3.most_common(5),
        "schede_per_zona": dict(collections.Counter(h.get("tag") for h in hikes).most_common()),
    }


if __name__ == "__main__":
    folder = sys.argv[1] if len(sys.argv) > 1 else os.path.join("Escursioni.Web", "Data")
    json.dump(snapshot(folder), sys.stdout, ensure_ascii=False, indent=2)
    print()
