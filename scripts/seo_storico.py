"""Storico SEO del sito: fotografie dei contenuti, note di rilascio e dati di Search Console.

Comandi, da lanciare dalla cartella del repository:

    python scripts/seo_storico.py foto --ref master
        Fotografa i contenuti di un branch, tag o commit in docs/seo/fotografie/.

    python scripts/seo_storico.py nota R1-2026-12 --da master --a dev
        Crea o aggiorna la nota di rilascio docs/seo/rilasci/R1-2026-12.md: commit, schede
        aggiunte, modificate o unite, e confronto delle metriche. Le parti scritte a mano
        restano: si rigenera solo il blocco tra i marcatori.

    python scripts/seo_storico.py storico
        Rigenera docs/seo/STORICO.md con l'andamento nel tempo: fotografie, rilasci ed
        export di Google Search Console e Bing (cartelle docs/seo/search-console/AAAA-MM-GG/).
"""
import argparse
import csv
import datetime
import glob
import io
import json
import os
import subprocess
import sys
import tarfile
import tempfile
import zipfile

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from seo_snapshot import snapshot  # noqa: E402

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
SEO = os.path.join(ROOT, "docs", "seo")
DATA = "Escursioni.Web/Data"
INIZIO, FINE = "<!-- inizio parte generata: non modificare a mano -->", "<!-- fine parte generata -->"

# metriche mostrate nelle tabelle di confronto: (chiave, etichetta)
METRICHE = [
    ("schede_principali", "Schede con una propria pagina"),
    ("varianti_unite", "Uscite unite come varianti"),
    ("schede_riviste", "Schede riscritte"),
    ("con_cenno_storico", "Schede con cenno storico"),
    ("fonti_totali", "Fonti citate"),
    ("pagine_luogo", "Pagine luogo"),
    ("redirect_manuali", "Redirect manuali"),
    ("parole_scheda.mediana", "Parole per scheda (mediana)"),
    ("parole_scheda.sotto_100", "Schede sotto le 100 parole"),
]


def git(*args):
    return subprocess.run(["git", *args], cwd=ROOT, capture_output=True, check=True).stdout.decode("utf-8")


def misura(ref):
    """Metriche dei contenuti di un ref git, senza toccare la cartella di lavoro."""
    archivio = subprocess.run(["git", "archive", ref, DATA], cwd=ROOT, capture_output=True, check=True).stdout
    with tempfile.TemporaryDirectory() as tmp:
        with tarfile.open(fileobj=io.BytesIO(archivio)) as t:
            t.extractall(tmp, filter="data")
        return snapshot(os.path.join(tmp, *DATA.split("/")))


def valore(m, chiave):
    for parte in chiave.split("."):
        m = (m or {}).get(parte)
    return m


def delta(a, b):
    if not isinstance(a, (int, float)) or not isinstance(b, (int, float)):
        return ""
    d = b - a
    return "=" if d == 0 else f"{d:+g}"


# ---------- foto ----------

def cmd_foto(args):
    m = misura(args.ref)
    oggi = args.data or datetime.date.today().isoformat()
    m["_ref"], m["_commit"], m["_data"] = args.ref, git("rev-parse", "--short", args.ref).strip(), oggi
    os.makedirs(os.path.join(SEO, "fotografie"), exist_ok=True)
    nome = f"{oggi}_{(args.etichetta or args.ref).replace('/', '-')}.json"
    with open(os.path.join(SEO, "fotografie", nome), "w", encoding="utf-8") as f:
        json.dump(m, f, ensure_ascii=False, indent=2)
        f.write("\n")
    print(f"fotografia salvata: docs/seo/fotografie/{nome}")


# ---------- nota di rilascio ----------

def cambi_dati(da, a):
    """Classifica i file di Data cambiati tra due ref."""
    out = git("diff", "-M", "--name-status", da, a, "--", DATA)
    c = {"nuove": [], "modificate": [], "rimosse": [], "diventate_varianti": [], "luoghi": [], "altri": []}
    for riga in out.splitlines():
        campi = riga.split("\t")
        stato, percorsi = campi[0], campi[1:]
        dest = percorsi[-1].replace(DATA + "/", "")
        orig = percorsi[0].replace(DATA + "/", "")
        if stato.startswith("R") and orig.startswith("hikes/") and dest.startswith("hikes-varianti/"):
            c["diventate_varianti"].append(os.path.basename(dest)[:-5])
        elif dest.startswith("hikes/"):
            chiave = {"A": "nuove", "M": "modificate", "D": "rimosse"}.get(stato[0], "altri")
            c[chiave].append(os.path.basename(dest)[:-5])
        elif dest.startswith("luoghi-schede/"):
            c["luoghi"].append(f"{stato[0]} {os.path.basename(dest)}")
        else:
            c["altri"].append(f"{stato[0]} {dest}")
    return c


