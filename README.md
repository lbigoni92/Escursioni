# Escursioni - Sito di Luca Bigoni

Questo è il repository del sito ufficiale di Luca Bigoni dedicato a escursioni, trekking e natura.

## Caratteristiche principali

- **SEO avanzata**: meta tag ottimizzati, Open Graph, Twitter Card, dati strutturati schema.org (WebSite, Person, Article), sitemap.xml, robots.txt, canonical, e struttura semantica chiara.
- **Sito statico**: ogni pagina è un file HTML pre-generato, servito da CDN. Nessun database e nessun server da tenere acceso.
- **Responsive**: design ottimizzato per dispositivi mobili e desktop.
- **Performance**: immagini WebP pre-generate, cache per asset statici.
- **Contenuti**: escursioni con tracce GPS, foto, dettagli tecnici, descrizioni e consigli.
- **Accessibilità**: skip-link, semantic HTML, dark mode.
- **Manifest & Favicon**: presenza di manifest.json e favicon per una migliore esperienza su dispositivi e nei risultati di ricerca.
- **Tecnologie**: ASP.NET Core Razor Pages (usato come generatore di sito statico), Cloudflare Pages, Leaflet.js per le mappe.

## Contatti

Per informazioni o collaborazioni: luca.bigoni@live.it

## Licenza

- **Codice** (cartelle `Escursioni.Web`, `Escursioni.Tests`, `Escursioni.UiTests`, `Escursioni.MigrationEditor`, `scripts`): licenza MIT, vedi [LICENSE](LICENSE).
- **Contenuti**: foto, tracce GPS, descrizioni, cenni storici, schede dei luoghi e guide (`Escursioni.Web/Data`, `Escursioni.Web/wwwroot/media` e testi del sito) sono © Luca Bigoni, **tutti i diritti riservati**. Non possono essere copiati, ripubblicati o usati per altri siti o app senza autorizzazione scritta. Per richieste: luca.bigoni@live.it.

---

## Come funziona

```
Strumento di importazione privato (non incluso)
                         │ scrive direttamente nel sito
                         ▼
Escursioni.Web/Data/hikes/{wikiloc_id}.json   ◄── MigrationEditor (SEO, tag, descrizioni)
Escursioni.Web/wwwroot/media/... (+ varianti .webp)
                         │
   dotnet run --project Escursioni.Web -- --export ../dist
                         ▼
dist/  (HTML + sitemap.xml + feed/rss + _redirects + _headers + media)
                         │  GitHub Actions
                         ▼
                 Cloudflare Pages
```

- **Dati**: un file JSON per escursione in `Escursioni.Web/Data/hikes/`. Le chiavi sono quelle delle vecchie colonne del DB (`titolo`, `titolo_seo`, `meta_descrizione`, `tag`, `media`, ...). All'avvio il sito li carica tutti in memoria.
- **Generazione**: `--export` avvia il sito in memoria (TestServer), richiede ogni URL e salva l'HTML. Gli URL restano identici (`/escursioni/{slug}`, `/escursioni/zona/{slug}`, `/mappa`, ...), senza `.html` né slash finale.
- **Ricerca**: `/ricerca` (noindex) filtra nel browser `data/search-index.json` con gli stessi parametri di prima (`?Q=`, `?Comune=`, `RaggioKm`, `OrdinaPer`, `PageNumber`). La località viene geocodificata con Nominatim (OpenStreetMap).
- **Contatti**: nessun modulo, solo il link email (`Site:ContactEmail` in `appsettings.json`).
- **Vette, rifugi, passi e laghi**: `/vette`, `/rifugi`, `/passi`, `/laghi`, la home e il riquadro "Sul percorso" delle schede elencano i luoghi di OpenStreetMap (con nome) vicini a una traccia GPX: vette e passi entro 50 m, rifugi e bivacchi entro 75 m, laghi entro 100 m dalla riva (soglie in `PlaceType`). Per ogni luogo: quota, zona (la più frequente tra le sue escursioni) e parco.
  - Sono calcolati da `dotnet run --project Escursioni.Web -- --luoghi` e salvati in `Escursioni.Web/Data/luoghi.json`. Il comando controlla solo le escursioni nuove; `-- --luoghi --tutte` ricalcola tutto (es. dopo aver cambiato un GPX), riusando i parchi già trovati. Lo stesso da GitHub: **Actions → Deploy sito statico → Run workflow** con "tutte" spuntato (lì Overpass risponde molto più in fretta). Dove OpenStreetMap ha il nome italiano (`name:it`) si usa quello.
  - **GitHub Actions lo esegue da solo** a ogni push su `master` e committa `luoghi.json` se è cambiato; quel commit fa ripartire la build di Cloudflare Pages. Aggiungendo un'escursione non serve fare nulla: dopo qualche minuto il sito si aggiorna una seconda volta con i nuovi luoghi. Se Overpass non risponde l'escursione viene ricontrollata al push successivo.
  - In locale le cime scaricate restano in cache 30 giorni (`%TEMP%/escursioni-luoghi`).
