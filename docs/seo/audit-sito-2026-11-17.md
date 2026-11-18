# Analisi del sito pubblicato – 17 novembre 2026

Scansione di tutte le 757 pagine della sitemap di https://escursionilucabigoni.it (dopo il rilascio R2-2026-11), più 5.236 link interni e 2.603 esterni. Controlli a mano su telefono (375 px).

## Cosa va bene

- Tutte le pagine rispondono 200, nessun link interno rotto, nessun redirect interno, nessuna pagina orfana.
- http → https e www → senza www con 301; pagina inesistente → 404 vero.
- Ogni pagina ha `lang="it"`, title, meta description, canonical uguale all'indirizzo, un solo `<h1>`, `og:image`.
- Nessuna immagine senza `alt` o senza `width`/`height`; CLS misurato 0 sulla home; niente scorrimento orizzontale a 375 px.
- Dati strutturati (campione di 40 pagine) tutti JSON validi: WebSite, Person, BreadcrumbList, Article, TouristTrip, Mountain, Place, Waterfall…
- Nessuna pagina `noindex` nella sitemap; le schede luogo `noindex` (sotto 60 parole) sono linkate ma giustamente fuori sitemap.
- Header di sicurezza presenti (HSTS, nosniff, Referrer-Policy, Permissions-Policy con `geolocation=(self)`).

## Problemi da correggere

### Alta priorità

1. **Slug rovinati per i nomi con lettere accentate straniere**: le lettere tipo ö, ü, á, í diventano trattini.
   - `/vette/karolinenh-he` (Karolinenhöhe), `/vette/m-nchsberg-nord` (Mönchsberg), `/vette/rosenh-gel` (Rosenhügel), `/cascate/margitszigeti-v-zes-s`, `/laghi/m-j-gp-lya-cs-nak-z-t`, `/laghi/v-rosligeti-t`.
   - Sono `noindex`, quindi il danno SEO è piccolo, ma gli indirizzi sono brutti. Correzione: nella funzione che crea lo slug dei luoghi normalizzare (decomposizione Unicode e rimozione dei segni) prima di sostituire i caratteri. Se diventano indicizzabili, fissare prima lo slug nuovo e mettere il redirect dal vecchio.
2. **Link esterni rotti nelle fonti** (le fonti sono la garanzia dei cenni storici: vanno sostituite con pagine vive):
   - 404: `capannori-terraditoscana.org/.../lorenzo-nottolini-aqueduct`, tre pagine `comune.camaiore.lu.it/en/...` (ripari di Candalla, castello di Fibbialla, opifici), `fassa.com/en/routes-trails/san-pellegrino-pass-fuciade`, `visitpistoia.eu/?p=54112`.
   - 410 (rimossa): `visitdolomitibellunesi.com/en/eventi/apertura-invernale-serrai-di-sottoguda`.
   - 500/401: `beniculturali.it/luogo/certosa-monumentale-di-calci`, `catalogo.cultura.gov.it/...0900388965` (da riprovare a mano).
   - Una trentina di link non hanno risposto in tempo alla scansione (italia.it, parcapuane.it, straginazifasciste.it, cai…): probabilmente vivi ma lenti o con blocco anti-bot, da ricontrollare con `audit_coerenza.py`.
   - I link a Wikiloc rispondono 403 solo agli strumenti automatici: non è un problema.
3. **Link non sicuro**: `http://www.comune.roccapietore.bl.it` (la regola chiede solo `https://`).

### Media priorità

4. **Titoli lunghi**: 602 pagine su 757 hanno il `<title>` oltre 60 caratteri e 28 oltre 70 (massimo 77), per via del suffisso " | Escursioni Luca Bigoni" / " | Escursioni" aggiunto da `_Layout.cshtml`. Google li taglia verso 60: il suffisso è la parte che si perde, quindi poco male, ma per le pagine luogo (es. "Rifugio Capanna Piz Fassa: come arrivare e le mie escursioni | Escursioni") viene tagliato anche il testo utile. Proposta: soglia del suffisso a 60 invece di 70 e niente suffisso oltre.
5. **Titolo duplicato**: "Monte Rotondo: da dove salire e le mie escursioni" su `/vette/monte-rotondo-libro-aperto` e `/vette/monte-rotondo-livorno`. Aggiungere la zona o la quota al titolo e un link reciproco.
6. **Meta description troppo lunga**: `/escursioni/zona/val-di-lima` ha 171 caratteri (limite 160): accorciare la descrizione in `TagHelper.cs`.
7. **Zona "Estero" sotto il titolo "Escursioni in Toscana"**: la pagina `/escursioni` e la home parlano di Toscana ma elencano anche Trentino, Veneto, estero. Valutare un sottotitolo "…e fuori regione".

