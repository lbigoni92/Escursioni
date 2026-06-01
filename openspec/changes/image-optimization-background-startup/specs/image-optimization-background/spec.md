## ADDED Requirements

### Requirement: Ottimizzazione immagini in background all'avvio
Il sistema DEVE avviare automaticamente, subito dopo il boot, un processo/thread che ottimizza tutte le immagini mancanti (varianti WebP) in background, senza attendere richieste utente.

#### Scenario: Avvio background worker
- **WHEN** l'applicazione viene avviata
- **THEN** viene lanciato un worker che scansiona la cartella immagini e genera tutte le varianti mancanti

#### Scenario: Batch processing e progressivo
- **WHEN** il worker trova molte immagini da ottimizzare
- **THEN** le processa a batch piccoli, loggando l'avanzamento ogni 10%

#### Scenario: Errori non bloccanti
- **WHEN** il worker incontra un file corrotto o non processabile
- **THEN** logga l'errore e continua con le altre immagini

#### Scenario: Fallback on-demand
- **WHEN** una nuova immagine viene caricata dopo il deploy
- **THEN** il middleware di ottimizzazione on-demand resta attivo e genera la variante alla prima richiesta

#### Scenario: Disabilitazione via config
- **WHEN** la feature è disabilitata tramite config/env var
- **THEN** il worker non parte e l'ottimizzazione resta solo on-demand
