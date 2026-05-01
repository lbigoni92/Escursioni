BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87378618,
  'Mulinaccio di Scandicci',
  'Percorso molto bello da fare in primavera o autunno sconsigli l''estate, s''è completamente esposti al caldo e al sole. Non vi sono fontanelle partite con 3l d''acqua sono tanti chilometri. Passeggiare in mezzo alle vigne e arrivare al Mulinaccio è un percorso tutto toscano che consiglio a chiunque, è davvero spettacolare; non vi sono particolari punti pericolosi lungo il tragitto. Occhio solamente al caldo se l''affrontate d''estate.',
  '<h2 id="escursione-mulinaccio-di-scandicci">Escursione al Mulinaccio di Scandicci</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>
<p>Il punto di partenza per l''escursione al Mulinaccio di Scandicci è facilmente raggiungibile in auto. Provvigliate fino a raggiungere il piccolo paese di Vigliano, nel cuore della Val di Greve. Da qui, il sentiero inizia direttamente dal parcheggio. È una bella base per iniziare questo meraviglioso trekking!</p>

<h3 id="il-percorso-passo-per-passo">Il percorso passo per passo</h3>
<p>Questo sentiero è un''escursione semplice e piacevole, ideale per chi cerca un''escursione in montagna senza particolari difficoltà. Iniziate dal punto di partenza e seguite il sentiero che si snoda tra le vigne, immerso nel verde toscano. Il percorso è prevalentemente in salita, ma ben tracciato, e vi condurrà gradualmente verso il Mulinaccio. Godetevi il panorama mozzafiato sulla Val di Greve e sulla campagna circostante. L''escursione di circa 24 km è un''ottima occasione per ammirare la bellezza della Toscana!</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>
<p>L''escursione al Mulinaccio di Scandicci presenta una difficoltà **Media**. Il dislivello di 658 metri richiede una buona preparazione fisica, ma il sentiero è ben tenuto e non presenta ostacoli particolari. È consigliata l''escursione in primavera o autunno, quando le temperature sono più miti e il sole non è troppo intenso. Durante l''estate, il percorso può risultare troppo caldo e esposto, a causa della mancanza di ombra e delle fontanelle.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>
<p>
    Per facilitare il vostro trekking, vi offriamo una traccia GPS della zona. Ricordatevi di scaricare la traccia sul vostro dispositivo GPS o sulla vostra app di escursionismo. Questo sentiero è un''escursione **solo andata**.
</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul>
    <li><b>Distanza:</b> Circa 24.31 km (andata)</li>
    <li><b>Dislivello:</b> Circa 658 metri</li>
    <li><b>Difficoltà:</b> Medio</li>
    <li><b>Periodo consigliato:</b> Primavera, Estate, Autunno</li>
    <li><b>Punto di partenza:</b> Parcheggio a Vigliano, Toscana</li>
    <li><b>Comune:</b> Vigliano, Toscana</li>
    <li><b>Tipo di sentiero:</b> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  24.31,
  658,
  91,
  394,
  545,
  '8:28',
  441,
  '7:21',
  7026,
  'Medio',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Vigliano',
  '2021-06-01',
  '2021-06-01',
  '2021-10-25 00:00:00',
  '2021-10-25 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/mulinaccio-di-scandicci-con-lupus-in-trekking-87378618',
  NULL,
  43.743743,
  11.135846,
  'POINT(11.135846 43.743743)',
  '503f2a08fd7ae9d2972ba55862d1f78b911ab159339242003e5abf9d9d5eab8d',
  'Escursione Mulinaccio di Scandicci: percorso di 24km in Toscana (Vigliano) con +658m di dislivello. Trek facile e panoramico tra le vigne, ideale in primaver...',
  'Mulinaccio di Scandicci: Escursione Toscana da Vigliano (...',
  'Lucchesia e colline toscane',
  NOW(),
  NOW()
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
  meta_descrizione = EXCLUDED.meta_descrizione,
  titolo_seo = EXCLUDED.titolo_seo,
  tag = EXCLUDED.tag,
  updated_at = NOW();

INSERT INTO escursioni.hike_registry (wikiloc_id, url, last_seen_at, hash_contenuti)
VALUES (87378618, 'https://it.wikiloc.com/percorsi-escursionismo/mulinaccio-di-scandicci-con-lupus-in-trekking-87378618', NOW(), '503f2a08fd7ae9d2972ba55862d1f78b911ab159339242003e5abf9d9d5eab8d')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87378618);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87378618/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87378618;

COMMIT;
