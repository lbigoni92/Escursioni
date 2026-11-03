## 1. Cascate e pagine per tutti i luoghi

- [x] 1.1 Tipo `cascata` (`/cascate`, 100 m dalla traccia) in `PlaceType` e query Overpass `waterway=waterfall`; cache Overpass v3
- [x] 1.2 Slug per ogni luogo (scheda o nome, omonimi con quota o id OSM) e redirect 301 nome → scheda
- [x] 1.3 Pagina luogo anche senza scheda: descrizione dai dati, "Da dove sono partito", escursioni; `noindex, follow` e fuori sitemap
- [x] 1.4 Elenchi: ogni luogo linka la sua pagina; testo dell'elenco `/cascate`; export statico di tutte le pagine
- [x] 1.5 Test: ogni luogo ha la pagina, robots corretto, sitemap solo con le schede, redirect nome → scheda
- [ ] 1.6 Rigenerare `Data/luoghi.json` con `dotnet run --project Escursioni.Web -- --luoghi --tutte` e committarlo su `dev`.
  Va fatto in locale e non con il workflow `deploy.yml`, per due motivi:
  - al push su `master` il workflow controlla solo le escursioni nuove, senza `--tutte`, quindi non cercherebbe le cascate di quelle esistenti;
  - lanciato a mano, il suo job di deploy ripubblica `master`.

## 2. Schede scritte (descrizione, storia, come arrivare, fonti)

- [ ] 2.1 Rifugi (64)
- [ ] 2.2 Laghi (35)
- [ ] 2.3 Cascate
- [ ] 2.4 Vette con 2 o più escursioni (72)
- [ ] 2.5 Altre vette, se ci sono fonti
