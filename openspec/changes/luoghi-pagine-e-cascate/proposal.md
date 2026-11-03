## Why

Luca vuole che ogni monte, rifugio e lago da cui è passato abbia una pagina con descrizione, storia, come arrivare, tutte le sue tracce che ci passano e le fonti delle informazioni. Vuole anche le cascate: un contatore come per gli altri luoghi e una pagina che le elenca, ognuna con escursioni, storia e come arrivare.

Oggi solo 10 luoghi su 502 hanno una pagina; gli altri sono una riga negli elenchi `/vette`, `/rifugi`, `/passi`, `/laghi`. Le cascate non vengono estratte da OpenStreetMap.

## What Changes

1. **Cascate.** Nuovo tipo di luogo `cascata` (`/cascate`), estratto da OpenStreetMap (`waterway=waterfall` con nome) entro 100 m dalla traccia. Contatore in home, voce nel menu ed elenco vengono dai tipi esistenti.
2. **Una pagina per ogni luogo** (`/{tipo}/{slug}`), anche senza scheda scritta:
   - **dati**: quota, zona, parco, coordinate e mappa;
   - **"Da dove sono partito"**: la partenza di ogni escursione, presa da "Come arrivare";
   - **escursioni**: tutte quelle che passano dal luogo.
3. **Indicizzazione.** Le pagine senza scheda sono `noindex, follow` e fuori dalla sitemap, finché la scheda non c'è. Così centinaia di pagine automatiche e corte non peggiorano l'indicizzazione (vedi rilascio R1-2026-12 e `docs/seo/`).
4. **Slug stabili.** Una pagina senza scheda usa lo slug del nome. Se poi la scheda ha uno slug diverso, l'URL del nome fa 301 verso quello della scheda.
5. **Schede scritte a blocchi.** Descrizione, storia con fonti e come arrivare, con le stesse regole delle escursioni: solo fatti verificati, fonti linkate. L'ordine segue il numero di escursioni e le ricerche: prima rifugi, laghi e cascate, poi le vette con più escursioni.

## Capabilities

### Modified Capabilities
- `place-pages`: pagina per ogni luogo, noindex finché manca la scheda; nuovo tipo cascata.