### Bassa priorità

8. **Pagine pesanti**: `/vette` 291 KB di HTML, `/passi` 185 KB, `/mappa` 135 KB. Con la compressione restano accettabili, ma su `/vette` (258 vette) si può valutare un elenco più compatto.
9. **Pagine con poco testo indicizzabili**: `/laghi/setriana`, `/vette/monte-cimone-705`, `/vette/monte-granaio`, `/vette/monte-lischeta` sono le più povere (circa 400 parole totali con menu e piè di pagina). Candidati ad arricchimento.
10. **Bersagli tattili al limite**: in home "Vedi tutte →", "Guida alle zone", "Tutte le 258 vette" sono alti esattamente 24 px: a norma, ma piccoli per un dito. Più margine aiuterebbe.
11. **Header**: manca una `Content-Security-Policy`; `Access-Control-Allow-Origin: *` sulle pagine HTML non serve (è il default di Cloudflare Pages, si può togliere in `_headers`).
12. Leaflet viene da `unpkg.com` e leaflet-gpx da `cdnjs`: due domini esterni in più; con SRI è sicuro, ma ospitarli sul sito toglie due connessioni e una dipendenza.

## Correzioni del 18 novembre (punti 1-3, link verificati dal browser)

- Slug dei luoghi: `PlaceRepository.MakeSlug` traslittera gli accenti (ö→o, ß→ss…); lo slug delle escursioni resta com'era. Rinominate 12 schede (tra cui `piz-boe`, `monte-brusa`, `forcella-dai-ciamorces`, `monte-nome-del-gesu`, `karolinenhohe`); i vecchi indirizzi fanno 301 verso i nuovi. Test aggiunti.
- Fonti sostituite: acquedotto Nottolini (nuova pagina di Capannori), Certosa di Calci (cultura.gov.it), Alta Via dei Parchi tappa 8 (spostata in `old-stages`, 24 schede), Parco Apuane (`parcapuane.toscana.it`: il vecchio dominio ha il certificato non valido), Libro Aperto (abetone.com, 7 schede), Casa Bastone (Visit Tuscany: pratoturismo.it ha il certificato scaduto), ripari di Candalla (copia archiviata della pagina del Comune).
- Fonti tolte perché morte e già coperte da altre fonti: catalogo.cultura.gov.it (403 anche dal browser), Visit Dolomiti Bellunesi (410), fassa.com in inglese (404).
- Testi senza più una fonte verificabile: tolto "dalla valle della Lima" dal Libro Aperto; la frase sui mulini di Candalla ridotta a ciò che dice SiViaggia; tolto il cenno storico del castello di Fibbialla (scheda 135962013), perché il Comune non ha più la pagina e non c'è una copia archiviata.
- Rocca Pietore in `https://`.
- Verificati vivi dal browser: italia.it, straginazifasciste.it, cai.mo.it, deims.org, magicoveneto, vicopisanoturismo, army.mil, goticatoscana, inthenet, via-ferrata.de, mining.com, cailucca. Touring Club (abetone-cutigliano, suvereto) dava errore 500/504 del server, Lizzano funziona: errore temporaneo, da ricontrollare. Non aperto: appenninoparco.it (accesso negato dal browser).

## Come è stata fatta

Script Python (scansione della sitemap, controllo di title, description, canonical, robots, h1, immagini, JSON-LD, link interni ed esterni), più controlli nel browser integrato a 375 px. I timeout della scansione sulle 5 pagine `/passi/sella-roccandagia`, `/passi/foce-cisa`, `/passi/passo-croce`, `/passi/callare-di-matanna`, `/escursioni/collesalvetti` sono stati ricontrollati: rispondono 200.