def parte_generata(da, a):
    ma, mb = misura(da), misura(a)
    commit = git("log", f"{da}..{a}", "--reverse", "--format=%h|%ad|%s", "--date=short").splitlines()
    c = cambi_dati(da, a)
    r = [INIZIO, "", f"Confronto tra `{da}` ({git('rev-parse', '--short', da).strip()}) "
         f"e `{a}` ({git('rev-parse', '--short', a).strip()}), generato il {datetime.date.today().isoformat()}.", ""]
    r += ["### Metriche dei contenuti", "", f"| Metrica | `{da}` | `{a}` | Differenza |", "|---|---|---|---|"]
    for chiave, etichetta in METRICHE:
        va, vb = valore(ma, chiave), valore(mb, chiave)
        r.append(f"| {etichetta} | {va} | {vb} | {delta(va, vb)} |")
    r += ["", "### Schede toccate", "",
          f"- Modificate: {len(c['modificate'])}",
          f"- Nuove: {len(c['nuove'])}" + (f" ({', '.join(c['nuove'])})" if c["nuove"] else ""),
          f"- Unite come varianti (redirect 301): {len(c['diventate_varianti'])}"
          + (f" ({', '.join(c['diventate_varianti'])})" if c["diventate_varianti"] else ""),
          f"- Rimosse: {len(c['rimosse'])}" + (f" ({', '.join(c['rimosse'])})" if c["rimosse"] else "")]
    if c["luoghi"]:
        r.append(f"- Pagine luogo: {', '.join(c['luoghi'])}")
    if c["altri"]:
        r.append(f"- Altri file di dati: {', '.join(c['altri'])}")
    r += ["", f"### Commit ({len(commit)})", ""]
    for riga in commit:
        h, d, s = riga.split("|", 2)
        r.append(f"- `{h}` {d} – {s}")
    r += ["", FINE]
    return "\n".join(r)


MODELLO_NOTA = """# {nome}

- **Data del rilascio:** da compilare (merge di `dev` su `master`)
- **Tag git:** `{nome}` (da creare al rilascio: `git tag {nome} master && git push origin {nome}`)
- **Misure da fare:** export di Search Console il giorno del rilascio, a +4 settimane e a +8 settimane

## Cosa rilasciamo e perché

Da compilare: in due righe, l'obiettivo del rilascio.

## Cosa ci aspettiamo

Da compilare: quali numeri dovrebbero muoversi (es. pagine indicizzate, impressioni delle schede riscritte).

## Esito

Da compilare dopo le misure a +4 e +8 settimane, guardando STORICO.md.

## Dettaglio delle modifiche

{generata}
"""


def cmd_nota(args):
    os.makedirs(os.path.join(SEO, "rilasci"), exist_ok=True)
    percorso = os.path.join(SEO, "rilasci", f"{args.nome}.md")
    generata = parte_generata(args.da, args.a)
    if os.path.exists(percorso):
        testo = open(percorso, encoding="utf-8").read()
        if INIZIO in testo and FINE in testo:
            testo = testo[:testo.index(INIZIO)] + generata + testo[testo.index(FINE) + len(FINE):]
        else:
            testo = testo.rstrip() + "\n\n" + generata + "\n"
    else:
        testo = MODELLO_NOTA.format(nome=args.nome, generata=generata)
    with open(percorso, "w", encoding="utf-8") as f:
        f.write(testo)
    print(f"nota di rilascio aggiornata: docs/seo/rilasci/{args.nome}.md")


# ---------- export di Search Console e Bing ----------
#
# Ogni export va in docs/seo/search-console/AAAA-MM-GG/, con queste sottocartelle (si possono
# lasciare dentro direttamente gli zip o i CSV scaricati):
#   google-prestazioni/  Search Console > Prestazioni > Esporta (Grafico.csv, Query.csv, Pagine.csv, ...)
#   google-copertura/    Search Console > Indicizzazione > Pagine > Esporta (Grafico.csv, Problemi critici.csv)
#   google-ai/           Search Console > Prestazioni > funzionalità di IA generativa > Esporta
#   bing/                Bing Webmaster Tools: SearchPerformanceOverview, AIPerformanceOverviewStats, sitemaps

FINESTRA = 28  # giorni confrontati tra un export e l'altro


def leggi_csv(percorso):
    grezzo = open(percorso, "rb").read()
    for codifica in ("utf-8-sig", "utf-16", "cp1252"):
        try:
            return list(csv.reader(io.StringIO(grezzo.decode(codifica))))
        except UnicodeDecodeError:
            continue
    return []


