## 1. WikilocExporter

- [x] 1.1 In `Program.cs` saltare sempre gli ID presenti in `Data/hikes-escluse` e `Data/hikes-varianti`, indipendentemente da `SkipExistingHikes`
- [x] 1.2 Con `--url=` su un ID in `hikes-varianti` scrivere lì il JSON aggiornato, non in `Data/hikes`
- [x] 1.3 Aggiungere a `HikeJsonWriter.PreservedFields`: `varianti`, `slug`, `come_arrivare`, `cenno_storico`, `fonti`, `descrizione_rivista`
- [x] 1.4 Conservare `descrizione_html` quando `descrizione_rivista` è `true`
- [x] 1.5 Aggiornare il README (dati, varianti, come arrivare/cenno storico, pagine luogo, exporter, avviso che Render non esegue i test)

## 2. Varianti nel sito

- [x] 2.1 `Hike`: campi `Varianti` (ID nel JSON, oggetti caricati), `Slug` esplicito opzionale
- [x] 2.2 `HikeRepository`: caricare `Data/hikes-varianti`, agganciarle alla principale ordinate per data, slug esplicito prima di `UniqueSlug`
- [x] 2.3 Statistiche della home: km e dislivello totali con le varianti (uscite doppie una volta sola), conteggio e record senza
- [x] 2.4 `Dettaglio.cshtml`: sezione "Le volte che l'ho fatta" (data, km, dislivello, tipo, durata, GPX; etichette andata/ritorno)
- [x] 2.5 Mappa con più tracce colorate e legenda; foto delle varianti in galleria dopo quelle della principale
- [x] 2.6 Calcolo `luoghi.json`: considerare le tracce delle varianti e attribuire i luoghi alla principale

## 3. Unione dei gruppi

- [x] 3.1 Annotare gli slug attuali delle 13 varianti e della principale di Sestola dal sito in esecuzione (da `dist/sitemap.xml`; verificati in `VariantTests`)
- [x] 3.2 Sestola: principale `87617166` (andata, cambiata rispetto al piano), `slug: lago-della-ninfa-da-sestola`, variante `87617115`
- [x] 3.3 Verruca: principale `96964761`, varianti `87617356`, `87617334`
- [x] 3.4 Calambrone: principale `145307121`, varianti `88152101`, `87617278`, `99597113`, `88152122`
- [x] 3.5 Colognole: principale `87479081`, varianti `87617293`, `87617310`, `87617317`, `87617322`, `87617255`
- [x] 3.6 Ferrata di Buti: principale `253262610`, varianti `218691561`, `210756323`
- [x] 3.7 Spostare i JSON delle varianti in `Data/hikes-varianti/`; redirect generati dai dati (`HikeRepository.Redirects`) invece che in `redirects.json`
- [x] 3.8 Riscrivere `titolo_seo`, `meta_descrizione` e descrizione delle 5 principali

## 4. Come arrivare e cenno storico (template)

- [x] 4.1 `Hike`: campi `ComeArrivare`, `CennoStorico`, `Fonti`, `DescrizioneRivista`
- [x] 4.2 Leggere il primo punto del GPX e scrivere coordinate e link Google Maps nell'HTML della sezione "Come arrivare e parcheggio"
- [x] 4.3 Sezione "Cenno storico" con "Fonti" sotto, solo se il campo è valorizzato
- [x] 4.4 Supporto ai nuovi campi nel MigrationEditor: riquadro "Come arrivare e cenno storico" (con conteggio parole), fonti una per riga, spunta "descrizione rivista"; verificato che rileggere e risalvare tutte le 264 schede non cambi nulla

## 5. Contenuti, a blocchi

- [x] 5.1 Blocco 1, pagine con impressioni (7 schede)
- [x] 5.2 Blocco 2: le altre 4 pagine principali dei gruppi di varianti
- [ ] 5.3 Blocchi successivi: circa 20 schede per zona, partendo dalle zone con più impressioni. **Fatto il blocco 3 (20 schede Alpi Apuane: Corchia, Pania, Tambura, Pisanino, Altissimo, Forato, Procinto, Matanna)**; **fatto il blocco 4 (20 schede invernali: ciaspolate in Appennino e classici bassi di Livorno, Lucchesia, Monti Pisani, Costa degli Etruschi, Sammezzano)**; **fatto il blocco 5 (20 schede invernali: costa livornese, Monti Pisani, Lucchesia, Val di Cecina, Firenze)**; **fatto il blocco 6 (18 schede: Versilia, Maremma, Firenze; unita la Via delle Erbe)**; **fatto il blocco 7 (18 schede: Monti Pisani e Lucchesia; 4 unioni come varianti)**; **fatto il blocco 8 (20 schede: Lucchesia, Elba, Capraia, Suvereto, Monti Livornesi; 2 unioni)**; **fatto il blocco 9 (16 schede: ultime di Livorno; finite le invernali)**; restano 113 schede
- [x] 5.4 Regole per ogni scheda applicate ai blocchi 1 e 2 (Buti senza cenno: nessuna fonte verificabile)

## 6. Pagine luogo

- [x] 6.1 Modello e caricamento di `Data/luoghi-schede/*.json` agganciati a `luoghi.json` via `osm`
- [x] 6.2 Pagina `/{tipo}/{slug}`: H1, testo, quota/parco/zona, mappa, card delle escursioni collegate, fonti, contatti
- [x] 6.3 Link dalla riga del luogo in `/{tipo}` e dal riquadro "Sul percorso"; URL in sitemap; pagine nell'export statico
- [x] 6.4 Ricerca online e scheda del Rifugio del Freo
- [x] 6.5 `/escursioni`: introduzione e guida generate dai dati (numeri, difficoltà, la più alta e una facile per zona, luoghi raggiunti, pagine luogo)

## 7. Test

- [x] 7.1 Ogni variante ha un 301 diretto alla principale; nessuna catena
- [x] 7.2 Varianti assenti da sitemap, ricerca, RSS, `llms.txt`; nessuna variante orfana
- [x] 7.3 Link Google Maps con coordinate nell'HTML di ogni scheda
- [x] 7.4 Cenno storico: fonti presenti e `https`, massimo 100 parole
- [x] 7.5 Schede riviste senza intestazioni standard
- [x] 7.6 Pagine luogo: 200, `osm` valido, fonti non vuote, in sitemap, linkate
- [ ] 7.7 Test dell'exporter (il repo WikilocExporter non ha un progetto di test)
- [ ] 7.8 Aggiornare le baseline dei test grafici dopo i cambi di layout. **Bloccato**: gli UiTests erano già fuori sincrono prima di questa change (baseline mobile a 450 px contro un viewport di 390, slug "forno-la-caporetto…" non più nei dati di prova, errori CORS di Cloudflare Analytics in locale). I test funzionali passano; i confronti grafici vanno rigenerati tutti dopo aver sistemato questi punti

## 8. Dopo il deploy (manuale)

- [ ] 8.1 Search Console: "Convalida correzione" su ogni problema di indicizzazione
- [ ] 8.2 Verificare con una richiesta HTTP che `www.` faccia 301 diretto alla versione senza www
- [ ] 8.3 Dopo 4-6 settimane rifare l'export di Search Console e confrontare le pagine indicizzate (135 a fine ottobre 2026)
