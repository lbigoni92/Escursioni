## Why

Il sito usa un database PostgreSQL a pagamento su Render, ma i dati erano già tutti nel repository (file SQL in `Database/MigrationsRaw`, applicati al DB all'avvio). Il DB era solo una copia costosa dei file. In più il server free tier di Render va in sleep e serviva UptimeRobot per tenerlo sveglio.

## What Changes

- I dati delle escursioni passano da migrazioni SQL a un file JSON per escursione (`Escursioni.Web/Data/hikes/{wikiloc_id}.json`).
- `HikeRepository` legge i JSON in memoria: rimossi Entity Framework, Npgsql, `DatabaseBootstrapService`, `SearchService`, `GeocodingService`, `EmailSender`.
- Nuova modalità `--export <dir>`: genera il sito statico (HTML, sitemap, RSS, `_redirects`, `_headers`, `data/search-index.json`) per Cloudflare Pages.
- Ricerca lato browser con gli stessi parametri URL; form contatti via Web3Forms.
- MigrationEditor e WikilocExporter leggono/scrivono JSON invece di SQL.
- Deploy tramite GitHub Actions su Cloudflare Pages.

## Capabilities

### New Capabilities
- `static-site-export`: generazione del sito statico con URL e markup SEO invariati.

### Modified Capabilities
- Dati escursioni: da SQL/PostgreSQL a file JSON.
- Ricerca: da server a browser.
- Contatti: da SMTP a Web3Forms.

## Impact

- **Costi**: nessun database né server (Cloudflare Pages gratuito).
- **SEO**: stessi URL della sitemap in produzione (verificato con un diff). Gli slug riproducono il comportamento di produzione, dove le lettere accentate venivano eliminate.
- **Breaking**: `Database/MigrationsRaw` rimossa (resta nella cronologia git). Il deploy su Render va spento dopo il passaggio a Cloudflare.
