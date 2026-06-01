## Why

Attualmente l'ottimizzazione delle immagini (generazione delle varianti WebP) avviene solo al primo accesso alla pagina di dettaglio di una escursione, causando un ritardo visibile all'utente e carico di lavoro on-demand. Questo peggiora la UX e può rallentare la navigazione, soprattutto se molte immagini non sono mai state ottimizzate in precedenza.

## What Changes

- Avvio automatico di un thread/processo in background all'avvio dell'applicazione che ottimizza tutte le immagini mancanti in modo proattivo (offline), senza attendere la prima richiesta utente.
- Le immagini vengono ottimizzate in batch subito dopo il boot, migliorando la reattività delle pagine di dettaglio.
- L'ottimizzazione on-demand resta come fallback per nuove immagini caricate dopo il deploy.

## Capabilities

### New Capabilities
- `image-optimization-background`: Ottimizzazione automatica e proattiva delle immagini in background all'avvio dell'applicazione.

### Modified Capabilities

## Impact

- **Escursioni.Web**: modifica al ciclo di avvio per lanciare il background worker
- **ImagePrewarmService**: nuova logica di avvio anticipato
- **Possibile impatto su risorse**: CPU/disk I/O più elevati all'avvio
- **Nessun breaking change**: fallback on-demand sempre attivo
