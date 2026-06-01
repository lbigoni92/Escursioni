## Why

Il `MigrationParserService` nel MigrationEditor usa stringhe letterali ("titolo", "descrizione", "distanza_km", ecc.) per mappare le colonne SQL ai campi delle escursioni. Queste stringhe non hanno alcun legame compilato con il modello `Hike` in Escursioni.Web. Se una colonna viene rinominata nel modello o nel DB schema, il parser continua a cercare il vecchio nome senza errori — causando perdita dati silente o corruzione.

Serve un test automatico che verifichi l'allineamento tra le chiavi usate dal parser e le colonne reali del modello/DB.

## What Changes

- Aggiunta di un test che estrae tutte le chiavi (nomi colonna) usate dal `MigrationParserService` e verifica che corrispondano alle colonne mappate nel `EscursioniDbContext` per la tabella `hike`.
- Se il parser usa una chiave che non esiste come colonna, il test fallisce con un messaggio chiaro.
- Copertura anche per `hike_media` e `hike_tags` se il parser le gestisce.

## Capabilities

### New Capabilities
- `parser-model-alignment`: Test automatico che garantisce coerenza tra le chiavi stringa nel MigrationParserService e lo schema DB definito nel DbContext.

### Modified Capabilities

## Impact

- **Escursioni.Tests**: nuovo file di test
- **Escursioni.MigrationEditor**: possibile estrazione di costanti per i nomi colonna (opzionale, solo se migliora la leggibilità)
- **Nessun breaking change**: è solo un test aggiuntivo
