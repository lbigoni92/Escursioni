# Monitoraggio SEO: da novembre 2026 al rilascio di dicembre

Questo file serve a confrontare in modo affidabile il sito **prima** e **dopo** il prossimo rilascio, previsto nella **prima settimana di dicembre 2026**. Contiene tre cose:

- la fotografia di oggi;
- l'elenco delle modifiche fatte da qui al rilascio;
- le misure da ripetere dopo.

## Regole per un confronto pulito

1. Fino al rilascio **su `master` non va niente** che cambi contenuti o SEO. Render pubblica ogni push su `master`, quindi un push intermedio sporcherebbe il confronto.
2. Ogni modifica fatta su `dev` va annotata nel registro qui sotto, con data e commit.
3. Le misure di Search Console si confrontano **su finestre della stessa durata**: 28 giorni prima del rilascio contro 28 giorni dopo. Si aggiunge anche il confronto con lo stesso periodo del 2025, perché dicembre ha una stagionalità diversa da novembre (meno escursioni estive, più ciaspole e mete invernali).
4. Google ha bisogno di tempo per rielaborare le pagine. Le misure vanno lette a **+4 e +8 settimane** dal rilascio, non nei primi giorni.

## Fotografia del 3 novembre 2026

### Sito online (`master`, commit `a1a1b982`)

- La sitemap online contiene 300 URL: 292 sotto `/escursioni`, più le pagine fisse e i tipi di luogo.
- Il redirect da `www.escursionilucabigoni.it` alla versione senza www funziona (301).

### Contenuti: online contro `dev`

I numeri li produce `scripts/seo_snapshot.py`. I file completi sono [snapshot-2026-11-03-master.json](snapshot-2026-11-03-master.json) e [snapshot-2026-11-03-dev.json](snapshot-2026-11-03-dev.json).

| Metrica | Online (`master`) | `dev` (da rilasciare) |
|---|---|---|
| Schede escursione con una propria pagina | 278 | 254 |
| Uscite unite come varianti (301 verso la principale) | 0 | 24 |
| Schede con testo riscritto dalle note originali | 0 | 254 |
| Schede con "Come arrivare" | 0 | 254 |
| Schede con cenno storico | 0 | 129 |
| Fonti citate (link esterni) | 0 | 151, su 130 schede |
| Pagine luogo | 0 | 1 (Rifugio del Freo) |
| Parole della scheda, mediana | 320 | 179 |
| Parole della scheda, minimo | 242 | 43 |
| Schede sotto le 100 parole | 0 | 30 |
| Titoletti H3 più ripetuti | gli stessi 5 in circa 270 schede | il più comune in 18 schede |

Cosa dicono questi numeri:
- **Online** le schede sono lunghe ma costruite sullo stesso modello: 5 titoletti identici in quasi tutte, e testi in parte inventati. È la causa probabile delle pagine "scansionate ma non indicizzate".
- **Su `dev`** le schede sono più corte ma diverse tra loro e basate sui tuoi appunti, con fonti verificabili.
- **Il rischio da tenere d'occhio** sono le 30 schede sotto le 100 parole. Se dopo il rilascio restano fuori dall'indice, sono le prime da allungare.

### Search Console (da compilare con gli export)

Valori già noti, presi dalle analisi precedenti e da confermare con l'export di oggi:

| Metrica | Valore | Fonte |
|---|---|---|
| Pagine "Scansionata, ma attualmente non indicizzata" | 227 | analisi SEO di inizio novembre |
| Impressioni della query "luca bigoni" (6 mesi) | 51 | analisi SEO di inizio novembre |

Da esportare **ora** e salvare nella cartella `docs/seo/baseline-2026-11/`:

1. **Prestazioni**, ultimi 28 giorni e ultimi 3 mesi: Esporta → CSV. Servono soprattutto `Query.csv` e `Pagine.csv`. → https://search.google.com/search-console/performance/search-analytics
2. **Prestazioni** con il confronto "stesso periodo dell'anno scorso" (fino a 16 mesi), per avere il riferimento di dicembre 2025.
3. **Indicizzazione → Pagine**: il numero di pagine indicizzate e non indicizzate, con l'export dei motivi. → https://search.google.com/search-console/index
4. **Sitemap**: lo stato e il numero di URL rilevati. → https://search.google.com/search-console/sitemaps

Con gli export compila questa tabella:

| Metrica (28 giorni) | 3 nov 2026 | +4 settimane dal rilascio | +8 settimane dal rilascio |
|---|---|---|---|
| Clic | | | |
| Impressioni | | | |
| CTR medio | | | |
| Posizione media | | | |
| Pagine indicizzate | | | |
| Pagine "scansionate, non indicizzate" | | | |
| Pagine con almeno 1 impressione | | | |
| Query con almeno 1 impressione | | | |

## Registro delle modifiche (su `dev`, non ancora online)

| Data | Commit | Modifica | Pagine toccate |
|---|---|---|---|
| 2 nov 2026 | `130dfdf9` | Varianti nel tempo con redirect 301; nuovi campi "Come arrivare" e "Cenno storico" | struttura delle schede |
| 3 nov 2026 | `ddf89bfd` | Prima pagina luogo (Rifugio del Freo); prime schede riscritte | 11 schede, 1 pagina luogo |
| 3 nov 2026 | `1ebcc509` → `567ae6a2` | Riscrittura di tutte le schede dalle note originali, con H3 specifici, "Come arrivare", cenni storici con fonti e unione delle uscite doppie | 254 schede; 24 uscite diventate varianti |
| 3 nov 2026 | `377a62b0` | Chi sono: sezione sul sito come progetto, con link a LinkedIn | /chi-sono |

Le modifiche successive vanno aggiunte qui, una riga per ogni rilascio su `dev`.

## Come rifare la fotografia

Dalla cartella del repository:

```bash
# contenuti di dev (la cartella di lavoro)
python scripts/seo_snapshot.py > docs/seo/snapshot-AAAA-MM-GG-dev.json

# contenuti online: estrai Data da master in una cartella temporanea
mkdir -p /tmp/master && git archive master Escursioni.Web/Data | tar -x -C /tmp/master
python scripts/seo_snapshot.py /tmp/master/Escursioni.Web/Data > docs/seo/snapshot-AAAA-MM-GG-master.json
```

Il giorno del rilascio fai una fotografia di `master` subito dopo il merge: deve coincidere con quella di `dev`.
