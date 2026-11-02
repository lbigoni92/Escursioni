## Context

Il sito è statico: `Escursioni.Web` carica all'avvio i JSON di `Data/hikes/` (uno per escursione, chiave `wikiloc_id`) e `--export` genera l'HTML. Lo slug di una scheda deriva dal `titolo` (`IndexModel.MakeSlug`); a parità di titolo `HikeRepository.UniqueSlug` aggiunge mese e anno in ordine di `created_at` (es. `calambrone-marzo-2019`). I 301 delle pagine tolte stanno in `Data/redirects.json` e valgono sia nel middleware sia nel `_redirects` del sito statico.

Il `WikilocExporter` scrive direttamente in `Data/hikes/`. Quando il payload Wikiloc cambia riscrive il JSON conservando solo `titolo_seo`, `meta_descrizione`, `tag` e `created_at` (`HikeJsonWriter.PreservedFields`): `descrizione_html` viene riscritta. Le escursioni in `Data/hikes-escluse/` sono saltate solo quando `SkipExistingHikes` è `true`.

I luoghi (`Data/luoghi.json`) sono calcolati da OpenStreetMap a partire dalle tracce GPX e elencati in `/vette`, `/rifugi`, `/passi`, `/laghi`; oggi non esiste una pagina per il singolo luogo.

## Goals / Non-Goals

**Goals:**
- Una sola pagina per ogni escursione ripetuta, con lo storico delle volte in cui è stata fatta.
- Nessuna variante ricreata dal riallineamento Wikiloc, in nessuna modalità.
- Schede diverse l'una dall'altra, con informazioni pratiche e storiche verificabili.
- Pagine luogo che possano posizionarsi sulle query col nome del luogo.

**Non-Goals:**
- Riscrivere tutte le 278 schede in un colpo: si procede a blocchi.
- Pagine luogo generate in automatico per ogni elemento di `luoghi.json` (sarebbero pagine sottili).
- Orari, prezzi o contatti copiati nel sito: si linka la fonte ufficiale.
- Modificare le escursioni su Wikiloc.

## Decisions

### 1. Gruppi di varianti e pagina principale

| Pagina principale | Varianti (301 verso la principale) |
|---|---|
| `87617115` Sestola - Lago della Ninfa - Ritorno, con slug `lago-della-ninfa-da-sestola` | `87617166` Andata (e il vecchio slug "ritorno") |
| `96964761` Vicopisano - Rocca della Verruca (anello 2022) | `87617356` Andata, `87617334` Ritorno (2019) |
| `145307121` Calambrone (2023, slug `calambrone`) | `88152101`, `87617278`, `99597113`, `88152122` |
| `87479081` Valle Benedetta - Acquedotto di Colognole | `87617293` v1, `87617310` v2, `87617317` v3, `87617322` v4, `87617255` Livorno Escursionismo - Colognole |
| `253262610` Ferrata di buti (2026) | `218691561` Buti Ferrata, `210756323` Ferrata buti |

Restano separate: Colognole con Eremo della Sambuca, Pan di Zucchero, grotte e da Parrana; Ferrata di Sant'Antone 7,2 km; Monte Cimone in tenda da Sestola.

La principale è quella con lo slug già più pulito o più visibile; per Sestola nessuno dei due slug va bene ("andata"/"ritorno"), quindi la principale riceve uno slug esplicito (vedi 3).

### 2. Dove stanno le varianti

**Scelta**: la principale ha `"varianti": [id, ...]`; i JSON delle varianti si spostano in `Data/hikes-varianti/{id}.json` così come sono (media e GPX restano dove sono).

**Alternative**: tenerle in `Data/hikes/` con un campo `variante_di` → l'exporter con `SkipExistingHikes: false` le riscriverebbe e il campo andrebbe aggiunto ai conservati; ogni pagina che elenca escursioni dovrebbe filtrarle. Una cartella separata è più semplice e non si dimentica nessun filtro.

`HikeRepository` carica le varianti da `hikes-varianti` e le aggancia alla principale (`Hike.Varianti`, ordinate per `data_escursione`). Le varianti non sono in `GetAll`, quindi restano fuori da elenchi, sitemap, RSS, ricerca, `llms.txt` e home senza filtri aggiuntivi.

**Statistiche in home**: km e dislivello totali contano anche le varianti (sono chilometri fatti davvero); il conteggio delle escursioni e i record no.

**Luoghi**: il calcolo di `luoghi.json` considera anche le tracce delle varianti e attribuisce i luoghi alla principale.

### 3. Slug esplicito

Nuovo campo opzionale `slug` nel JSON: se presente vince su quello calcolato dal titolo. Serve solo dove lo slug calcolato è fuorviante (Sestola). Va tra i campi conservati dall'exporter, altrimenti un riallineamento cambierebbe l'URL.

### 4. Redirect

**Scelta**: righe esplicite in `Data/redirects.json`, scritte al momento dell'unione con gli slug attuali delle varianti (presi dal sito in esecuzione, non ricalcolati).

**Alternativa**: calcolare i redirect all'avvio dagli slug delle varianti → lo slug dipende dall'ordine di `created_at` fra tutte le escursioni (`calambrone` vs `calambrone-marzo-2019`), quindi ricalcolarlo fuori da quel contesto è fragile. Un test verifica che ogni variante abbia la sua riga.

