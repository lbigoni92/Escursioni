"""Scrive le schede dei luoghi (vette, passi, cascate, laghi) che non ne hanno una.

Uso, dalla cartella del repository, con il sito in esecuzione su http://localhost:5200:

    python -I scripts/schede_luoghi.py DATI.json SLUG.json            # prova: mostra le schede
    python -I scripts/schede_luoghi.py DATI.json SLUG.json --scrivi   # scrive Data/luoghi-schede/*.json

DATI.json: elenco dei luoghi con i tag di OpenStreetMap ed eventuale riassunto di Wikipedia
(raccolti con Overpass e l'API di Wikipedia). SLUG.json: OSM -> indirizzo attuale della pagina,
così il nome del file della scheda coincide con l'indirizzo già pubblicato.

Il testo usa solo fatti verificabili: quota, parco e croce di vetta da OpenStreetMap (citato in
fonti), le escursioni di Luca che ci passano e, se c'è, la voce di Wikipedia (citata). Niente
storia o curiosità senza fonte: una scheda sotto le 60 parole resta noindex, come deve.
"""
import json
import math
import os
import re
import sys
import urllib.request

sys.stdout.reconfigure(encoding="utf-8")
WEB = "Escursioni.Web"
DATI, SLUG = sys.argv[1], sys.argv[2]
# Facoltativo: FATTI.json {osm: frase} con un fatto preso dalla voce di Wikipedia del luogo (citata nelle fonti)
FATTI = json.load(open(sys.argv[3], encoding="utf-8")) if len(sys.argv) > 3 and not sys.argv[3].startswith("--") else {}
SCRIVI = "--scrivi" in sys.argv
OGGI = "2026-11-17T12:00:00"

PARCHI = {
    "Parco naturale regionale delle Alpi Apuane": ("Parco Regionale delle Alpi Apuane", "https://www.parcapuane.toscana.it/"),
    "Parco Nazionale dell'Appennino Tosco-Emiliano": ("Parco Nazionale dell'Appennino Tosco-Emiliano", "https://www.parcoappennino.it/"),
    "Parco regionale dell'Alto Appennino Modenese": ("Parchi del Ducato e dell'Emilia Centrale", "https://www.parchiemiliacentrale.it/"),
    "IT4050002 - SIC-ZPS - Parco Regionale Corno alle Scale": ("Corno alle Scale – Città metropolitana di Bologna", "https://appenninobolognese.cittametropolitana.bo.it/en/places/parks-and-gardens/corno-alle-scale-en"),
    "Parco Nazionale dei Monti Sibillini": ("Parco Nazionale dei Monti Sibillini", "https://www.sibillini.net/"),
    "Parco Naturale della Maremma": ("Parco della Maremma", "https://parco-maremma.it/"),
    "Parco Nazionale dell'Arcipelago Toscano": ("Parco Nazionale dell'Arcipelago Toscano", "https://www.islepark.it/"),
    "Parco Naturale di Migliarino San Rossore Massaciuccoli": ("Parco di Migliarino San Rossore Massaciuccoli", "https://www.parcosanrossore.org/"),
}
# Nome del parco come si legge nel testo
PARCO_TESTO = {
    "Parco naturale regionale delle Alpi Apuane": "nel Parco Regionale delle Alpi Apuane",
    "Parco Nazionale dell'Appennino Tosco-Emiliano": "nel Parco Nazionale dell'Appennino Tosco-Emiliano",
    "Parco regionale dell'Alto Appennino Modenese": "nel Parco regionale dell'Alto Appennino Modenese (Frignano)",
    "IT4050002 - SIC-ZPS - Parco Regionale Corno alle Scale": "nel Parco Regionale del Corno alle Scale",
    "Parco Nazionale dei Monti Sibillini": "nel Parco Nazionale dei Monti Sibillini",
    "Parco Naturale della Maremma": "nel Parco della Maremma",
    "Parco Nazionale dell'Arcipelago Toscano": "nel Parco Nazionale dell'Arcipelago Toscano",
    "Parco Naturale di Migliarino San Rossore Massaciuccoli": "nel Parco di Migliarino San Rossore Massaciuccoli",
    "Riserva naturale Montenero": "nella Riserva naturale di Montenero",
    "Riserva naturale provinciale Monte Serra di Sotto": "nella riserva di Monte Serra di Sotto",
    "Parco Regionale delle Valli del Parma e del Cedra (Parco dei Cento Laghi)": "nel Parco dei Cento Laghi",
    "Parco Fluviale del Nera": "nel Parco Fluviale del Nera",
    "Riserva naturale Orrido di Botri": "nella Riserva naturale dell'Orrido di Botri",
    "Riserva naturale Piano degli Ontani": "nella Riserva naturale di Piano degli Ontani",
    "Riserva naturale Abetone": "nella Riserva naturale dell'Abetone",
    "Riserva naturale provinciale Lago di Santa Luce": "nella riserva del Lago di Santa Luce",
    "Parco delle Cascate di Molina": "nel Parco delle Cascate di Molina",
    "Riserva naturale di Monterufoli-Caselli": "nella Riserva di Monterufoli-Caselli",
}
ZONA_TESTO = {
    "Alpi Apuane": "delle Alpi Apuane",
    "Garfagnana": "della Garfagnana",
    "Val di Lima": "della Val di Lima",
    "Appennino Tosco-Emiliano": "dell'Appennino tosco-emiliano",
    "Monti Pisani": "dei Monti Pisani",
    "Lunigiana": "della Lunigiana",
    "Livorno e costa toscana": "della costa livornese",
    "Versilia e Massarosa": "della Versilia",
    "Lucchesia e colline toscane": "delle colline toscane",
    "Firenze e provincia": "della provincia di Firenze",
    "Grosseto e Maremma": "della Maremma",
    "Trentino": "del Trentino",
    "Trentino e Veneto": "delle Dolomiti",
}
COSA = {"vetta": "una cima", "passo": "un valico", "cascata": "una cascata", "lago": "un lago"}
TITOLO = {"vetta": "come arrivare e le mie escursioni", "passo": "come arrivare e le mie escursioni",
          "cascata": "come arrivare e le mie escursioni", "lago": "come arrivare e le mie escursioni"}


