# Rilasci e andamento SEO

Questa cartella serve a capire come cambia il sito nel tempo: cosa si rilascia ogni volta, come cambiano i contenuti e cosa ne pensano Google e Bing.

| Cosa | Dove |
|---|---|
| Andamento nel tempo, generato in automatico | [STORICO.md](STORICO.md) |
| Una nota per ogni rilascio | [rilasci/](rilasci/) |
| Fotografie dei contenuti (JSON, una per data e branch) | [fotografie/](fotografie/) |
| Export di Google Search Console e Bing, una cartella per data | [search-console/](search-console/) |

Lo script che fa tutto è [scripts/seo_storico.py](../../scripts/seo_storico.py); va lanciato dalla cartella del repository.

## Regola d'oro

Su `master` si va **solo con un rilascio**, cioè seguendo la procedura qui sotto. Render pubblica ogni push su `master`, quindi una modifica fuori procedura si mescola ai numeri e rende i confronti inaffidabili.

## Procedura per ogni rilascio

### Mentre si lavora su `dev`

Aggiorna ogni tanto la nota del prossimo rilascio. Lo script riscrive solo la parte generata (commit, schede toccate, metriche) e lascia intatte le parti scritte a mano:

```bash
python scripts/seo_storico.py nota R1-2026-12 --da master --a dev
```

Nella nota compila a mano "Cosa rilasciamo e perché" e "Cosa ci aspettiamo": dopo, servono a capire se il rilascio ha funzionato.

### Il giorno del rilascio

1. **Export dei motori di ricerca, prima del merge**, in `docs/seo/search-console/AAAA-MM-GG/` (vedi sotto).
2. **Fotografia di ciò che è online prima del rilascio:**
   `python scripts/seo_storico.py foto --ref master`
3. **Nota aggiornata per l'ultima volta:**
   `python scripts/seo_storico.py nota R1-2026-12 --da master --a dev`
   Compila anche la data del rilascio.
4. **Test, poi merge e tag:**
   ```bash
   dotnet test Escursioni.Tests
   git checkout master && git merge dev && git push origin master
   git tag R1-2026-12 && git push origin R1-2026-12
   ```
5. **Fotografia dopo il rilascio:** `python scripts/seo_storico.py foto --ref master --etichetta master-rilasciato`
6. In Search Console invia di nuovo la sitemap e chiedi l'indicizzazione delle pagine principali.
7. `python scripts/seo_storico.py storico`, poi commit di tutto su `dev`.

### Dopo il rilascio

- **A +4 e +8 settimane:** nuovi export in una cartella con la data del giorno, poi `python scripts/seo_storico.py storico`.
- **Esito nella nota:** guarda STORICO.md e scrivi nella sezione "Esito" della nota cosa è successo rispetto a quello che ci si aspettava.

Tra un rilascio e l'altro conviene comunque fare un export al mese, per avere una linea continua.

## Cosa esportare

Crea `docs/seo/search-console/AAAA-MM-GG/` con queste sottocartelle. Puoi mettere direttamente gli zip scaricati: lo script li apre da solo.

| Sottocartella | Da dove | Note |
|---|---|---|
| `google-prestazioni/` | [Search Console → Prestazioni](https://search.google.com/search-console/performance/search-analytics) → Esporta | Usa sempre **Ultimi 6 mesi**, così pagine e query sono confrontabili |
| `google-copertura/` | [Search Console → Indicizzazione → Pagine](https://search.google.com/search-console/index) → Esporta | Pagine indicizzate e motivi di esclusione |
| `google-ai/` | Search Console → Prestazioni → funzionalità di IA generativa → Esporta | Impressioni nelle risposte IA di Google |
| `bing/` | [Bing Webmaster Tools](https://www.bing.com/webmasters/searchperf) → prestazioni di ricerca, prestazioni IA, sitemap → Esporta | I tre CSV così come li scarichi |

Clic, impressioni, CTR e posizione sono calcolati dai dati giornalieri sugli **ultimi 28 giorni**, quindi i valori sono confrontabili da un export all'altro qualunque sia il giorno dell'export.
