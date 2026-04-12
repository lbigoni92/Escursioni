# Escursioni - Sito di Luca Bigoni

Questo è il repository del sito ufficiale di Luca Bigoni dedicato a escursioni, trekking e natura.

## Uptime

Il sito rimane sempre online grazie al servizio gratuito [UptimeRobot](https://dashboard.uptimerobot.com/monitors/802825555), che effettua un ping automatico ogni 5 minuti per evitare che la piattaforma di hosting Render.com metta il sito in sleep.

## Caratteristiche principali

- **SEO avanzata**: meta tag ottimizzati, Open Graph, Twitter Card, dati strutturati schema.org (WebSite, Person, Article), sitemap.xml, robots.txt, canonical, e struttura semantica chiara.
- **Responsive**: design ottimizzato per dispositivi mobili e desktop.
- **Performance**: immagini ottimizzate, GZIP attivo, cache per asset statici.
- **Contenuti**: escursioni con tracce GPS, foto, dettagli tecnici, descrizioni e consigli.
- **Accessibilità**: skip-link, semantic HTML, dark mode.
- **Google Analytics**: tracciamento visite integrato (GA4).
- **Manifest & Favicon**: presenza di manifest.json e favicon per una migliore esperienza su dispositivi e nei risultati di ricerca.
- **Tecnologie**: ASP.NET Core Razor Pages, PostgreSQL, Docker, Entity Framework Core, Leaflet.js per le mappe.

## Contatti

Per informazioni o collaborazioni: luca.bigoni@live.it

---

## Promemoria e Note Tecniche

### Hosting & Deploy
- **Hosting**: Render.com (free tier, attenzione a limiti di RAM e sleep automatico)
- **Keep Alive**: UptimeRobot (https://dashboard.uptimerobot.com/monitors/802825555) effettua ping ogni 5 minuti per evitare sleep
- **Deploy**: push su GitHub → build automatico su Render
- **Database**: PostgreSQL gestito da Render (credenziali in Environment Variables)
- **Migrazioni**: eseguire manualmente da locale se troppo pesanti per il free tier

### Ambiente di sviluppo
- **Docker Compose**: per sviluppo locale (db + web-dev)
- **.gitignore**: esclude config sensibili, dati docker, test output
- **appsettings.json**: non committare dati sensibili, usare variabili d'ambiente in produzione

### SEO & Analytics
- **Meta tag**: Title, Description, Open Graph, Twitter Card, canonical, robots.txt, sitemap.xml
- **Dati strutturati**: schema.org WebSite, Person, Article (JSON-LD)
- **Google Analytics**: inserire Measurement ID reale in _Layout.cshtml
- **Google Search Console**: verifica tramite file HTML in wwwroot

### Accessibilità & UX
- **Skip-link**: accessibilità tastiera
- **Dark mode**: toggle con localStorage
- **Responsive**: testato su mobile e desktop

### Performance
- **GZIP**: attivo
- **Cache statici**: 30 giorni
- **Immagini**: lazy loading, ottimizzare se necessario

### Manutenzione
- **Aggiornare regolarmente le escursioni**
- **Controllare Google Search Console per errori SEO**
- **Monitorare uptime e performance con UptimeRobot e PageSpeed Insights**
- **Backup periodico del database**

### TODO/Future
- Migliorare link building (profili social, blog, forum)
- Eventuale traduzione inglese (hreflang)
- Ottimizzazione Core Web Vitals
- Aggiungere pagine di approfondimento (es. consigli trekking, attrezzatura)

---

> Ultima revisione: aprile 2026

Sito sviluppato e mantenuto da Luca Bigoni.
