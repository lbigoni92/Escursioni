BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  253262610,
  'Ferrata di buti',
  '410 e i 536 metri di quota in un ambiente boschivo ricco di pini e castagni. Esposta a sud-est e sud-ovest, è percorribile tutto l’anno e offre un itinerario panoramico e ben attrezzato su roccia conglomeratica solida.Il percorso è caratterizzato da numerosi traversi alternati a tratti verticali, con passaggi vari e tecnici che includono camini, spigoli, piccoli strapiombi, cenge e sezioni aeree. Sono presenti anche elementi artificiali come staffe, una scaletta iniziale e un breve ponte sospeso finale. I fittoni numerati lungo il cavo permettono di monitorare facilmente la progressione.Nonostante l’accesso semplice e il dislivello contenuto, la ferrata è impegnativa sia fisicamente che tecnicamente, richiedendo buona preparazione, sicurezza nei movimenti e, in alcuni tratti, forza di braccia ed esperienza.È obbligatorio l’uso di imbraco, casco, kit da ferrata e scarponi; si consiglia inoltre l’utilizzo di guanti e di attrezzatura aggiuntiva per eventuali soste.',
  '<h2>Ferrata di Buti: Trekking e Escursioni nella Montagna Italiana</h2>

<h3>Il Percorso: Un''Avventura sulla Ferrata di Buti</h3>

<p>
La <strong>Ferrata di Buti</strong> è un''esperienza indimenticabile per gli amanti del <strong>trekking</strong> e dell''<strong>escursionismo</strong> in <strong>montagna</strong>. Situata nel cuore del Parco Nazionale d''Abruzzo, Lazio e Molise, questa <strong>sentiero</strong> offre un''opportunità unica per esplorare la selvaggia bellezza della natura italiana.  L''itinerario, con i suoi 410 metri di dislivello e i 536 metri di quota, è un vero e proprio banco di prova per chi cerca una <strong>escursione</strong> impegnativa ma gratificante.
</p>

<h3>Cosa Aspettarsi: Un Percorso Tecnico e Panoramico</h3>

<p>
Preparati ad affrontare un <strong>sentiero</strong> tecnicamente impegnativo, ideale per chi ha già esperienza in <strong>ferrata</strong>.  La <strong>Ferrata di Buti</strong>, con i suoi numerosi traversi, tratti verticali e passaggi vari, presenta sfide sia fisiche che tecniche.  Il percorso, su roccia conglomeratica solida, è esposto a sud-est e sud-ovest, garantendo panorami mozzafiato sulla **montagna** circostante.  Potrai ammirare la ricca flora locale, composta da pini e castagni, e godere di un''esperienza autentica nel cuore della natura italiana.  Questo tipo di <strong>trekking</strong> è perfetto per chi cerca un''avventura in <strong>sentiero</strong>.</p>

<h3>Informazioni Utili: Dettagli per la Tua Escursione</h3>

<ul>
  <li><strong>Difficoltà:</strong> Impegnativa</li>
  <li><strong>Distanza:</strong> Circa 6 km</li>
  <li><strong>Dislivello:</strong> 410 metri</li>
  <li><strong>Tempo di percorrenza:</strong> 3-4 ore</li>
  <li><strong>Periodo migliore:</strong> Tutto l''anno (consigliato in primavera/autunno)</li>
  <li><strong>Luogo:</strong> Parco Nazionale d''Abruzzo, Lazio e Molise - Regione Molise</li>
</ul>

<p>
La <strong>Ferrata di Buti</strong> è un esempio perfetto di come il <strong>trekking</strong> possa offrire un''esperienza completa di scoperta e avventura.  Ricorda che l''accesso è obbligatorio con <strong>imbraco</strong>, <strong>casco</strong>, <strong>kit da ferrata</strong> e <strong>scarponi</strong>.  È fortemente consigliato l''utilizzo di <strong>guanti</strong> e di ulteriore <strong>attrezzatura</strong> per eventuali soste.  La sicurezza è fondamentale: valuta attentamente la tua preparazione e, se necessario, affida la tua <strong>escursione</strong> a una guida alpina esperta.  Esplora il fascino del <strong>trekking</strong> in Italia!
</p>',
  'Tutte le Attività e Paesi',
  0.79,
  72,
  438,
  528,
  25,
  '0:25',
  22,
  '0:22',
  131,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Buti',
  '2026-03-01',
  '2026-03-01',
  '2026-03-07 00:00:00',
  '2026-03-07 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/ferr-di-buti-253262610',
  NULL,
  43.734902,
  10.560046,
  'POINT(10.560046 43.734902)',
  '1b8c26c0819e6aee15ebad876da70821b8a2955675e24504d9b1f8c0f68be61e',
  'Ferrata Buti Toscana: Trekking 410m, difficoltà media. Percorso attrezzato su roccia conglomeratica con camini e spigoli. Info, itinerario e consigli!',
  'Ferrata di Buti: Escursione da Buti (difficoltà media)',
  'Alpi Apuane',
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
VALUES (253262610, 'https://it.wikiloc.com/percorsi-escursionismo/ferr-di-buti-253262610', NOW(), '1b8c26c0819e6aee15ebad876da70821b8a2955675e24504d9b1f8c0f68be61e')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 253262610);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/253262610/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 253262610;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/253262610/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 253262610;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/253262610/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 253262610;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/253262610/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 253262610;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/253262610/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 253262610;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/253262610/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 253262610;

COMMIT;
