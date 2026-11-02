## Why

Search Console (export di fine ottobre 2026, ultimi 3 mesi) dice che il problema del sito non sono le posizioni ma l'indicizzazione: 227 pagine sono "scansionate ma non attualmente indicizzate" e quelle indicizzate stanno calando (171 ad agosto, 135 a ottobre) su 278 escursioni più le pagine di servizio.

Dal confronto con il codice e i JSON le cause probabili sono due:

- **Doppioni**: la stessa traccia caricata più volte su Wikiloc (Calambrone marzo 2019, Colognole v1/v2, Ferrata di Buti da 0,79 km) e le escursioni spezzate in andata/ritorno (Sestola–Lago della Ninfa, Vicopisano–Verruca). Google ne tiene una o nessuna.
- **Testi tutti uguali**: 270 schede su 278 hanno le stesse H3 ("Come arrivare al punto di partenza", "Il percorso passo per passo", "Difficoltà e cosa aspettarsi", ...) e in 166 la sezione "Come arrivare" contiene solo frasi generiche ("segui le indicazioni", "parcheggio nelle vicinanze"). Per Google è contenuto prodotto in serie, a basso valore.

In più metà delle query che portano impressioni chiede "come arrivare", "parcheggio" o "distanza", e le query sul "Rifugio del Freo" trovano il sito solo in posizione 55-66 perché nessuna pagina tratta il rifugio come argomento.

## What Changes

1. **Escursioni con varianti nel tempo.** I doppioni diventano una sola pagina con la sezione "Le volte che l'ho fatta" (data, km, dislivello, GPX e traccia di ogni volta). Gli URL delle varianti fanno un 301 alla pagina unica. Le varianti stanno in `Data/hikes-varianti/` e il WikilocExporter non le ricrea mai, nemmeno con un riallineamento completo.
2. **Correzione dell'exporter.** Oggi le escursioni in `hikes-escluse` vengono saltate solo con `SkipExistingHikes: true`: con `false` vengono ricreate. Da ora esclusi e varianti vengono saltati sempre (tranne con `--url=`).
3. **"Come arrivare" vero e "Cenno storico".** Due nuovi blocchi per ogni scheda, salvati in campi JSON a parte che l'exporter conserva:
   - "Come arrivare e parcheggio": paese, strada, parcheggio, coordinate del punto di partenza (dal primo punto del GPX, scritte nell'HTML) e link a Google Maps già nell'HTML.
   - "Cenno storico": 1-2 fatti storici verificati sul luogo, al massimo 100 parole, con i link alle fonti. Se non si trova nulla di solido il blocco non c'è.
   - Le H3 standard di `descrizione_html` vengono sostituite con titoli specifici della singola escursione e tolta la vecchia sezione "Come arrivare" generica.
   - Si procede a blocchi, partendo dalle pagine con impressioni.
4. **Pagine per luogo.** Una pagina per i luoghi importanti, a partire da `/rifugi/rifugio-del-freo`: testo con dati stabili (quota, storia, sezione CAI, sentieri di accesso) presi online, fonti linkate in fondo, link al sito ufficiale per orari e contatti, elenco di tutte le escursioni che ci passano.

## Capabilities

### New Capabilities
- `hike-variants`: escursioni ripetute nel tempo unite in una pagina con le varianti, redirect 301 dei vecchi URL, esclusione permanente dal riallineamento Wikiloc.
- `hike-practical-history`: blocchi "Come arrivare e parcheggio" e "Cenno storico" con fonti, salvati in campi conservati dall'exporter; descrizioni senza intestazioni standard.
- `place-pages`: pagine dedicate ai luoghi (rifugi, vette, laghi...) con testo, fonti ed escursioni collegate.

### Modified Capabilities

## Impact

- **Escursioni.Web**: `Hike` (nuovi campi), `HikeRepository` (caricamento varianti), `Dettaglio.cshtml` (sezioni varianti, come arrivare, cenno storico), mappa con più tracce, `Luoghi` (pagina del singolo luogo), sitemap, indice di ricerca, RSS, `llms.txt`, `redirects.json`, statistiche in home.
- **Data**: nuova cartella `Data/hikes-varianti/`, nuova cartella `Data/luoghi-schede/`, JSON delle escursioni con i nuovi campi.
- **WikilocExporter**: logica di skip in `Program.cs`, campi conservati in `HikeJsonWriter`.
- **Escursioni.Tests**: redirect delle varianti, varianti assenti da sitemap/ricerca, fonti presenti dove c'è un cenno storico.
- **URL**: 14 URL di escursioni diventano 301 (13 varianti più il vecchio URL "ritorno" di Sestola, che prende uno slug pulito). Nessun altro URL cambia.
- **Manuale (fuori dal codice)**: "Convalida correzione" in Search Console dopo il deploy e nuovo export dopo 4-6 settimane.