- **Numeri in home**: km, dislivello totale (con il confronto con l'Everest) e record (escursione più lunga, con più dislivello, più alta) sono calcolati a ogni generazione dai JSON delle escursioni.
- **Pagine legali**: `/privacy` e `/note-legali` (noindex, linkate nel footer). Cloudflare Web Analytics (snippet nel `_Layout.cshtml`, incluso solo in ambiente Production: l'export del deploy usa `--no-launch-profile`) è citato sempre: se lo disattivi, toglilo dalla privacy. Se aggiungi un servizio esterno (embed, font, CDN) va citato nella privacy.
- **Slug**: le lettere accentate vengono eliminate (`più` → `pi`), come faceva il vecchio server in produzione. Sono gli URL indicizzati: non cambiare `MakeSlug` senza aggiungere redirect 301.
- **Titoli uguali**: se un'escursione ha lo stesso titolo di una precedente (in ordine di `created_at`), il suo slug riceve mese e anno (`calambrone-marzo-2019`), poi il `wikiloc_id`. Gli URL già pubblicati non cambiano.
- **Escursioni ripetute (varianti)**: un'escursione fatta più volte ha una sola pagina. La principale elenca le altre volte in `"varianti": [wikiloc_id, ...]` e i JSON di quelle volte stanno in `Data/hikes-varianti/`. La pagina mostra "Le volte che l'ho fatta" (tabella e tracce colorate sulla mappa), i vecchi URL delle varianti fanno 301 alla principale (generati da `HikeRepository.Redirects`, senza toccare `redirects.json`) e le varianti non compaiono in sitemap, ricerca, RSS ed elenchi. Km e dislivello in home le contano; la stessa traccia caricata due volte su Wikiloc (stessa data e stessi km) conta una volta sola.
  - Per unire un'escursione: sposta il JSON della ripetizione in `hikes-varianti` e aggiungi il suo id a `varianti` della principale. Gli slug si calcolano su principali e varianti insieme, quindi gli URL esistenti restano quelli.
  - `"slug": "..."` nel JSON sceglie l'URL a mano; il vecchio slug calcolato fa 301 al nuovo.
- **Come arrivare e cenno storico**: campi facoltativi del JSON. `come_arrivare` (HTML) va nella sezione "Come arrivare e parcheggio", insieme alle coordinate del punto di partenza lette dal GPX. `cenno_storico` (testo, massimo 100 parole) compare solo se c'è e richiede almeno una fonte in `fonti: [{ "titolo", "url" }]`, con URL https. Con `"descrizione_rivista": true` la descrizione è considerata riscritta a mano: niente intestazioni standard ("Il percorso passo per passo", ...) e l'exporter non la sovrascrive. I test controllano queste regole.
- **Pagine luogo**: un luogo di `luoghi.json` può avere una pagina propria (`/rifugi/rifugio-del-freo`) con una scheda in `Data/luoghi-schede/{slug}.json`: `osm` (lo stesso id di `luoghi.json`), `nome`, `titolo_seo`, `meta_descrizione`, `testo_html`, `fonti` e `contatti` (dove trovare orari e telefono aggiornati, invece di copiarli). La pagina elenca tutte le escursioni che passano dal luogo ed è linkata dall'elenco del tipo e dal riquadro "Sul percorso". Solo dati stabili presi da fonti verificabili, sempre citate.

### Aggiungere o aggiornare un'escursione
1. Importa l'escursione dalle mie tracce con lo strumento di importazione (privato, non incluso in questo repository). Scrive il JSON in `Escursioni.Web/Data/hikes/` e foto e GPX in `Escursioni.Web/wwwroot/media/`, con le varianti `.thumb.webp`/`.gallery.webp`.
   - `titolo_seo`, `meta_descrizione`, `tag` e `created_at` già presenti vengono mantenuti, come `slug`, `varianti`, `come_arrivare`, `cenno_storico` e `fonti`. Con `descrizione_rivista: true` resta anche `descrizione_html`.
   - Le escursioni in `Data/hikes-escluse` non vengono reimportate; quelle in `Data/hikes-varianti` restano lì.
   - Se l'importazione non porta con sé il GPX, va salvato a mano in `Escursioni.Web/wwwroot/media/gpx/{wikiloc_id}.gpx`.
2. (Opzionale) rifinisci SEO e descrizioni con il MigrationEditor. Il salvataggio conserva i campi che l'editor non mostra (varianti, come arrivare, cenno storico, fonti).
3. `git commit` + `git push` su `master`: Cloudflare Pages ricompila e ripubblica il sito; GitHub Actions aggiorna vette/rifugi/passi/laghi delle escursioni nuove e il loro commit fa ripartire la build. **La build di Cloudflare non esegue i test**: prima del push lancia `dotnet test Escursioni.Tests` e `dotnet build Escursioni.Web -c Release`.

### Anteprima locale
- Come server (ricarica le pagine a ogni modifica): `dotnet run --project Escursioni.Web`
- Sito statico completo: `dotnet run --project Escursioni.Web -- --export ../dist` (la prima volta copia ~2 GB di media, poi solo i file cambiati)

### Test
- **`Escursioni.Tests`** (girano anche nel deploy, ~10 secondi): tutte le pagine sul sito vero in memoria. Controllano:
  - status, title, meta description (≤130 caratteri, senza a capo), canonical, robots, H1, og:image e JSON-LD di ogni escursione;
  - sitemap (ogni URL risponde), RSS, robots.txt, indice di ricerca, redirect dei vecchi URL e regole di `_redirects`;
  - nessun link interno rotto;
  - dati: zone esistenti, quote coerenti, GPX validi (non pagine di Cloudflare), foto vere con le varianti WebP.
- **`Escursioni.UiTests`** (solo in locale): Chromium vero tramite Playwright, su 10 escursioni di prova in `Fixtures/hikes`.
  - Test di comportamento: ricerca (testo, difficoltà, località, paginazione), carosello, mappa e tracce GPX, tema chiaro/scuro, menu mobile, modulo contatti, nessun errore JavaScript.
  - Test grafici: screenshot a pagina intera di ogni tipo di pagina (desktop 1280px, mobile 390px, tema chiaro) confrontati con `Baselines/*.png`. Le differenze finiscono in `TestResults/visual` (attuale + diff in rosso).
  - Prima volta: `pwsh Escursioni.UiTests/bin/Debug/net10.0/playwright.ps1 install chromium`.
  - Dopo una modifica grafica voluta: `UPDATE_SNAPSHOTS=1 dotnet test Escursioni.UiTests`, controlla le nuove immagini e committale.
  - Non girano nel deploy perché il rendering dei font cambia tra Windows e Linux.

### Hosting & Deploy (Cloudflare Pages, gratuito)
Dal 16 novembre 2026 il sito è su **Cloudflare Pages**, progetto `escursioni` (https://escursioni.pages.dev), collegato al repository GitHub tramite l'app Cloudflare Workers and Pages:
- a ogni push su `master` Cloudflare installa .NET 10 ed esegue `dotnet run --project Escursioni.Web -c Release --no-launch-profile -- --export ../dist`, poi pubblica la cartella `dist` (con `_redirects` e `_headers` generati dall'export);
- il dominio `escursionilucabigoni.it` è registrato su Register.it, ma i nameserver sono quelli di Cloudflare (`roan`/`romina.ns.cloudflare.com`): DNS, record della posta e verifica di Google si gestiscono dalla dashboard di Cloudflare;
- il job `deploy` del workflow GitHub (pubblicazione con wrangler) resta spento finché la variabile `CF_PAGES_PROJECT` non è impostata: non serve, la build la fa Cloudflare.

Limiti del piano gratuito da tenere d'occhio: 20.000 file per deploy (oggi ~12.900, ~46 file per escursione) e 25 MB per file.

### SEO & Analytics
- **Meta tag**: Title, Description, Open Graph, Twitter Card, canonical, robots.txt, sitemap.xml
- **Dati strutturati**: schema.org WebSite, Person, Article (JSON-LD)
- **Google Search Console**: verifica tramite file HTML in wwwroot
- **Redirect**: generati in `dist/_redirects` (vecchi URL `/escursioni/{id}/{slug}` e `/escursioni/{zona}` → `/escursioni/zona/{zona}`)

### Accessibilità & UX
- **Skip-link**: accessibilità tastiera
- **Dark mode**: toggle con localStorage
- **Responsive**: testato su mobile e desktop

### Performance
- **CDN**: Cloudflare (compressione automatica)
- **Cache statici**: 30 giorni (`dist/_headers`)
- **Immagini**: varianti `.thumb.webp` (400px) e `.gallery.webp` (800px), qualità 75, generate durante l'importazione o, se mancano, durante l'export

### Manutenzione
- **Aggiornare regolarmente le escursioni**
- **Controllare Google Search Console per errori SEO**
- **Monitorare le performance con PageSpeed Insights**
- I dati sono nel repository git: non serve più il backup del database

### TODO/Future
- Migliorare link building (profili social, blog, forum)
- Eventuale traduzione inglese (hreflang)
- Ottimizzazione Core Web Vitals
- Aggiungere pagine di approfondimento (es. consigli trekking, attrezzatura)

---

> Ultima revisione: ottobre 2026

Sito sviluppato e mantenuto da Luca Bigoni.