Tutti i 301 puntano direttamente all'URL finale (nessuna catena); se una vecchia riga di `redirects.json` punta a uno slug che diventa variante, la riga viene aggiornata.

### 5. Exporter: skip sempre

Nel ciclo di `Program.cs` un ID presente in `hikes-escluse` o `hikes-varianti` viene saltato sempre, indipendentemente da `SkipExistingHikes`. Con `--url=` esplicito su una variante l'exporter aggiorna il file in `hikes-varianti` (non lo ricrea in `hikes`). `SkipExistingHikes` continua a valere solo per `Data/hikes`.

### 6. Sezione "Le volte che l'ho fatta"

Nella scheda principale, dopo i dati tecnici: una riga per ogni volta (principale compresa), dalla più recente: data, km, dislivello, tipo di giro, durata, link "Scarica GPX". Sulla mappa le tracce di tutte le volte, ognuna con un colore e una legenda; la principale in primo piano. Le foto delle varianti vanno nella galleria dopo quelle della principale. Lo schema JSON-LD resta quello della principale.

Andata e ritorno (Sestola, Verruca 2019) compaiono come due righe della stessa data, etichettate "andata" e "ritorno".

### 7. Nuovi campi per "Come arrivare" e "Cenno storico"

```json
"come_arrivare": "<p>...</p>",
"cenno_storico": "Testo, max 100 parole",
"fonti": [ { "titolo": "...", "url": "https://..." } ],
"descrizione_rivista": true
```

- Tutti e quattro i campi (più `varianti` e `slug`) entrano in `HikeJsonWriter.PreservedFields`.
- `descrizione_rivista: true` fa conservare anche `descrizione_html`: è il segnale che la descrizione è stata riscritta a mano e non va sovrascritta da Wikiloc. Senza il flag il comportamento resta quello di oggi.
- Il template mostra "Come arrivare e parcheggio" con il testo del campo più, sempre, le coordinate del primo punto del GPX e il link a Google Maps **già nell'HTML** (oggi il link è `href="#"` nascosto e viene riempito dal JS). Le coordinate si leggono dal GPX al caricamento del repository.
- "Cenno storico" compare solo se il campo è valorizzato; sotto, "Fonti" con i link (`rel="noopener"`, target esterno). Un test fallisce se c'è un cenno storico senza fonti o sopra le 100 parole.
- Nelle schede riviste si toglie da `descrizione_html` la vecchia H3 "Come arrivare al punto di partenza" e le altre H3 standard vengono sostituite con titoli specifici (es. "La salita al Pizzo delle Saette" invece di "Il percorso passo per passo").

### 8. Ricerca dei contenuti

I fatti storici e le info pratiche vengono cercati online (fonti preferite: siti di comuni, parchi, CAI, enti museali, Wikipedia con le sue fonti). Ogni fatto deve essere verificabile da una fonte linkata; niente fatti senza fonte, niente riempitivi. Se per un luogo non si trova nulla di solido il campo resta vuoto. Ordine dei blocchi:
1. Le 7 pagine con impressioni: Lago della Ninfa da Sestola, Lago della Gherardesca, Serrai di Sottoguda, Cascata dell'Acquapendente e Rifugio del Freo, Cascate del Dardagna dalla Madonna dell'Acero, Cala Violina, Grotte Gialle di Bibbona.
2. Le altre pagine principali dei gruppi di varianti.
3. Il resto, a blocchi di circa 20 per zona.

### 9. Pagine luogo

- Contenuto in `Data/luoghi-schede/{slug}.json`: `nome`, `tipo` (rifugio, vetta, ...), `osm_id` per agganciarlo a `luoghi.json`, `titolo_seo`, `meta_descrizione`, `testo_html`, `fonti`, `sito_ufficiale`.
- URL `/{tipo}/{slug}` (es. `/rifugi/rifugio-del-freo`). Esiste una pagina solo per i luoghi con una scheda.
- La pagina mostra: testo, dati da `luoghi.json` (quota, parco, zona), mappa, elenco delle escursioni che passano dal luogo (card esistenti), fonti, link al sito ufficiale per orari e contatti.
- Link in ingresso: dalla riga del luogo in `/rifugi` (ecc.) e dal riquadro "Sul percorso" delle schede. In sitemap.
- Dati inseriti: solo quelli stabili (quota, anno di costruzione, sezione CAI, storia, sentieri di accesso). Orari, gestore e telefono non si copiano.

## Risks / Trade-offs

- **[Perdita temporanea di posizioni sugli URL rediretti]** → i 301 sono diretti e la pagina unica è più completa; si misura con l'export di Search Console dopo 4-6 settimane.
- **[Fatti storici sbagliati]** → ogni fatto ha una fonte linkata; in caso di dubbio il campo resta vuoto.
- **[Lavoro manuale lungo per 278 schede]** → blocchi in ordine di impatto; il sito è coerente anche a metà lavoro perché i campi nuovi sono opzionali.
- **[Descrizioni riviste bloccate rispetto a Wikiloc]** → `descrizione_rivista` è un flag esplicito; togliendolo si torna alla sincronizzazione.
- **[Statistiche della home cambiano]** → il conteggio delle escursioni scende di 13; km e dislivello totali restano uguali.
