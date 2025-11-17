-- initial.sql
CREATE SCHEMA IF NOT EXISTS escursioni;

CREATE TABLE IF NOT EXISTS escursioni.hike (
  id SERIAL PRIMARY KEY,
  wikiloc_id BIGINT UNIQUE NOT NULL,
  titolo TEXT NOT NULL,
  descrizione TEXT,
  descrizione_html TEXT,
  attivita TEXT,
  distanza_km NUMERIC(7,2),
  dislivello_m INT,
  quota_min_m INT,
  quota_max_m INT,
  tempo_min INT,
  tempo_hhmm TEXT,
  tempo_mov_min INT,
  tempo_mov_hhmm TEXT,
  coordinate_count INT,
  difficolta TEXT,
  tipo_giro TEXT,
  superficie TEXT,
  regione TEXT,
  provincia TEXT,
  comune TEXT,
  data_escursione DATE NULL,
  data_registrato DATE NULL,
  data_caricato TIMESTAMP NULL,
  data_pubblicazione TIMESTAMP NULL,
  url TEXT NOT NULL,
  bbox TEXT,
  centroid_lat NUMERIC(9,6),
  centroid_lon NUMERIC(9,6),
  geom TEXT,
  sha256_payload TEXT,
  created_at TIMESTAMP DEFAULT NOW(),
  updated_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS escursioni.hike_media (
  id SERIAL PRIMARY KEY,
  hike_id INT REFERENCES escursioni.hike(id) ON DELETE CASCADE,
  tipo TEXT,
  path_relativo TEXT NOT NULL,
  ordine INT DEFAULT 0,
  larghezza INT NULL,
  altezza INT NULL,
  sha256 TEXT NULL,
  filesize_bytes BIGINT NULL
);

CREATE TABLE IF NOT EXISTS escursioni.hike_tags (
  id SERIAL PRIMARY KEY,
  hike_id INT REFERENCES escursioni.hike(id) ON DELETE CASCADE,
  tag TEXT,
  UNIQUE (hike_id, tag)
);

CREATE TABLE IF NOT EXISTS escursioni.hike_registry (
  wikiloc_id BIGINT PRIMARY KEY,
  url TEXT,
  last_seen_at TIMESTAMP,
  hash_contenuti TEXT
);

CREATE INDEX IF NOT EXISTS idx_hike_provincia ON escursioni.hike(provincia);
CREATE INDEX IF NOT EXISTS idx_hike_regione  ON escursioni.hike(regione);
CREATE INDEX IF NOT EXISTS idx_hike_dataesc  ON escursioni.hike(data_escursione);

