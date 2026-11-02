## ADDED Requirements

### Requirement: Ogni scheda DEVE mostrare il punto di partenza nell'HTML
La scheda di un'escursione con GPX DEVE contenere nell'HTML generato le coordinate del primo punto della traccia e un link a Google Maps con quelle coordinate, senza dipendere dal JavaScript.

#### Scenario: Escursione con GPX
- **WHEN** viene generata la scheda di un'escursione con GPX valido
- **THEN** la sezione "Come arrivare e parcheggio" contiene le coordinate del punto di partenza e un link `https://www.google.com/maps?q={lat},{lon}`, e nessun link "Apri su Google Maps" ha `href="#"`

#### Scenario: Testo "Come arrivare"
- **WHEN** il JSON contiene `come_arrivare`
- **THEN** il suo contenuto compare nella sezione "Come arrivare e parcheggio", prima delle coordinate

### Requirement: Il cenno storico DEVE essere breve e con fonti
Se il JSON di un'escursione contiene `cenno_storico`, la scheda DEVE mostrare la sezione "Cenno storico" con al massimo 100 parole, seguita dai link di `fonti`.

#### Scenario: Cenno storico presente
- **WHEN** il JSON contiene `cenno_storico` e almeno una fonte
- **THEN** la scheda mostra "Cenno storico" e sotto l'elenco "Fonti" con link esterni (`target="_blank"`, `rel="noopener"`)

#### Scenario: Cenno storico assente
- **WHEN** il JSON non contiene `cenno_storico`
- **THEN** la sezione non compare (nessun titolo vuoto, nessun testo di riempimento)

#### Scenario: Controlli dei dati
- **WHEN** un JSON contiene `cenno_storico` senza fonti, con più di 100 parole, o con una fonte senza URL `https`
- **THEN** un test fallisce indicando l'escursione

### Requirement: Le descrizioni riviste NON DEVONO essere sovrascritte da Wikiloc
Se un JSON contiene `"descrizione_rivista": true`, il WikilocExporter DEVE conservare `descrizione_html`.

#### Scenario: Riallineamento di una scheda rivista
- **WHEN** l'escursione cambia su Wikiloc e il JSON ha `descrizione_rivista: true`
- **THEN** l'exporter aggiorna i dati della traccia ma lascia invariati `descrizione_html`, `come_arrivare`, `cenno_storico` e `fonti`

#### Scenario: Scheda non rivista
- **WHEN** il JSON non ha `descrizione_rivista`
- **THEN** l'exporter si comporta come oggi

### Requirement: Le schede riviste NON DEVONO usare le intestazioni standard
Una scheda con `descrizione_rivista: true` NON DEVE contenere in `descrizione_html` le intestazioni "Come arrivare al punto di partenza", "Il percorso passo per passo", "Difficoltà e cosa aspettarsi", "Traccia GPS e informazioni pratiche".

#### Scenario: Controllo intestazioni
- **WHEN** una scheda rivista contiene una delle intestazioni standard
- **THEN** un test fallisce indicando l'escursione e l'intestazione
