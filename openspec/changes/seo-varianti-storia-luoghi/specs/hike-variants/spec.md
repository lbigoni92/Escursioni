## ADDED Requirements

### Requirement: Un'escursione ripetuta DEVE avere una sola pagina
Il sistema DEVE mostrare le escursioni elencate in `varianti` di un JSON di `Data/hikes/` come parte della pagina di quell'escursione, e NON DEVE generare per loro pagine proprie.

#### Scenario: Pagina principale con varianti
- **WHEN** il JSON di un'escursione contiene `"varianti": [id1, id2]` e i file `Data/hikes-varianti/id1.json` e `id2.json` esistono
- **THEN** la sua pagina mostra la sezione "Le volte che l'ho fatta" con una riga per la principale e una per ogni variante, ordinate dalla più recente, con data, km, dislivello, tipo di giro, durata e link al GPX

#### Scenario: Andata e ritorno
- **WHEN** due righe hanno la stessa data e i titoli originali contengono "Andata" e "Ritorno"
- **THEN** le righe sono etichettate "andata" e "ritorno"

#### Scenario: Tracce sulla mappa
- **WHEN** la pagina ha varianti
- **THEN** la mappa mostra la traccia di ogni volta con un colore diverso e una legenda, con la principale in primo piano

#### Scenario: Varianti fuori dagli elenchi
- **WHEN** un'escursione è in `Data/hikes-varianti/`
- **THEN** non compare in sitemap, RSS, indice di ricerca, `llms.txt`, elenchi per zona, card della home e conteggio delle escursioni

#### Scenario: Statistiche
- **WHEN** la home calcola km e dislivello totali
- **THEN** include anche le varianti

#### Scenario: Variante orfana
- **WHEN** un file in `Data/hikes-varianti/` non è citato in nessun `varianti`
- **THEN** un test fallisce indicando l'ID

### Requirement: Gli URL delle varianti DEVONO fare 301 alla pagina principale
Ogni URL pubblicato in precedenza per una variante DEVE rispondere con un 301 diretto all'URL della pagina principale, senza catene.

#### Scenario: Vecchio URL di una variante
- **WHEN** un client richiede `/escursioni/{slug-della-variante}`
- **THEN** riceve 301 verso `/escursioni/{slug-principale}`, sia dal server sia dal `_redirects` del sito statico

#### Scenario: Nessuna catena
- **WHEN** un redirect di `Data/redirects.json` punta a un URL che a sua volta reindirizza
- **THEN** un test fallisce

### Requirement: Lo slug esplicito DEVE prevalere su quello calcolato
Se il JSON di un'escursione contiene `slug`, il sistema DEVE usarlo come URL della scheda al posto di quello calcolato dal titolo.

#### Scenario: Slug esplicito
- **WHEN** il JSON contiene `"slug": "lago-della-ninfa-da-sestola"`
- **THEN** la scheda è servita su `/escursioni/lago-della-ninfa-da-sestola` e il vecchio slug calcolato fa 301 lì

### Requirement: Il WikilocExporter NON DEVE ricreare varianti ed escursioni escluse
L'exporter DEVE saltare gli ID presenti in `Data/hikes-escluse/` o `Data/hikes-varianti/` qualunque sia il valore di `SkipExistingHikes`.

#### Scenario: Riallineamento completo
- **WHEN** l'exporter gira con `"SkipExistingHikes": false` e il profilo Wikiloc contiene una variante
- **THEN** nessun file viene creato in `Data/hikes/` per quell'ID

#### Scenario: Riallineamento esplicito di una variante
- **WHEN** l'exporter gira con `--url=<link della variante>`
- **THEN** aggiorna `Data/hikes-varianti/{id}.json` e non crea `Data/hikes/{id}.json`

#### Scenario: Campi conservati
- **WHEN** l'exporter riscrive un JSON
- **THEN** conserva `varianti`, `slug`, `come_arrivare`, `cenno_storico`, `fonti` e `descrizione_rivista` se presenti
