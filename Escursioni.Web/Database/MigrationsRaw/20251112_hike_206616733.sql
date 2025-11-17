BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita,
  distanza_km, dislivello_m, quota_min_m, quota_max_m,
  tempo_min, tempo_hhmm,
  tempo_mov_min, tempo_mov_hhmm, coordinate_count,
  difficolta, tipo_giro, superficie,
  regione, provincia, comune,
  data_escursione, data_registrato, data_caricato, data_pubblicazione,
  url, bbox, centroid_lat, centroid_lon, geom,
  sha256_payload, created_at, updated_at
)
VALUES (
  206616733,
  'Fontana di Pegaso da Former Roman Catholic Diocese of Bomarzo',
  'Il percorso è semplice facile da seguire anche se forse il biglietto (13€) è un pò caro. - Percorso nel Parco dei Mostri di Bomarzo Il Sentiero del Sacro Bosco di Bomarzo, noto anche come Parco dei Mostri, è un percorso immerso nella natura che si snoda per circa 2 km tra gigantesche sculture in pietra scolpite nel XVI secolo. Il sentiero è ben segnalato e adatto a tutti, con alcuni tratti leggermente in pendenza, ma facilmente percorribili. - Storia del Parco dei Mostri Il Parco dei Mostri di Bomarzo fu commissionato nel 1552 dal principe Pier Francesco Orsini, detto Vicino Orsini, in memoria della sua amata moglie Giulia Farnese. L''architetto Pirro Ligorio, noto per aver completato la Basilica di San Pietro dopo la morte di Michelangelo, fu incaricato della realizzazione del parco. L''intento del Parco non era creare un classico giardino rinascimentale, ma un luogo misterioso e surreale, popolato da figure mitologiche e scene allegoriche, che suscitassero stupore e riflessione. Le sculture in pietra, spesso accompagnate da enigmatiche iscrizioni, sembrano voler trasportare il visitatore in un mondo di sogni e incubi. Dopo la morte di Vicino Orsini, il parco cadde nell’oblio per secoli, fino a essere riscoperto e restaurato nel XX secolo, diventando una delle mete più affascinanti del Lazio. - Le Statue del Parco Il Parco è famoso per le sue sculture enigmatiche in basalto, che raffigurano creature mitologiche, divinità e animali fantastici. Ecco le principali statue che si possono incontrare lungo il percorso: L’Orco: uno dei simboli più famosi del parco, una gigantesca testa mostruosa con la bocca spalancata, dentro cui si può entrare. All’interno è incisa la frase "Ogni pensiero vola". L’Elefante da guerra: ispirato agli elefanti utilizzati da Annibale nelle battaglie, questa scultura raffigura un elefante che porta una torre sul dorso e stritola un soldato con la proboscide. La Casa Pendente: una costruzione volutamente inclinata per dare una sensazione di instabilità e disorientamento, simbolo delle incertezze della vita. Il Drago in lotta con i leoni: una scena di combattimento tra un drago e due leoni, rappresentazione della lotta tra il bene e il male. Nettuno: una grande statua del dio del mare, con una posizione dominante su una vasca d’acqua. Proserpina e Plutone: raffigurazione della leggenda della dea rapita dal dio degli inferi. Cerbero: il cane a tre teste, guardiano degli Inferi nella mitologia greca. Pegaso: il cavallo alato della mitologia greca, simbolo di libertà e ispirazione. Echidna: una figura mitologica metà donna e metà serpente. Il Gigante che squarta il pastore: rappresentazione della forza brutale e del destino ineluttabile. Il Tempio: una struttura più recente rispetto alle altre, costruita per Vignola, moglie di Vicino Orsini.',
  'Il percorso è semplice facile da seguire anche se forse il biglietto (13€) è un pò caro. <br> <br>- Percorso nel Parco dei Mostri di Bomarzo <br>Il Sentiero del Sacro Bosco di Bomarzo, noto anche come Parco dei Mostri, è un percorso immerso nella natura che si snoda per circa 2 km tra gigantesche sculture in pietra scolpite nel XVI secolo. Il sentiero è ben segnalato e adatto a tutti, con alcuni tratti leggermente in pendenza, ma facilmente percorribili. <br>- Storia del Parco dei Mostri <br>Il Parco dei Mostri di Bomarzo fu commissionato nel 1552 dal principe Pier Francesco Orsini, detto Vicino Orsini, in memoria della sua amata moglie Giulia Farnese. L''architetto Pirro Ligorio, noto per aver completato la Basilica di San Pietro dopo la morte di Michelangelo, fu incaricato della realizzazione del parco. <br> <br>L''intento del Parco non era creare un classico giardino rinascimentale, ma un luogo misterioso e surreale, popolato da figure mitologiche e scene allegoriche, che suscitassero stupore e riflessione. Le sculture in pietra, spesso accompagnate da enigmatiche iscrizioni, sembrano voler trasportare il visitatore in un mondo di sogni e incubi. <br> <br>Dopo la morte di Vicino Orsini, il parco cadde nell’oblio per secoli, fino a essere riscoperto e restaurato nel XX secolo, diventando una delle mete più affascinanti del Lazio. <br>- Le Statue del Parco <br>Il Parco è famoso per le sue sculture enigmatiche in basalto, che raffigurano creature mitologiche, divinità e animali fantastici. Ecco le principali statue che si possono incontrare lungo il percorso: <br> <br>L’Orco: uno dei simboli più famosi del parco, una gigantesca testa mostruosa con la bocca spalancata, dentro cui si può entrare. All’interno è incisa la frase "Ogni pensiero vola". <br> <br>L’Elefante da guerra: ispirato agli elefanti utilizzati da Annibale nelle battaglie, questa scultura raffigura un elefante che porta una torre sul dorso e stritola un soldato con la proboscide. <br> <br>La Casa Pendente: una costruzione volutamente inclinata per dare una sensazione di instabilità e disorientamento, simbolo delle incertezze della vita. <br> <br>Il Drago in lotta con i leoni: una scena di combattimento tra un drago e due leoni, rappresentazione della lotta tra il bene e il male. <br> <br>Nettuno: una grande statua del dio del mare, con una posizione dominante su una vasca d’acqua. <br> <br>Proserpina e Plutone: raffigurazione della leggenda della dea rapita dal dio degli inferi. <br> <br>Cerbero: il cane a tre teste, guardiano degli Inferi nella mitologia greca. <br> <br>Pegaso: il cavallo alato della mitologia greca, simbolo di libertà e ispirazione. <br> <br>Echidna: una figura mitologica metà donna e metà serpente. <br> <br>Il Gigante che squarta il pastore: rappresentazione della forza brutale e del destino ineluttabile. <br> <br>Il Tempio: una struttura più recente rispetto alle altre, costruita per Vignola, moglie di Vicino Orsini.',
  'Tutte le Attività e Paesi',
  1.96,
  24,
  161,
  184,
  29,
  '00:29',
  29,
  '00:29',
  297,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Lazio',
  'Former Roman Catholic Diocese of Bomarzo',
  '2025-03-01',
  '2025-03-01',
  '2025-03-29 00:00:00',
  '2025-03-29 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/fontana-di-pegaso-da-former-roman-catholic-diocese-of-bomarzo-206616733',
  NULL,
  42.491062,
  12.246805,
  'POINT(12.246805 42.491062)',
  '2caf736083d6a2128d3bb3af81b758cc5938b382a0a4e26c83cb498a4183313b',
  NOW(), NOW()
)
ON CONFLICT (wikiloc_id) DO UPDATE SET
  titolo = EXCLUDED.titolo,
  descrizione = EXCLUDED.descrizione,
  descrizione_html = EXCLUDED.descrizione_html,
  attivita = EXCLUDED.attivita,
  distanza_km = EXCLUDED.distanza_km,
  dislivello_m = EXCLUDED.dislivello_m,
  quota_min_m = EXCLUDED.quota_min_m,
  quota_max_m = EXCLUDED.quota_max_m,
  tempo_min = EXCLUDED.tempo_min,
  tempo_hhmm = EXCLUDED.tempo_hhmm,
  tempo_mov_min = EXCLUDED.tempo_mov_min,
  tempo_mov_hhmm = EXCLUDED.tempo_mov_hhmm,
  coordinate_count = EXCLUDED.coordinate_count,
  difficolta = EXCLUDED.difficolta,
  tipo_giro = EXCLUDED.tipo_giro,
  superficie = EXCLUDED.superficie,
  regione = EXCLUDED.regione,
  provincia = EXCLUDED.provincia,
  comune = EXCLUDED.comune,
  data_escursione = EXCLUDED.data_escursione,
  data_registrato = EXCLUDED.data_registrato,
  data_caricato = EXCLUDED.data_caricato,
  data_pubblicazione = EXCLUDED.data_pubblicazione,
  url = EXCLUDED.url,
  bbox = EXCLUDED.bbox,
  centroid_lat = EXCLUDED.centroid_lat,
  centroid_lon = EXCLUDED.centroid_lon,
  geom = EXCLUDED.geom,
  sha256_payload = EXCLUDED.sha256_payload,
  updated_at = NOW();

INSERT INTO escursioni.hike_registry (wikiloc_id, url, last_seen_at, hash_contenuti)
VALUES (206616733, 'https://it.wikiloc.com/percorsi-escursionismo/fontana-di-pegaso-da-former-roman-catholic-diocese-of-bomarzo-206616733', NOW(), '2caf736083d6a2128d3bb3af81b758cc5938b382a0a4e26c83cb498a4183313b')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 206616733);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/206616733/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206616733;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/206616733/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206616733;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/206616733/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206616733;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/206616733/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206616733;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/206616733/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206616733;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/206616733/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206616733;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/206616733/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206616733;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/206616733/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206616733;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/206616733/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206616733;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/206616733/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206616733;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/206616733/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206616733;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/206616733/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206616733;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/206616733/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206616733;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/206616733/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206616733;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/206616733/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206616733;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/206616733/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206616733;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/206616733/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206616733;

COMMIT;
