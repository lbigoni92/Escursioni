# Regole del progetto – Escursioni Luca Bigoni

Sito di escursioni di Luca Bigoni (escursionilucabigoni.it): ASP.NET Razor Pages (.NET 10), dati in file JSON, esportato come sito statico su Cloudflare Pages. Queste regole valgono per ogni sessione.

## Comunicazione e git

- **Il repository è pubblico**: niente segreti, cookie, token o dati personali nei file e nei commit. Lo strumento di importazione resta in un repository privato separato. Codice con licenza MIT, contenuti (foto, tracce, testi) © Luca Bigoni.

- **Scrivere sempre in italiano**: risposte, riepiloghi, box di fine turno, messaggi di commit.
- **Mai commit, merge, push o tag di propria iniziativa**, e non proporli. Si fanno solo quando Luca lo chiede esplicitamente, ogni volta. A fine lavoro dire cosa è cambiato e cosa resta non committato.
- I commit vanno su `dev`. **Su `master` si va solo con un rilascio chiesto da Luca**, seguendo la procedura in `docs/seo/README.md` (nota di rilascio, fotografie, export Search Console). Ultimi rilasci: `R1-2026-11` il 16 novembre e `R2-2026-11` il 17 novembre 2026; misure a +4 settimane (14 dicembre) e +8 settimane (11 gennaio).
- Mai inviare messaggi, email o post a nome di Luca senza la sua conferma: si preparano bozze.

## Contenuti delle schede

- **Mai prezzi in cifre** (biglietti, parcheggi, rifugi, noleggi): si scrive che c'è un costo e si rimanda al sito ufficiale.
- **Ogni fatto storico o pratico va verificato su fonti affidabili e citato** in `fonti` (solo `https://`). Se non si trova una fonte affidabile non si scrive: meglio un cenno mancante che un cenno inventato. Non riusare lo stesso cenno storico su due schede.
- Orari, aperture e telefoni non si copiano: si rimanda a chi li tiene aggiornati.
- Cenni storici: brevi (massimo 100 parole), con fonti.
- `titolo_seo` al massimo 57 caratteri, unico. `meta_descrizione` al massimo 160 caratteri (oltre viene tagliata), coerente con i dati della traccia (km, dislivello, difficoltà, tipo di giro).
- Due schede simili non devono contendersi la stessa ricerca: titoli diversi e link reciproco.
- Testi rivisti in HTML con `<h3>` per le sezioni e `descrizione_rivista: true`; tono personale di Luca, frasi semplici.
- Zone (`tag`) valide: quelle in `Escursioni.Web/Services/TagHelper.cs`, compresa "Val di Lima" (valle del Lima sopra Bagni di Lucca: non è Apuane). La zona si sceglie dal paese di partenza.
- Luoghi (vette, rifugi, passi, laghi, cascate): schede in `Data/luoghi-schede/`, sotto 60 parole restano `noindex`.

## Aggiungere un'escursione da Wikiloc

1. Importare la traccia con lo strumento di importazione privato nella cartella accanto al repository (`../WikilocExporter`, repository separato e privato: non va mai copiato qui), è .NET 8, si avvia con `DOTNET_ROLL_FORWARD=Major dotnet run --no-build`. Senza opzioni importa **solo le tracce nuove** (l'elenco del profilo si ferma alla prima pagina già tutta importata); `--url=<link wikiloc>` per una traccia precisa, `--tutte` per rileggere tutto il profilo.
2. GPX: il download di Wikiloc ha un controllo Cloudflare, quindi si fa dal browser vero di Luca. Quando l'importazione lo chiede, Claude apre da Brave (Claude in Chrome) `https://it.wikiloc.com/wikiloc/download.do?id={id}`, scheda File, formato **Originale**, Scarica: il file viene preso da solo dalla cartella Download (riconosciuto dall'ID nel GPX; vale anche un GPX scaricato prima). Se compare la casella di verifica di Cloudflare la clicca Luca: mai aggirarla o completarla.
3. Completare il JSON: `titolo_seo`, `meta_descrizione`, `tag`, `comune`, `descrizione_html` in sezioni, `come_arrivare`, eventuale `cenno_storico` con fonti. Wikiloc dà solo il mese: l'exporter ricava il giorno dal primo punto del GPX e scrive `data_esatta: true`, che poi conserva anche se si rilancia (per schede vecchie: `python -I scripts/date_da_gpx.py --scrivi`). Senza `data_esatta` il sito mostra solo "mese anno". Se Luca dice un giorno diverso, scriverlo con `data_esatta: true`.
   - Lo slug si calcola dal `titolo` di Wikiloc: se si corregge il titolo di una scheda già pubblicata, fissare prima `slug` con l'indirizzo attuale. Il sito mostra ovunque `titolo_seo` (anche breadcrumb e dati strutturati).
   - Foto: un campo `alt` facoltativo su ogni elemento di `media` descrive la foto (solo ciò che si vede); l'exporter lo conserva.
