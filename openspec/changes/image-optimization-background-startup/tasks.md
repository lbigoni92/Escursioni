## 1. Setup

- [x] 1.1 Aggiungere flag di configurazione per abilitare/disabilitare il prewarm all'avvio
- [x] 1.2 Verificare che il servizio `ImagePrewarmService` sia registrato come `IHostedService`

## 2. Implementazione background worker

- [x] 2.1 Modificare `ImagePrewarmService` per avviare la scansione immagini subito dopo il boot
- [x] 2.2 Implementare batch processing e logging avanzamento ogni 10%
- [x] 2.3 Gestire errori non bloccanti (log e continua)
- [x] 2.4 Rispettare la configurazione per disabilitare il worker

## 3. Verifica e fallback

- [x] 3.1 Testare che tutte le immagini vengano ottimizzate in background all'avvio
- [x] 3.2 Verificare che il middleware on-demand resti attivo per nuove immagini
- [x] 3.3 Testare la disabilitazione via config/env var
