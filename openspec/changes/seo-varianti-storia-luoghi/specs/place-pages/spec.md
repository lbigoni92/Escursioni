## ADDED Requirements

### Requirement: I luoghi con una scheda DEVONO avere una pagina propria
Per ogni file in `Data/luoghi-schede/` il sistema DEVE generare la pagina `/{tipo}/{slug}` (es. `/rifugi/rifugio-del-freo`).

#### Scenario: Pagina del luogo
- **WHEN** esiste `Data/luoghi-schede/rifugio-del-freo.json` agganciato a un luogo di `luoghi.json` tramite `osm_id`
- **THEN** `/rifugi/rifugio-del-freo` risponde 200 con H1 col nome del luogo, `titolo_seo` come title, `meta_descrizione`, canonical, testo, quota/parco/zona da `luoghi.json`, mappa e card di tutte le escursioni che passano dal luogo

#### Scenario: Escursioni collegate
- **WHEN** un'escursione (principale o con una variante) passa dal luogo secondo `luoghi.json`
- **THEN** la sua card compare nella pagina del luogo, una volta sola

#### Scenario: Luogo senza scheda
- **WHEN** un luogo di `luoghi.json` non ha un file in `Data/luoghi-schede/`
- **THEN** non viene generata nessuna pagina e il luogo resta solo nell'elenco del suo tipo

#### Scenario: osm_id non trovato
- **WHEN** l'`osm_id` di una scheda non corrisponde a nessun luogo di `luoghi.json`
- **THEN** un test fallisce indicando la scheda

### Requirement: Le pagine luogo DEVONO citare le fonti
Ogni pagina luogo DEVE terminare con l'elenco delle fonti usate per il testo e, se presente, con il link al sito ufficiale per orari e contatti.

#### Scenario: Fonti
- **WHEN** viene generata una pagina luogo
- **THEN** in fondo c'è "Fonti" con almeno un link esterno; un test fallisce se `fonti` è vuoto

#### Scenario: Sito ufficiale
- **WHEN** la scheda contiene `sito_ufficiale`
- **THEN** la pagina mostra "Orari e contatti aggiornati sul sito ufficiale" con il link, e non riporta orari o telefoni nel testo

### Requirement: Le pagine luogo DEVONO essere raggiungibili e in sitemap
Il sistema DEVE linkare ogni pagina luogo dall'elenco del suo tipo e dal riquadro "Sul percorso" delle schede, e includerla nella sitemap.

#### Scenario: Link interni
- **WHEN** un luogo ha una pagina
- **THEN** il suo nome in `/{tipo}` e nel riquadro "Sul percorso" delle schede è un link a `/{tipo}/{slug}`

#### Scenario: Sitemap
- **WHEN** viene generata la sitemap
- **THEN** contiene l'URL di ogni pagina luogo
