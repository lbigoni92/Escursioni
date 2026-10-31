## 1. Dati

- [x] 1.1 Convertire le 271 migrazioni SQL in 270 file JSON (un duplicato: vince il file più recente)
- [x] 1.2 `HikeRepository` in memoria dai JSON, rimozione EF Core/Npgsql
- [x] 1.3 Test: caricamento di tutti i file reali e del formato snake_case

## 2. Sito statico

- [x] 2.1 Modalità `--export` con TestServer
- [x] 2.2 `_redirects` (legacy `/escursioni/{id}/{slug}`, `/escursioni/{zona}`), `_headers`, `404.html`
- [x] 2.3 Ricerca lato browser (`search.js` + `data/search-index.json`)
- [x] 2.4 Form contatti via Web3Forms
- [x] 2.5 Slug identici a produzione; link della mappa calcolati dal server
- [x] 2.6 Escludere dalla sitemap le zone senza pagina (prima davano 404)

## 3. Strumenti

- [x] 3.1 MigrationEditor: lettura/scrittura JSON (round-trip identico su tutti i file)
- [x] 3.2 WikilocExporter: output JSON che conserva titolo_seo, meta_descrizione, tag, created_at
- [x] 3.3 WikilocExporter scrive direttamente nel sito (`SiteDir`), genera le varianti WebP e non riscrive i JSON invariati
- [x] 3.4 Slug univoci: ai titoli duplicati si aggiunge mese e anno; gli URL esistenti non cambiano
- [x] 3.5 Varianti WebP a qualità 75 con compressione massima (circa -25% di peso)

- [x] 3.6 Parser WikilocExporter: quote con separatore delle migliaia ("1.669 m")

## Test

- [x] T.1 Test funzionali sul sito in memoria (pagine, SEO, sitemap, RSS, redirect, link interni, integrità dati)
- [x] T.2 Test nel browser con Playwright (ricerca, mappa, carosello, tema, menu, contatti) e screenshot di riferimento
- [x] T.3 Confronto con il sito online: stessi URL, meta, menu, campi e risultati di ricerca

## 4. Deploy

- [x] 4.1 Workflow GitHub Actions → Cloudflare Pages
- [ ] 4.2 Creare il progetto Cloudflare Pages, i secret e le variabili GitHub
- [ ] 4.3 Collegare il dominio, verificare i redirect su `*.pages.dev`
- [ ] 4.4 Spegnere servizio e database su Render e il monitor UptimeRobot
