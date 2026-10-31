## ADDED Requirements

### Requirement: Generazione del sito statico
Il sistema DEVE generare con `dotnet run --project Escursioni.Web -- --export <dir>` tutte le pagine pubbliche come file statici, senza database.

#### Scenario: URL invariati
- **WHEN** viene eseguito l'export
- **THEN** ogni URL della sitemap ha un file corrispondente (`/escursioni/{slug}` → `escursioni/{slug}.html`) e gli URL restano senza estensione né slash finale

#### Scenario: Titoli duplicati
- **WHEN** due escursioni hanno lo stesso titolo
- **THEN** la prima (per `created_at`) mantiene lo slug del titolo e la successiva riceve il suffisso `-{mese}-{anno}` della data dell'escursione, così entrambe hanno una pagina

#### Scenario: Errori di rendering
- **WHEN** una pagina non risponde con lo status atteso
- **THEN** l'export termina con codice di uscita diverso da zero e il deploy non parte

#### Scenario: Vecchi URL
- **WHEN** viene richiesto `/escursioni/{id}/{slug}` oppure `/escursioni/{slug-zona}`
- **THEN** l'hosting risponde con un redirect 301 alla pagina attuale

### Requirement: Ricerca senza server
La pagina `/ricerca` DEVE filtrare le escursioni nel browser accettando gli stessi parametri URL del server precedente.

#### Scenario: Ricerca per località
- **WHEN** l'URL contiene `Comune` e `RaggioKm`
- **THEN** vengono mostrate le escursioni entro il raggio, ordinate per distanza dal comune