def numero(s):
    s = (s or "").strip().replace("%", "").replace(" ", "")
    if not s:
        return 0.0
    if "," in s and "." in s:
        s = s.replace(".", "").replace(",", ".")
    elif "," in s:
        s = s.replace(",", ".")
    try:
        return float(s)
    except ValueError:
        return 0.0


def giorno(s):
    s = (s or "").strip().split(" ")[0]
    for formato in ("%Y-%m-%d", "%m/%d/%Y"):
        try:
            return datetime.datetime.strptime(s, formato).date()
        except ValueError:
            pass
    return None


def righe(percorso):
    """Righe di un CSV come dizionari con intestazioni minuscole; la prima colonna resta testo."""
    tab = leggi_csv(percorso) if percorso else []
    if not tab:
        return []
    intest = [h.strip().lower() for h in tab[0]]
    out = []
    for r in tab[1:]:
        if r and r[0].strip():
            riga = {"chiave": r[0].strip()}
            for i in range(1, min(len(r), len(intest))):
                riga[intest[i]] = r[i].strip()
            out.append(riga)
    return out


def serie(percorso):
    """Righe giornaliere ordinate per data, con i valori numerici."""
    out = []
    for r in righe(percorso):
        d = giorno(r["chiave"])
        if d:
            out.append({"data": d, **{k: numero(v) for k, v in r.items() if k != "chiave"}})
    return sorted(out, key=lambda r: r["data"])


def ultimi(s, n=FINESTRA):
    return [r for r in s if (s[-1]["data"] - r["data"]).days < n] if s else []


def somma(s, *nomi):
    return sum(next((r[k] for k in nomi if k in r), 0) for r in s)


def prepara(cartella):
    """Estrae gli zip lasciati nella cartella (o nelle sottocartelle) se i CSV non ci sono già."""
    for z in glob.glob(os.path.join(cartella, "**", "*.zip"), recursive=True):
        dest = os.path.dirname(z)
        with zipfile.ZipFile(z) as zf:
            for nome in zf.namelist():
                bersaglio = os.path.join(dest, os.path.basename(nome))
                if nome.lower().endswith(".csv") and not os.path.exists(bersaglio):
                    with open(bersaglio, "wb") as f:
                        f.write(zf.read(nome))


def file(cartella, sotto, *prefissi):
    """Primo CSV della sottocartella il cui nome inizia con uno dei prefissi."""
    base = os.path.join(cartella, sotto)
    if not os.path.isdir(base):
        return None
    for f in sorted(os.listdir(base)):
        nome = f.lower().split("_", 1)[-1] if "_" in f else f.lower()  # Bing antepone il dominio
        if nome.endswith(".csv") and any(nome.startswith(p) for p in prefissi):
            return os.path.join(base, f)
    return None


def leggi_export(cartella):
    prepara(cartella)
    e = {"cartella": os.path.basename(cartella)}

    g = serie(file(cartella, "google-prestazioni", "grafico", "date"))
    if g:
        u = ultimi(g)
        impr = somma(u, "impressioni")
        e["g_periodo"] = f"{u[0]['data']} → {u[-1]['data']}"
        e["g_clic"] = int(somma(u, "clic"))
        e["g_impressioni"] = int(impr)
        e["g_ctr"] = round(100 * e["g_clic"] / impr, 2) if impr else 0
        e["g_posizione"] = round(sum(r.get("posizione", 0) * r.get("impressioni", 0) for r in u) / impr, 1) if impr else 0
        filtri = {r["chiave"].lower(): r.get("valore", "") for r in righe(file(cartella, "google-prestazioni", "filtri"))}
        e["g_finestra_export"] = filtri.get("data", "")
        pagine = righe(file(cartella, "google-prestazioni", "pagine"))
        e["g_pagine_tab"] = {r["chiave"]: numero(r.get("impressioni")) for r in pagine}
        e["g_pagine_con_impressioni"] = sum(1 for v in e["g_pagine_tab"].values() if v > 0)
        e["g_query_con_impressioni"] = sum(
            1 for r in righe(file(cartella, "google-prestazioni", "query")) if numero(r.get("impressioni")) > 0)

    cop = serie(file(cartella, "google-copertura", "grafico"))
    if cop:
        e["g_indicizzate"] = int(cop[-1].get("indicizzate", 0))
        e["g_non_indicizzate"] = int(cop[-1].get("non indicizzate", 0))
        for r in righe(file(cartella, "google-copertura", "problemi critici")):
            ragione, pagine = r["chiave"].lower(), int(numero(r.get("pagine")))
            if "scansionata" in ragione:
                e["g_scansionate_non_indicizzate"] = pagine
            elif "reindirizzamento" in ragione:
                e["g_con_reindirizzamento"] = pagine
            elif "404" in ragione:
                e["g_404"] = pagine

    ai = serie(file(cartella, "google-ai", "grafico"))
    if ai:
        e["g_ai_impressioni"] = int(somma(ultimi(ai), "impressioni"))

    b = serie(file(cartella, "bing", "searchperformance"))
    if b:
        u = ultimi(b)
        e["b_clic"] = int(somma(u, "clicks"))
        e["b_impressioni"] = int(somma(u, "impressions"))
    bai = serie(file(cartella, "bing", "aiperformance"))
    if bai:
        e["b_citazioni_ai"] = int(somma(ultimi(bai), "citations"))
    sm = righe(file(cartella, "bing", "sitemaps"))
    if sm:
        e["b_url_sitemap"] = max(int(numero(r.get("urls discovered"))) for r in sm)
    return e