def num(n):
    return f"{n:,}".replace(",", ".")


def km(x):
    return f"{x:.1f}".replace(".", ",")


def dist(a, b):
    la1, lo1, la2, lo2 = map(math.radians, (a["lat"], a["lon"], b["lat"], b["lon"]))
    h = math.sin((la2 - la1) / 2) ** 2 + math.cos(la1) * math.cos(la2) * math.sin((lo2 - lo1) / 2) ** 2
    return 6371 * 2 * math.asin(math.sqrt(h))


MESI = ["gennaio", "febbraio", "marzo", "aprile", "maggio", "giugno", "luglio", "agosto",
        "settembre", "ottobre", "novembre", "dicembre"]
DIFF = {"Facile": "facile", "Medio": "media difficoltà", "Difficile": "difficile",
        "Molto difficile": "molto difficile", "Per esperti": "per esperti"}


def nome_breve(n):
    """"Pas de sèn Nicolò - Passo San Nicolò": dei nomi doppi di OpenStreetMap tiene quello italiano."""
    if " - " not in n:
        return n
    parti = [x.strip() for x in n.split(" - ")]
    ita = [x for x in parti if re.match(r"(Monte|Passo|Lago|Rifugio|Cima|Forcella|Bivacco|Cascata|Sella|Foce|Punta|Pizzo|Colle|Poggio) ", x + " ")]
    return ita[0] if ita else parti[0]


def da_sapere(l, zona):
    """Una nota pratica legata al tipo di luogo e alla quota: consigli, non fatti da citare."""
    q, t = l.get("quota_m") or 0, l["tipo"]
    if t == "cascata":
        return "Dopo giorni di pioggia la cascata è più bella, ma le rocce intorno all'acqua sono scivolose."
    if t == "lago":
        return "Intorno al lago il terreno può essere fangoso dopo la pioggia: meglio scarponi che scarpe da ginnastica."
    if t == "passo":
        if q >= 1400:
            return "Sui valichi in quota il vento e la nebbia arrivano in fretta: anche d'estate porta una giacca."
        return "Dal valico partono più sentieri: controlla sulla mappa quale prendere prima di proseguire."
    if zona == "Alpi Apuane" and q >= 1200:
        return "Le cime apuane hanno spesso tratti di roccia ed erba ripida: con il terreno bagnato serve molta attenzione."
    if q >= 1700:
        return "Sopra i 1.700 metri il tempo cambia in fretta e d'inverno c'è neve: controlla il meteo prima di partire."
    if q >= 1000:
        return "In cima arrivano spesso vento e nebbia: porta sempre uno strato in più."
    return "D'estate meglio partire presto: sulle cime basse fa caldo già a metà mattina."


