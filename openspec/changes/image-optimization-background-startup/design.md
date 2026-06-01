## Context

Oggi l'ottimizzazione delle immagini (generazione varianti WebP) avviene solo su richiesta, tramite middleware o background service che interviene al primo accesso a una pagina di dettaglio. Questo comporta:
- Ritardo visibile per l'utente al primo accesso
- Carico di lavoro distribuito nel tempo ma imprevedibile
- Possibile "thundering herd" se più utenti accedono contemporaneamente a immagini non ottimizzate

## Goals / Non-Goals

**Goals:**
- Ottimizzare tutte le immagini mancanti subito dopo l'avvio dell'applicazione
- Migliorare la UX rendendo le pagine di dettaglio sempre reattive
- Mantenere il fallback on-demand per nuove immagini

**Non-Goals:**
- Gestione upload immagini (resta invariata)
- Cambiare il formato delle varianti generate
- Sincronizzazione distribuita su più istanze (si assume deploy singolo)

## Decisions

- **Background worker all'avvio**: Si userà un servizio hosted (`IHostedService`) che parte subito dopo il boot e scansiona ricorsivamente la cartella immagini, generando tutte le varianti mancanti.
- **Priorità bassa**: Il worker girerà con priorità bassa e batch piccoli per non saturare CPU/disk.
- **Progressivo**: Logga avanzamento ogni 10% e gestisce errori senza bloccare il processo.
- **Fallback on-demand**: Il middleware di ottimizzazione resta attivo per coprire immagini nuove o errori temporanei.
- **Configurabilità**: Possibilità di disabilitare il prewarm via config/env var se necessario (es. ambienti di test).

**Alternative considerate:**
- Ottimizzazione solo on-demand (attuale): scarsa UX
- Ottimizzazione solo batch (nessun fallback): rischio immagini mancanti se nuove dopo il deploy
- Job schedulato esterno: overkill per il volume attuale

## Risks / Trade-offs

- [CPU/disk spike all'avvio] → Mitigato con batch piccoli e priorità bassa
- [Deploy multipli] → Se più istanze partono insieme, doppio lavoro (accettabile per ora)
- [Errori su file corrotti] → Loggare e saltare, non bloccare tutto

## Migration Plan

- Deploy con feature flag disabilitato
- Monitorare risorse e log
- Abilitare in produzione dopo verifica

## Open Questions

- Serve una progress bar lato admin?
- Serve un limite massimo di immagini processate per ciclo?
