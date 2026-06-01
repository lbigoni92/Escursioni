## Context

Il `MigrationParserService` è un singleton che legge file `.sql` dalla cartella `Escursioni.Web/Database/MigrationsRaw/`, li parsa con regex cercando `INSERT INTO escursioni.hike (col1, col2, ...)` e ne estrae i valori in un `Dictionary<string, string>`. I nomi colonna sono stringhe letterali nel codice.

Il modello `Hike` in Escursioni.Web è mappato tramite `EscursioniDbContext` con mapping espliciti snake_case (es. `Titolo` → `titolo`, `DistanzaKm` → `distanza_km`).

Oggi questi due mondi non si parlano a compile-time. L'unico feedback è un bug in produzione.

## Goals / Non-Goals

**Goals:**
- Rilevare a tempo di CI/test se il parser usa chiavi non allineate con lo schema DB
- Coprire le tabelle `hike`, `hike_media`, `hike_tags`
- Test chiaro che indichi esattamente quale chiave è disallineata

**Non-Goals:**
- Refactoring del parser (funziona, non lo tocchiamo)
- Condivisione di un progetto comune tra MigrationEditor e Web
- Validazione dei valori (solo nomi colonna)
- Test che il SQL generato sia sintaticamente valido

## Decisions

### 1. Approccio: test reflection-based sul DbContext

**Scelta**: Usare EF Core metadata (`Model.GetEntityTypes()` → `GetProperties()` → column names) per estrarre l'elenco di colonne reali, e confrontarlo con le chiavi usate dal parser.

**Alternative considerate**:
- Parsare i file `.sql` di migrazione per estrarre le colonne → troppo fragile, duplica la logica del parser stesso
- Costanti condivise in un progetto comune → richiede ristrutturazione della solution, over-engineering per questo caso

**Rationale**: Il DbContext è già la fonte di verità per lo schema. EF Core espone i metadata in modo affidabile.

### 2. Come estrarre le chiavi del parser

**Scelta**: Leggere un file `.sql` reale di esempio e passarlo al parser, poi ispezionare le chiavi del `Dictionary` risultante.

**Alternative considerate**:
- Reflection sulle regex del parser → fragile e accoppiato all'implementazione interna
- Hardcodare le chiavi attese nel test → diventa un altro punto di disallineamento

**Rationale**: Usare il parser sul suo input reale testa il comportamento effettivo.

### 3. Dove vive il test

**Scelta**: In `Escursioni.Tests`, con reference a entrambi i progetti (Web per il DbContext, MigrationEditor per il parser service).

**Rationale**: È l'unico progetto test nella solution, ha già reference a Web.

## Risks / Trade-offs

- **[Il test richiede un file .sql valido]** → Usa un file reale dalla cartella MigrationsRaw. Se la cartella è vuota in CI, il test viene skippato con un messaggio chiaro.
- **[Reference circolare]** → Escursioni.Tests già referenzia Web. Aggiungere MigrationEditor come reference è sicuro (Tests non è referenziato da nessuno).
- **[Falsi positivi se il parser gestisce colonne opzionali]** → Il test verifica che ogni chiave del parser esista come colonna, non che ogni colonna sia nel parser. Direzione unica.