# ---------- storico ----------

RIGHE_EXPORT = [
    ("Google, ultimi 28 giorni", None),
    ("Periodo", "g_periodo"),
    ("Clic", "g_clic"),
    ("Impressioni", "g_impressioni"),
    ("CTR %", "g_ctr"),
    ("Posizione media", "g_posizione"),
    ("Google, finestra dell'export", None),
    ("Finestra", "g_finestra_export"),
    ("Pagine con impressioni (max 1000)", "g_pagine_con_impressioni"),
    ("Query con impressioni (max 1000)", "g_query_con_impressioni"),
    ("Google, indicizzazione", None),
    ("Pagine indicizzate", "g_indicizzate"),
    ("Pagine non indicizzate", "g_non_indicizzate"),
    ("Scansionate ma non indicizzate", "g_scansionate_non_indicizzate"),
    ("Pagine con reindirizzamento", "g_con_reindirizzamento"),
    ("Non trovate (404)", "g_404"),
    ("Google, funzionalità IA (28 giorni)", None),
    ("Impressioni", "g_ai_impressioni"),
    ("Bing, ultimi 28 giorni", None),
    ("Clic", "b_clic"),
    ("Impressioni", "b_impressioni"),
    ("Citazioni nelle risposte IA", "b_citazioni_ai"),
    ("URL rilevati nella sitemap", "b_url_sitemap"),
]


INTENTI_PRATICI = ("come arrivare", "distanza", "parcheggio", "mappa", "maps", "quanto", "dove", "orari", "sentiero")


def sezione_query(cartella):
    """Query dell'ultimo export su cui lavorare: quasi in prima pagina e domande pratiche."""
    query = []
    for q in righe(file(cartella, "google-prestazioni", "query")):
        impr = numero(q.get("impressioni", q.get("impressions")))
        clic = numero(q.get("clic", q.get("clicks")))
        pos = numero(q.get("posizione", q.get("position")))
        query.append((q["chiave"], int(impr), int(clic), pos))
    if not query:
        return []
    r = ["", f"## Query su cui lavorare (export {os.path.basename(cartella)})", "",
         "### Quasi in prima pagina", "",
         "Posizione media tra 4 e 20 e almeno 3 impressioni: un titolo o un testo migliore può portarle più su.", "",
         "| Query | Impressioni | Clic | Posizione |", "|---|---|---|---|"]
    vicine = sorted((q for q in query if 4 <= q[3] <= 20 and q[1] >= 3), key=lambda q: -q[1])
    r += [f"| {q[0]} | {q[1]} | {q[2]} | {q[3]:.1f} |" for q in vicine] or ["| nessuna | | | |"]
    r += ["", "### Domande pratiche", "",
          "Query con «come arrivare», «distanza», «mappa» e simili: chiedono una risposta precisa.", "",
          "| Query | Impressioni | Clic | Posizione |", "|---|---|---|---|"]
    pratiche = sorted((q for q in query if any(i in q[0].lower() for i in INTENTI_PRATICI)), key=lambda q: -q[1])
    r += [f"| {q[0]} | {q[1]} | {q[2]} | {q[3]:.1f} |" for q in pratiche] or ["| nessuna | | | |"]
    return r


