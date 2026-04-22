BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87616854,
  'Capraia Isola - Percorso che s''interruppe per scarpe rotte',
  'Percorso bello, fatto d''estate, molto caratteristico il primo tratto in mezzo alle vecchie abitazioni, fino al km 1.9. Al km2.6 s''arriva al ex penitenziario dell''Isola consiglio di fermarsi in quanto adesso è un allevamento di caprette. In seguito abbiamo proseguito ma appena imboccato il vero sentiero un mia amico ha avuto la sfortuna che gli si scollassero le scarpe e siamo tornati in dieto, ma il percorso è semplice bastava proseguire fino alla baia che distava appena 2/3km. Percorso molto bello ma che sconsiglio d''estate non ci sono alberi, fa caldo e non ci sono fontanelle. Noi finimmo il percorso andando a fare il tuffo a una spiaggia vicino ai traghetti, mare stupendo e bei posti! fatemi sapere la vostra esperienza.',
  '<h2>Capraia Isola - Percorso che s''interruppe per scarpe rotte: Escursione Trekking sull''Isola</h2>

<h3>Il Percorso Trekking sulla Capraia Isola</h3>
<p>
Questo <strong>sentiero di trekking</strong> sulla <strong>Capraia Isola</strong> offre un''esperienza autentica e selvaggia, ideale per <strong>escursionisti</strong> esperti e amanti della <strong>natura</strong>. Il percorso, inizialmente caratteristico, si snoda attraverso le rovine delle vecchie abitazioni, offrendo uno sguardo affascinante sulla storia dell''isola. La <strong>trekking</strong> si intensifica, con tratti impegnativi che richiedono un''adeguata preparazione fisica, per poi appianarsi con la discesa verso la suggestiva baia.
</p>

<h3>Cosa Aspettarsi durante l''Escursione</h3>
<p>
Preparatevi per un''<strong>escursione</strong> impegnativa ma ricca di soddisfazioni, in un ambiente incontaminato e selvaggio. Il <strong>sentiero</strong>, principalmente su terreno roccioso e aspro, richiede scarpe da trekking adatte e un buon paio di zoccoli. La mancanza di alberi e fontanelle rende l''<strong>trekking</strong> particolarmente faticoso, soprattutto durante i mesi estivi. <em>È fondamentale portare molta acqua e cibo a sufficienza</em> per affrontare l''intero percorso.
</p>

<h3>Informazioni Utili per la Trekking</h3>
<ul>
    <li><strong>Distanza Totale:</strong> Circa 2/3 km fino alla baia.</li>
    <li><strong>Difficoltà:</strong> Impegnativo, adatto a escursionisti esperti.</li>
    <li><strong>Punto di Partenza:</strong> Inizio del sentiero vicino alle vecchie abitazioni.</li>
    <li><strong>Punti di Interesse:</strong> Ex penitenziario dell''Isola (attualmente allevamento di caprette), spiaggia vicino ai traghetti.</li>
    <li><strong>Periodo Consigliato:</strong> Primavera o Autunno per evitare il caldo eccessivo e la mancanza d''acqua.</li>
    <li><strong>Consigli:</strong> Porta con te acqua, cibo, protezione solare, cappello e scarpe da trekking adatte. <em>La sfortuna di un amico con le scarpe rotte sottolinea l''importanza di una preparazione accurata per qualsiasi escursione in montagna.</em></li>
</ul>

<p>
Questo <strong>trekking</strong> in <strong>Italia</strong>, sulla <strong>Capraia Isola</strong>, vi regalerà un''esperienza indimenticabile, immersi nella <strong>natura</strong> e nella bellezza selvaggia di questa splendida isola. Non perdete l''occasione di scoprire questo <strong>sentiero di trekking</strong> e di vivere un''<strong>escursione</strong> unica!
</p>',
  'Tutte le Attività e Paesi',
  4.62,
  229,
  18,
  184,
  NULL,
  NULL,
  NULL,
  NULL,
  1278,
  'Facile',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Porto',
  '2020-07-01',
  '2020-07-01',
  '2021-10-29 00:00:00',
  '2021-10-29 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/capraia-isola-percorso-che-sinterruppe-per-scarpe-rotte-87616854',
  NULL,
  43.051089,
  9.835979,
  'POINT(9.835979 43.051089)',
  '93b41048ca243c5cdcd9a851c8b211fb0eef3cc652c9d08af2a5c023a93390e1',
  'Escursione Capraia Isola: facile percorso di 4.6km +229m da Porto, Toscana. Tratto storico, ex penitenziario e ritorno alla spiaggia! Perfetto per un tuffo!',
  'Capraia Isola: Escursione al Baia (Toscana)',
  'Versilia e costa toscana',
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
VALUES (87616854, 'https://it.wikiloc.com/percorsi-escursionismo/capraia-isola-percorso-che-sinterruppe-per-scarpe-rotte-87616854', NOW(), '93b41048ca243c5cdcd9a851c8b211fb0eef3cc652c9d08af2a5c023a93390e1')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87616854);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87616854/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87616854;

COMMIT;
