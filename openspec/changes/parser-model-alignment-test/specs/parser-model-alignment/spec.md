## ADDED Requirements

### Requirement: Le chiavi del parser DEVONO corrispondere a colonne reali
Il sistema DEVE verificare tramite test automatico che ogni chiave (nome colonna) estratta dal `MigrationParserService` durante il parsing di un file `.sql` esista come colonna mappata nel `EscursioniDbContext` per la rispettiva tabella.

#### Scenario: Tutte le chiavi hike sono colonne valide
- **WHEN** il parser processa un file di migrazione contenente un INSERT nella tabella `hike`
- **THEN** ogni chiave nel dizionario `HikeValues` risultante DEVE corrispondere a un nome colonna della tabella `escursioni.hike` come definita nel DbContext

#### Scenario: Tutte le chiavi hike_media sono colonne valide
- **WHEN** il parser processa un file di migrazione contenente INSERT nella tabella `hike_media`
- **THEN** ogni campo delle `MediaRows` risultanti DEVE corrispondere a un nome colonna della tabella `escursioni.hike_media` come definita nel DbContext

#### Scenario: Chiave disallineata produce fallimento esplicito
- **WHEN** il parser produce una chiave che non corrisponde a nessuna colonna nello schema
- **THEN** il test DEVE fallire indicando esattamente quale chiave è sconosciuta e per quale tabella

### Requirement: Il test DEVE funzionare con dati reali
Il test DEVE utilizzare almeno un file `.sql` reale dalla cartella `MigrationsRaw` come input per il parser, garantendo che venga testato il comportamento effettivo e non un mock.

#### Scenario: File di migrazione disponibile
- **WHEN** la cartella `MigrationsRaw` contiene almeno un file `.sql` con INSERT in `escursioni.hike`
- **THEN** il test esegue la verifica di allineamento su quel file

#### Scenario: Nessun file di migrazione disponibile
- **WHEN** la cartella `MigrationsRaw` è vuota o non contiene INSERT validi
- **THEN** il test viene skippato con un messaggio esplicativo (non fallisce)