4. Luoghi toccati: `dotnet run --project Escursioni.Web --no-build -- --luoghi --minuti 5`.
5. Aggiungere la traccia a `docs/seo/wikiloc-link.csv` (la pagina va in produzione col rilascio successivo).
6. `python -I scripts/audit_coerenza.py` e i test.

## Controlli di qualità

- **Test**: `$env:DOTNET_ROOT="$env:LOCALAPPDATA\Microsoft\dotnet"; $env:PATH="$env:DOTNET_ROOT;$env:PATH"; dotnet test Escursioni.Tests` (in bash: `export DOTNET_ROOT="$LOCALAPPDATA/Microsoft/dotnet"`). Devono passare tutti prima di dire che un lavoro è finito.
- **Test nel browser**: `dotnet test Escursioni.UiTests`. I controlli "nessun errore JavaScript" falliscono per Cloudflare Analytics nell'ambiente di test (noto). Le immagini di riferimento dei test visivi si rigenerano con `UPDATE_SNAPSHOTS=1` **solo dopo aver guardato le differenze** e solo se la modifica è voluta.
- **Coerenza dei dati**: `python -I scripts/audit_coerenza.py` (testi contro numeri della traccia, zone contro coordinate, campi mancanti, prezzi, cenni duplicati, link). `python -I scripts/gpx_stats.py <id>` per distanza, dislivello, quote e tempi ricavati dal GPX (utile per tracce con il GPS rimasto acceso).
- L'estrazione dei luoghi e un server in esecuzione bloccano la DLL: fermarli prima di ricompilare.
- **ImageSharp resta alla 3.1.x**: dalla 4 la compilazione Release (deploy) fallisce senza licenza Six Labors. Le vulnerabilità note della 3.1.12 riguardano immagini malevole: il sito elabora solo le foto di Luca. Prima di aggiornare librerie, provare sempre `dotnet build Escursioni.Web -c Release`.
- Python: usare `-I`; per l'output con accenti `sys.stdout.reconfigure(encoding='utf-8')`; i JSON delle escursioni sono CRLF, indent 2, `ensure_ascii=False`: conservare fine riga e newline finale. Nei comandi bash evitare heredoc con apostrofi lunghi: scrivere gli script in un file.

## Grafica, usabilità, prestazioni

- Pagine a colonna unica, leggibili su telefono (prima verifica a 375 px), nessuno scorrimento orizzontale.
- Scheda escursione: in alto difficoltà e numeri, poi azioni (Scarica GPX, Indicazioni, Mappa), indice delle sezioni, foto, mappa con i luoghi, descrizione, come arrivare, storia, uscite, guide/zona/condividi.
- Niente spostamenti del layout dopo il caricamento (CLS sotto 0,1): immagini con `width`/`height`, controlli che dipendono da JavaScript mostrati con la classe `.js` su `<html>`.
- Bersagli tattili di almeno 24 px; contrasto adeguato in tema scuro e chiaro.
- Immagini WebP con varianti `.thumb.webp` (400 px) e `.gallery.webp` (800 px); prima foto `fetchpriority="high"`, le altre `loading="lazy"`.
- CSS e JS sempre con `asp-append-version` (cache di un anno, `immutable`). Foto e GPX: 30 giorni con `stale-while-revalidate`.
- Service worker `wwwroot/sw.js`: pagine prima dalla rete, poi dalla cache (modalità offline). Se cambia la strategia, aumentare `VERSION`.
- Se il sito inizia a salvare qualcosa nel browser o usa nuovi servizi esterni, **aggiornare l'informativa** in `Pages/Privacy.cshtml`.
- Permissions-Policy: la geolocalizzazione è permessa solo al sito (`geolocation=(self)`), serve a "Vicino a me".

## SEO e ricerche

- Priorità dal 10 novembre 2026: **analisi mensile di Search Console** (export in `docs/seo/search-console/AAAA-MM-GG`) e **link da altri siti** (Wikiloc, CAI, pro loco, blog). Le altre attività solo se Luca le chiede.
- Google Trends dal browser integrato (API `explore` + `widgetdata`), con pause: dopo 6-8 richieste risponde 429. Yahoo: suggerimenti da `it.search.yahoo.com/sugg/gossip/gossip-it-ura/` con 2 secondi tra le richieste. Bing Webmaster Keyword Research solo da Brave (estensione Claude in Chrome), una decina di parole per volta. Mai cambiare IP per aggirare i limiti.
- Registrare ogni ricerca in `docs/seo/` (log datato e CSV in `docs/seo/mete/`).
- Ignorare le ricerche ambigue (omonimi, frasi comuni) e quelle non escursionistiche (terme, hotel): non usarle per attirare visite.
- **Wikiloc**: modifiche alle tracce da Brave, lente come un umano (circa 45 secondi per traccia, al massimo 30-60 al giorno), testo in fondo alla descrizione e campo "URL esterno" verso la scheda; segnare lo stato in `docs/seo/wikiloc-link.csv` e verificare le pagine pubbliche alla fine.
