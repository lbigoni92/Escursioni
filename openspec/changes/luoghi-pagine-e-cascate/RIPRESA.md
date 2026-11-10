# Ripresa lavori – luoghi-pagine-e-cascate

Stato salvato la sera del 9 novembre 2026. Si lavora su `dev`. Ultimo commit: `f834f077`. **Lavoro del 9 novembre committato in e346e529.**

**Regole:**
- Niente commit, merge, push o tag, e non proporli: decide Luca.
- Niente su `master` fino al rilascio della prima settimana di dicembre 2026 (procedura in `docs/seo/README.md`).
- Scrivere sempre in italiano.
- Mai prezzi in cifre nelle schede: rimandare alle fonti ufficiali.

## Fatto e committato (8 novembre)

- **Schede luogo:** 263 in `Data/luoghi-schede`, tra vette, laghi, rifugi, cascate e passi, nel commit `f2014569`.
- **SEO e contenuti** (commit `f834f077`):
  - fonti nei dati strutturati (`citation`);
  - tutti i luoghi in `llms.txt`;
  - data "Scheda aggiornata il" e `updated_at` allineato a git;
  - 82 nuovi cenni storici.

## Fatto il 9 novembre, non committato

- **Prezzi:** tolte le cifre da 17 schede, sostituite con "a pagamento" e il rimando al sito ufficiale.
- **Guide di zona** (`Data/zone-guide/{zona}.json`): testo guida in cima a `/escursioni/zona/{zona}`. Prima guida: Garfagnana, "Trekking in Garfagnana". Test: `ZoneGuides_LinksWork_SourcesShown`.
- **Guide tematiche** (`Data/guide/{slug}.json`, pagina `/guide/{slug}`): sono in sitemap, export statico e `llms.txt`. Prima guida: `/guide/ciaspole-abetone`, collegata dalle 4 schede delle ciaspolate. Test: `ThemeGuides_LinksWork_InSitemapAndLlms`.
- **Schede migliorate in base alle ricerche:**
  - Orrido di Botri: accesso, casco, prenotazione;
  - Isola Santa: cosa vedere, parcheggio, bagno;
  - Serrai di Sottoguda: apertura invernale e titolo;
  - Sammezzano: "si può visitare?";
  - Lago di Vagli: svuotamento, sia nella scheda escursione sia nella pagina luogo;
  - Cala Violina: descrizione con la prenotazione;
  - Lago della Ninfa: link al rifugio e al Cimone.
- **Cenni storici ripetuti:** differenziati in 22 schede, così ogni scheda ha un fatto suo. Corretto un errore: la scheda di Sambuca Val di Pesa aveva il cenno della Sambuca livornese.
- **Nuovi cenni storici:** 6, per Celleno, Bomarzo, Castelluccio, Grotte di Pradis, Sambuca Val di Pesa e Salisburgo. **Restano 38 schede senza cenno.**
- **Ricerche, nella cartella `docs/seo`:**
  - `trends-2026-11-09.md`: tutte le ricerche Trends del giorno e le azioni fatte;
  - `mete/schede-per-meta.csv`: raggruppamento delle schede per meta principale, 219 mete;
  - `mete/trends-mete.csv`: volumi Trends di 24 mete, quasi tutte a zero;
  - `mete/bing-volumi.csv`: impressioni Bing di 6 mete, 10 da ripetere;
  - `mete/README.md`: metodo e limiti.
- **Test:** passano tutti gli 86.

## Fatto il 10 novembre, non committato

- **Trends:** 12 mete nuove in `docs/seo/mete/trends-mete.csv`; pagina luogo Passo San Pellegrino con "Come arrivare" e Rifugio Fuciade.
- **Bing:** 8 delle 10 mete senza dati sufficienti; restano Pania della Croce e Rifugio del Freo.
- **Riquadro "Nelle mie guide"** nella scheda escursione: collega ogni escursione alle guide tematiche che la contengono.
- **3 guide nuove:** `/guide/ferrate-toscana`, `/guide/cascate-toscana`, `/guide/escursioni-facili-toscana`. Il test controlla i link di tutte le guide e il rimando dalle schede.
- **Schede luogo brevi:** sotto 60 parole (`PlaceSheet.ParoleMinime`) sono `noindex, follow` e fuori da sitemap e llms.txt (38 schede). Tornano indicizzate da sole quando il testo supera la soglia.
- **14 nuovi cenni storici:** Praga (2), Vienna, Buti (2), Compito, San Bartolomeo a Cune, San Michele alle Formiche, San Cassiano/Prato Fiorito, Rino Pisetta, Anguane, Pian di Novello, Calvana, Santa Luce. **Restano 24 schede senza cenno**, quasi tutte su luoghi con poche fonti affidabili.
- **Titoli a CTR zero:** già sistemati il 3 novembre; le query di Search Console sono troppo poche per altri interventi. Da riguardare con il primo export dopo il rilascio.

## Da fare

1. **Bing Keyword Research** per le 2 mete rimaste (Pania della Croce, Rifugio del Freo) in `docs/seo/mete/bing-volumi.csv`. Va fatto **da Brave**, con l'estensione Claude: nel browser integrato l'accesso non funziona. Una decina di parole per volta, con pause, perché dopo circa 15 richieste Bing blocca.
2. **I 24 cenni storici mancanti:** Sumbra e Arni, Malbacco, Molina, Civago, Sant'Annapelago, giri livornesi minori e altri: luoghi con poche fonti affidabili.
3. **Overpass:** 4 errori su un riquadro; rilanciare `dotnet run --project Escursioni.Web --no-build -- --luoghi`.
4. **Da rileggere (Luca):**
   - le schede con fatti tragici: Forno, Sant'Anna, Cardoso, Cardella;
   - le schede generiche su strutture poco documentate: La Quiete, La Fania, K2, Casa Bastone, Casa del Cloratore;
   - le schede dei passi generate dallo script;
   - le guide nuove (ciaspole, ferrate, cascate, escursioni facili) e i 14 cenni del 10 novembre.
5. **Schede luogo brevi:** arricchire le 38 sotto le 60 parole, a partire da quelle con impressioni.
6. **Prima del rilascio:** aggiornare SixLabors.ImageSharp 3.1.12, che ha vulnerabilità note.
7. **Da fare Luca:** l'export mensile di Search Console ("Ultimi 6 mesi").

## Comandi

```powershell
$env:DOTNET_ROOT = "$env:LOCALAPPDATA\Microsoft\dotnet"; $env:PATH = "$env:DOTNET_ROOT;$env:PATH"
dotnet test Escursioni.Tests
```

L'estrazione blocca la DLL: mentre gira, non si può ricompilare.
