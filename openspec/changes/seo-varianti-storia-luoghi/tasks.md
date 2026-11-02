## 1. WikilocExporter

- [ ] 1.1 In `Program.cs` saltare sempre gli ID presenti in `Data/hikes-escluse` e `Data/hikes-varianti`, indipendentemente da `SkipExistingHikes`
- [ ] 1.2 Con `--url=` su un ID in `hikes-varianti` scrivere lì il JSON aggiornato, non in `Data/hikes`
- [ ] 1.3 Aggiungere a `HikeJsonWriter.PreservedFields`: `varianti`, `slug`, `come_arrivare`, `cenno_storico`, `fonti`, `descrizione_rivista`
- [ ] 1.4 Conservare `descrizione_html` quando `descrizione_rivista` è `true`
- [ ] 1.5 Aggiornare il README (sezione "Aggiungere o aggiornare un'escursione")

## 2. Varianti nel sito

- [ ] 2.1 `Hike`: campi `Varianti` (ID nel JSON, oggetti caricati), `Slug` esplicito opzionale
- [ ] 2.2 `HikeRepository`: caricare `Data/hikes-varianti`, agganciarle alla principale ordinate per data, slug esplicito prima di `UniqueSlug`
- [ ] 2.3 Statistiche della home: km e dislivello totali con le varianti, conteggio e record senza
- [ ] 2.4 `Dettaglio.cshtml`: sezione "Le volte che l'ho fatta" (data, km, dislivello, tipo, durata, GPX; etichette andata/ritorno)
- [ ] 2.5 Mappa con più tracce colorate e legenda; foto delle varianti in galleria dopo quelle della principale
- [ ] 2.6 Calcolo `luoghi.json`: considerare le tracce delle varianti e attribuire i luoghi alla principale

## 3. Unione dei gruppi

- [ ] 3.1 Annotare gli slug attuali delle 13 varianti e della principale di Sestola dal sito in esecuzione
- [ ] 3.2 Sestola: principale `87617115`, `slug: lago-della-ninfa-da-sestola`, variante `87617166`
- [ ] 3.3 Verruca: principale `96964761`, varianti `87617356`, `87617334`
- [ ] 3.4 Calambrone: principale `145307121`, varianti `88152101`, `87617278`, `99597113`, `88152122`
- [ ] 3.5 Colognole: principale `87479081`, varianti `87617293`, `87617310`, `87617317`, `87617322`, `87617255`
- [ ] 3.6 Ferrata di Buti: principale `253262610`, varianti `218691561`, `210756323`
- [ ] 3.7 Spostare i JSON delle varianti in `Data/hikes-varianti/` e aggiungere i 14 redirect in `Data/redirects.json`; aggiornare le righe esistenti che puntano a slug diventati varianti
- [ ] 3.8 Riscrivere `titolo_seo`, `meta_descrizione` e descrizione delle 5 principali perché parlino dell'escursione nel suo insieme (per Sestola: "Lago della Ninfa da Sestola: percorso, distanza e parcheggio")

## 4. Come arrivare e cenno storico (template)

- [ ] 4.1 `Hike`: campi `ComeArrivare`, `CennoStorico`, `Fonti`, `DescrizioneRivista`
- [ ] 4.2 Leggere il primo punto del GPX al caricamento e scrivere coordinate e link Google Maps nell'HTML della sezione "Come arrivare e parcheggio" (via l'`href="#"`)
- [ ] 4.3 Sezione "Cenno storico" con "Fonti" sotto, solo se il campo è valorizzato
- [ ] 4.4 Supporto ai nuovi campi nel MigrationEditor

## 5. Contenuti, a blocchi

- [ ] 5.1 Blocco 1, pagine con impressioni: Lago della Ninfa da Sestola, Lago della Gherardesca, Serrai di Sottoguda (info pratiche verificate: accesso, parcheggio, periodo), Cascata dell'Acquapendente e Rifugio del Freo, Cascate del Dardagna dalla Madonna dell'Acero (anche stagione migliore/foliage), Cala Violina, Grotte Gialle di Bibbona
- [ ] 5.2 Blocco 2: le altre 4 pagine principali dei gruppi di varianti
- [ ] 5.3 Blocchi successivi: circa 20 schede per zona, partendo dalle zone con più impressioni
- [ ] 5.4 Per ogni scheda: ricerca online, `come_arrivare`, `cenno_storico` (max 100 parole, solo fatti con fonte, vuoto se non c'è niente di solido), `fonti`, H3 specifiche al posto di quelle standard, tolta la vecchia sezione "Come arrivare", `descrizione_rivista: true`

## 6. Pagine luogo

- [ ] 6.1 Modello e caricamento di `Data/luoghi-schede/*.json` agganciati a `luoghi.json` via `osm_id`
- [ ] 6.2 Pagina `/{tipo}/{slug}`: H1, testo, quota/parco/zona, mappa, card delle escursioni collegate, fonti, link al sito ufficiale
- [ ] 6.3 Link dalla riga del luogo in `/{tipo}` e dal riquadro "Sul percorso"; URL in sitemap; pagine nell'export statico
- [ ] 6.4 Ricerca online e scheda del Rifugio del Freo (dati stabili, fonti, sito ufficiale)
- [ ] 6.5 `/escursioni`: testo introduttivo vero (zone, tipi di percorso) per competere su "escursioni Toscana"

## 7. Test

- [ ] 7.1 Ogni variante ha un 301 diretto alla principale; nessuna catena in `redirects.json`
- [ ] 7.2 Varianti assenti da sitemap, ricerca, RSS, `llms.txt`; nessuna variante orfana
- [ ] 7.3 Nessun `href="#"` sul link Google Maps delle schede con GPX
- [ ] 7.4 Cenno storico: fonti presenti e `https`, massimo 100 parole
- [ ] 7.5 Schede riviste senza intestazioni standard
- [ ] 7.6 Pagine luogo: 200, `osm_id` valido, fonti non vuote, in sitemap
- [ ] 7.7 Test dell'exporter: skip di esclusi e varianti con `SkipExistingHikes: false`, campi conservati
- [ ] 7.8 Aggiornare le baseline dei test grafici dopo i cambi di layout

## 8. Dopo il deploy (manuale)

- [ ] 8.1 Search Console: "Convalida correzione" su ogni problema di indicizzazione
- [ ] 8.2 Verificare con una richiesta HTTP che `www.` faccia 301 diretto alla versione senza www
- [ ] 8.3 Dopo 4-6 settimane rifare l'export di Search Console e confrontare le pagine indicizzate (135 a fine ottobre 2026)