def main():
    T = json.load(open(DATI, encoding="utf-8"))
    slug_luogo = json.load(open(SLUG, encoding="utf-8"))
    luoghi = json.load(open(f"{WEB}/Data/luoghi.json", encoding="utf-8"))
    tutti = luoghi.get("luoghi") or luoghi["Luoghi"]
    per_esc = luoghi.get("escursioni") or luoghi["Escursioni"]
    pos = {l["osm"]: l for l in tutti}

    # Escursioni: dati dal JSON, indirizzo dall'indice di ricerca (le varianti portano alla principale)
    hikes = {}
    for d in ("hikes", "hikes-varianti"):
        for f in os.listdir(f"{WEB}/Data/{d}"):
            h = json.load(open(f"{WEB}/Data/{d}/{f}", encoding="utf-8"))
            h["_variante"] = d == "hikes-varianti"
            hikes[str(h["wikiloc_id"])] = h
    principale = {str(v): str(h["wikiloc_id"]) for h in hikes.values() for v in (h.get("varianti") or [])}
    indice = json.load(urllib.request.urlopen("http://localhost:5200/data/search-index.json"))
    slug_esc = {}
    for x in indice:
        for wid, h in hikes.items():
            if not h["_variante"] and h["titolo"] == x["titolo"] and (h.get("titolo_seo") or None) == (x.get("titoloSeo") or None):
                slug_esc[wid] = x["slug"]

    titoli_usati = set()
    for f in os.listdir(f"{WEB}/Data/luoghi-schede"):
        titoli_usati.add(json.load(open(f"{WEB}/Data/luoghi-schede/{f}", encoding="utf-8"))["titolo_seo"])

    scritte = corte = 0
    for l in T:
        if l["stato"] != "senza" or l["tipo"] not in COSA:
            continue
        nome, tipo, q = nome_breve(l["nome"]), l["tipo"], l.get("quota_m")
        url = slug_luogo[l["osm"]]
        file = url.split("/")[-1]

        # Escursioni (una per principale), ordinate dalla più recente
        esc = {}
        for wid in [w for w, ids in per_esc.items() if l["osm"] in ids]:
            p = principale.get(wid, wid)
            if p in hikes and p in slug_esc:
                esc[p] = hikes[p]
        esc = sorted(esc.values(), key=lambda h: h.get("data_escursione") or "", reverse=True)
        zone = [h.get("tag") for h in esc if h.get("tag")]
        zona = max(set(zone), key=zone.count) if zone else None

        # Luoghi vicini toccati dalle stesse escursioni
        vicini = {}
        for h in esc:
            for i in per_esc.get(str(h["wikiloc_id"]), []):
                if i != l["osm"] and i in pos and pos[i]["tipo"] in ("vetta", "passo", "rifugio", "lago", "cascata"):
                    d = dist(l, pos[i])
                    if d <= 2.5:
                        vicini[pos[i]["nome"]] = d
        vicini = [n for n, _ in sorted(vicini.items(), key=lambda x: x[1]) if n.lower() != nome.lower()][:2]
        vicini = [nome_breve(n) for n in vicini]

        # Introduzione
        frase = f"<strong>{nome}</strong>"
        if q:
            frase += f", a circa {num(q)} metri,"
        cosa = COSA[tipo]
        dove = ZONA_TESTO.get(zona or "", "")
        frase += f" è {cosa}{' ' + dove if dove else ''}"
        parco = l.get("parco") or ""
        if parco in PARCO_TESTO:
            frase += f", {PARCO_TESTO[parco]}"
        if vicini:
            frase += ", vicino a " + " e ".join(vicini)
        frase += "."
        if tipo == "vetta" and l["tags"].get("summit:cross") == "yes":
            frase += " In cima c'è una croce."
        testo = [f"<p>{frase}</p>"]
        fatto = FATTI.get(l["osm"])
        if fatto and l.get("wiki"):
            testo.append(f"<p>{fatto}</p>")

        # Wikipedia: solo il riferimento, il fatto lo aggiunge a mano chi rilegge (vedi fonti)
        if esc:
            testo.append("<h2>Le mie escursioni da qui</h2>")
            testo.append("<ul>")
            for h in esc[:6]:
                partenza = h.get("comune") or ""
                link = f'<a href="/escursioni/{slug_esc[str(h["wikiloc_id"])]}">{h.get("titolo_seo") or h["titolo"]}</a>'
                numeri = []
                if h.get("distanza_km"):
                    numeri.append(f"{km(h['distanza_km'])} km")
                if h.get("dislivello_m"):
                    numeri.append(f"+{num(int(h['dislivello_m']))} m")
                if h.get("difficolta") in DIFF:
                    numeri.append(DIFF[h["difficolta"]])
                if h.get("data_escursione"):
                    a, m = h["data_escursione"][:4], int(h["data_escursione"][5:7])
                    numeri.append(f"{MESI[m - 1]} {a}")
                testo.append(f"<li><strong>{partenza}</strong>: {link}{' (' + ', '.join(numeri) + ')' if numeri else ''}.</li>")
            testo.append("</ul>")
        nota = "" if zona == "Estero" else da_sapere(l, zona)
        if parco in PARCHI:
            nota += f" Le regole del parco (cani, fuochi, raccolta di piante) sono sul sito del {PARCHI[parco][0].replace('Parco', 'parco', 1) if PARCHI[parco][0].startswith('Parco') else PARCHI[parco][0]}."
        if nota:
            testo.append("<h2>Da sapere</h2>")
            testo.append(f"<p>{nota}</p>")
        html = "\n".join(testo)

        fonti = [{"titolo": f"{nome} su OpenStreetMap", "url": f"https://www.openstreetmap.org/{l['osm']}"}]
        if parco in PARCHI:
            fonti.append({"titolo": PARCHI[parco][0], "url": PARCHI[parco][1]})
        if fatto and l.get("wiki"):
            fonti.append({"titolo": f"{l['wiki']['titolo']} – Wikipedia", "url": l["wiki"]["url"].replace("'", "%27")})

        titolo = f"{nome}: {TITOLO[tipo]}"
        if len(titolo) > 57 or titolo in titoli_usati:
            titolo = f"{nome}{f' ({q} m)' if q else ''}: le mie escursioni"
        if len(titolo) > 57:
            titolo = f"{nome}: le mie escursioni"[:57]
        titoli_usati.add(titolo)
        area = (ZONA_TESTO.get(zona or "") or "").replace("delle ", "").replace("della ", "").replace("dell'", "").replace("dei ", "").replace("del ", "")
        meta = f"{nome}{f' ({q} m)' if q else ''}{', ' + area[0].upper() + area[1:] if area else ''}: da dove si arriva e le escursioni che ci passano, con traccia GPX."
        if len(meta) > 160:
            meta = f"{nome}{f' ({q} m)' if q else ''}: le escursioni che ci passano, con traccia GPX."

        scheda = {"osm": l["osm"], "nome": nome, "titolo_seo": titolo, "meta_descrizione": meta,
                  "testo_html": html, "fonti": fonti}
        parole = len(re.sub("<[^>]+>", " ", html).split())
        corte += parole < 60
        scritte += 1
        if SCRIVI:
            with open(f"{WEB}/Data/luoghi-schede/{file}.json", "w", encoding="utf-8", newline="\n") as fh:
                fh.write(json.dumps(scheda, ensure_ascii=False, indent=2) + "\n")
        elif scritte <= 2:
            print(file, parole, "parole\n", titolo, "|", meta, "\n", html, "\n")
    print(f"schede: {scritte}, sotto 60 parole (restano noindex): {corte}")


main()