def cmd_storico(args):
    r = ["# Storico SEO del sito", "",
         "File generato da `python scripts/seo_storico.py storico`: non modificarlo a mano.",
         f"Ultimo aggiornamento: {datetime.date.today().isoformat()}.", ""]

    r += ["## Rilasci", ""]
    note = sorted(glob.glob(os.path.join(SEO, "rilasci", "*.md")))
    for n in note:
        testo = open(n, encoding="utf-8").read().splitlines()
        titolo = next((t[2:] for t in testo if t.startswith("# ")), os.path.basename(n))
        data = next((t.split(":**", 1)[1].strip() for t in testo if t.startswith("- **Data del rilascio:**")), "")
        r.append(f"- [{titolo}](rilasci/{os.path.basename(n)}) – {data}")
    if not note:
        r.append("Nessuna nota di rilascio.")

    foto = [json.load(open(p, encoding="utf-8")) for p in glob.glob(os.path.join(SEO, "fotografie", "*.json"))]
    foto.sort(key=lambda f: (f["_data"], f["_ref"] != "master"))  # a parità di data, prima ciò che è online
    r += ["", "## Contenuti nel tempo", ""]
    if foto:
        r.append("| Metrica | " + " | ".join(f"{f['_data']} `{f['_ref']}`" for f in foto) + " |")
        r.append("|---" * (len(foto) + 1) + "|")
        for chiave, etichetta in METRICHE:
            r.append(f"| {etichetta} | " + " | ".join(str(valore(f, chiave)) for f in foto) + " |")
    else:
        r.append("Nessuna fotografia: `python scripts/seo_storico.py foto --ref master`.")

    cartelle = sorted(d for d in glob.glob(os.path.join(SEO, "search-console", "*")) if os.path.isdir(d))
    export = [e for e in (leggi_export(c) for c in cartelle) if len(e) > 1]
    r += ["", "## Motori di ricerca nel tempo", ""]
    if export:
        r.append("| Export | " + " | ".join(e["cartella"] for e in export) + " |")
        r.append("|---" * (len(export) + 1) + "|")
        for etichetta, chiave in RIGHE_EXPORT:
            if chiave is None:
                r.append(f"| **{etichetta}** |" + " |" * len(export))
                continue
            celle = []
            for i, e in enumerate(export):
                v = e.get(chiave)
                d = delta(export[i - 1].get(chiave), v) if i else ""
                celle.append("" if v is None else f"{v} ({d})" if d and d != "=" else str(v))
            r.append(f"| {etichetta} | " + " | ".join(celle) + " |")
        r += ["", f"I valori «ultimi {FINESTRA} giorni» sono calcolati dai dati giornalieri, quindi sono confrontabili "
              "tra un export e l'altro. Pagine e query dipendono dalla finestra scelta nell'export: confrontale solo "
              "tra export con la stessa finestra."]
        conf = [e for e in export if e.get("g_pagine_tab")]
        if len(conf) >= 2 and conf[-2].get("g_finestra_export") == conf[-1].get("g_finestra_export"):
            prima, dopo = conf[-2], conf[-1]
            pa, pb = prima["g_pagine_tab"], dopo["g_pagine_tab"]
            var = sorted((pb.get(u, 0) - pa.get(u, 0), u) for u in set(pa) | set(pb))
            r += ["", f"### Pagine che cambiano di più ({prima['cartella']} → {dopo['cartella']}, impressioni)", "",
                  "| Pagina | Prima | Dopo | Differenza |", "|---|---|---|---|"]
            for d, u in list(reversed(var[-10:])) + var[:10]:
                if d:
                    r.append(f"| {u.replace('https://escursionilucabigoni.it', '')} | {int(pa.get(u, 0))} "
                             f"| {int(pb.get(u, 0))} | {int(d):+d} |")
        r += sezione_query(cartelle[-1])
    else:
        r.append("Nessun export: salvali in `docs/seo/search-console/AAAA-MM-GG/` (vedi README).")

    with open(os.path.join(SEO, "STORICO.md"), "w", encoding="utf-8") as f:
        f.write("\n".join(r) + "\n")
    print("storico aggiornato: docs/seo/STORICO.md")


def main():
    p = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    sub = p.add_subparsers(dest="comando", required=True)
    f = sub.add_parser("foto", help="fotografa i contenuti di un ref git")
    f.add_argument("--ref", default="master")
    f.add_argument("--etichetta", help="nome nel file (di default il ref)")
    f.add_argument("--data", help="data AAAA-MM-GG (di default oggi)")
    n = sub.add_parser("nota", help="crea o aggiorna la nota di un rilascio")
    n.add_argument("nome")
    n.add_argument("--da", default="master")
    n.add_argument("--a", default="dev")
    sub.add_parser("storico", help="rigenera docs/seo/STORICO.md")
    args = p.parse_args()
    {"foto": cmd_foto, "nota": cmd_nota, "storico": cmd_storico}[args.comando](args)


if __name__ == "__main__":
    main()
