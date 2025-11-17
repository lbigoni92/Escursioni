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
  87616811,
  'Buca dei banditi - Percorso Breve',
  'Sentiero semplice e percorribile anche con scarpe da tennis in un paio di punti vi sono numerosi arbusti e rovi, si deve prestare attenzione. non ci sono punti difficili, l''unico punto dove prestare attenzione è al km 2.6 c''è un terrapieno d''appena un metro, ma vi potete aiutare con una corda messa li dal cai. Il percorso è ben evidenziato anche con delle stelle rosse che portano alla grotta. Sulla grotta è possibile individuare una targetta per indicare la storicità del posto',
  'Sentiero semplice e percorribile anche con scarpe da tennis in un paio di punti vi sono numerosi arbusti e rovi, si deve prestare attenzione. <br> <br>non ci sono punti difficili, l''unico punto dove prestare attenzione è al km 2.6 c''è un terrapieno d''appena un metro, ma vi potete aiutare con una corda messa li dal cai. <br> <br>Il percorso è ben evidenziato anche con delle stelle rosse che portano alla grotta. <br> <br>Sulla grotta è possibile individuare una targetta per indicare la storicità del posto',
  'Tutte le Attività e Paesi',
  7.92,
  185,
  161,
  267,
  162,
  '02:42',
  NULL,
  NULL,
  1879,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Castellaccio',
  '2020-07-01',
  '2020-07-01',
  '2021-10-29 00:00:00',
  '2021-10-29 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/buca-dei-banditi-percorso-breve-87616811',
  NULL,
  43.487804,
  10.36382,
  'POINT(10.36382 43.487804)',
  'f23451a2037dba7b71e27a047e345c8c3ebc1d56a1e64b3e5dc35b9f5738d501',
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
VALUES (87616811, 'https://it.wikiloc.com/percorsi-escursionismo/buca-dei-banditi-percorso-breve-87616811', NOW(), 'f23451a2037dba7b71e27a047e345c8c3ebc1d56a1e64b3e5dc35b9f5738d501')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87616811);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87616811/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87616811;

COMMIT;
