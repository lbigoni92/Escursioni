## 1. Setup progetto test

- [ ] 1.1 Aggiungere reference a `Escursioni.MigrationEditor` nel progetto `Escursioni.Tests.csproj`
- [ ] 1.2 Verificare che `Escursioni.Tests` abbia già reference a `Escursioni.Web` (per il DbContext)

## 2. Implementazione test

- [ ] 2.1 Creare `ParserModelAlignmentTests.cs` in `Escursioni.Tests`
- [ ] 2.2 Implementare helper che estrae i nomi colonna dal DbContext via EF Core metadata per le tabelle `hike`, `hike_media`, `hike_tags`
- [ ] 2.3 Implementare test che parsa un file `.sql` reale con `MigrationParserService` e confronta le chiavi `HikeValues` con le colonne della tabella `hike`
- [ ] 2.4 Implementare test per le `MediaRows` contro le colonne di `hike_media`
- [ ] 2.5 Aggiungere skip condition se nessun file `.sql` valido è disponibile in `MigrationsRaw`

## 3. Verifica

- [ ] 3.1 Eseguire i test e verificare che passino con lo stato attuale del codice
- [ ] 3.2 Simulare un disallineamento (chiave errata) e verificare che il test fallisca con messaggio chiaro
