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
  160859471,
  'Tirrenia -Passeggiata domenicale',
  'Sempre bello fare un gito in questi boschetti facili adatti anche in bici. La Tenuta di Tombolo — detta anche Pineta del Tombolo, ma da non confondersi con l''omonima Pineta del Tombolo situata in provincia di Grosseto — è un''area naturale protetta che fa parte del Parco naturale di Migliarino, San Rossore e Massaciuccoli, istituito il 13 dicembre 1979. Costituisce una delle sette Tenute o Fattorie storiche che compongono il parco e deriva il suo nome dal latino tumulus che significa rilievo del terreno, ad indicare come questo territorio abbia origine da cordoni di dune costiere generate da i sedimenti fluviali. Fauna Nell''ambiente dunale sono presenti circa 230 specie di coleotteri, per la maggior parte detritivori, come ad esempio la pulce di mare (Talitrus saltator) e l''isopode (Tylos europaeus), i quali sono consumatori primari e costituiscono la base di complesse reti alimentari che coinvolgono diversi invertebrati. Tra i rettili è comune la lucertola campestre (Podarcis sicula campestris) e nei canali del bosco si trovano consistenti popolazioni di testuggini acquatiche (Emys orbicularis) e bisce d''acqua (Natrix natrix). Ai margini dei boschi è presente la vipera (Vipera aspis). Gli uccelli presenti tutto l''anno sono: il picchio rosso maggiore (Dendrocopos major), il picchio verde (Picus viridis), il picchio muratore (Sitta europaea) e un buon numero di colombacci (Columba palumbus); nel periodo invernale si trova la beccaccia (Scolopax rusticola). Le zone litoranee sono un ambiente idoneo per gli uccelli migratori che, durante il periodo dello svernamento, hanno possibilità di riposo sulla battigia. È stata segnalata la presenza dell''istrice (Hystrix cristata). Numerose le presenze di ghiri (Glis glis) e scoiattoli (Sciurus vulgaris), chinghiali, conigli selvatici e volpi rosse.',
  'Sempre bello fare un gito in questi boschetti facili adatti anche in bici. <br> <br> <br>La Tenuta di Tombolo — detta anche Pineta del Tombolo, ma da non confondersi con l''omonima Pineta del Tombolo situata in provincia di Grosseto — è un''area naturale protetta che fa parte del Parco naturale di Migliarino, San Rossore e Massaciuccoli, istituito il 13 dicembre 1979. Costituisce una delle sette Tenute o Fattorie storiche che compongono il parco e deriva il suo nome dal latino tumulus che significa rilievo del terreno, ad indicare come questo territorio abbia origine da cordoni di dune costiere generate da i sedimenti fluviali. <br> <br> <br>Fauna <br>Nell''ambiente dunale sono presenti circa 230 specie di coleotteri, per la maggior parte detritivori, come ad esempio la pulce di mare (Talitrus saltator) e l''isopode (Tylos europaeus), i quali sono consumatori primari e costituiscono la base di complesse reti alimentari che coinvolgono diversi invertebrati. <br> <br>Tra i rettili è comune la lucertola campestre (Podarcis sicula campestris) e nei canali del bosco si trovano consistenti popolazioni di testuggini acquatiche (Emys orbicularis) e bisce d''acqua (Natrix natrix). Ai margini dei boschi è presente la vipera (Vipera aspis). <br> <br>Gli uccelli presenti tutto l''anno sono: il picchio rosso maggiore (Dendrocopos major), il picchio verde (Picus viridis), il picchio muratore (Sitta europaea) e un buon numero di colombacci (Columba palumbus); nel periodo invernale si trova la beccaccia (Scolopax rusticola). Le zone litoranee sono un ambiente idoneo per gli uccelli migratori che, durante il periodo dello svernamento, hanno possibilità di riposo sulla battigia. <br> <br>È stata segnalata la presenza dell''istrice (Hystrix cristata). Numerose le presenze di ghiri (Glis glis) e scoiattoli (Sciurus vulgaris), chinghiali, conigli selvatici e volpi rosse.',
  'Tutte le Attività e Paesi',
  4.08,
  7,
  27,
  50,
  34,
  '00:34',
  34,
  '00:34',
  501,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Marina di Pisa-Tirrenia-Calambrone',
  '2024-02-01',
  '2024-02-01',
  '2024-02-11 00:00:00',
  '2024-02-11 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/tirrenia-passeggiata-domenicale-160859471',
  NULL,
  43.617588,
  10.303233,
  'POINT(10.303233 43.617588)',
  'fad20c58c98faacaa1bc9a69f19cf3162ea75abb271da246818ceed35dde015d',
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
VALUES (160859471, 'https://it.wikiloc.com/percorsi-escursionismo/tirrenia-passeggiata-domenicale-160859471', NOW(), 'fad20c58c98faacaa1bc9a69f19cf3162ea75abb271da246818ceed35dde015d')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 160859471);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/160859471/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 160859471;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/160859471/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 160859471;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/160859471/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 160859471;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/160859471/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 160859471;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/160859471/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 160859471;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/160859471/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 160859471;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/160859471/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 160859471;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/160859471/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 160859471;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/160859471/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 160859471;

COMMIT;
