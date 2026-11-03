# Ripresa lavori – seo-varianti-storia-luoghi

Stato al 3 novembre 2026, sera. Ultimo commit su `dev`: vedi `git log`. Il lavoro si fa su `dev`; viene pubblicato solo ciò che va su `master`.

## In breve

- **Fatto e testato** (83 test verdi in `Escursioni.Tests`):
  - varianti con 301 e correzione del WikilocExporter;
  - sezioni "Come arrivare" e "Cenno storico";
  - pagina del Rifugio del Freo;
  - testi riscritti per 11 schede;
  - README;
  - introduzione di `/escursioni` generata dai dati;
  - nuovi campi modificabili dal MigrationEditor.
- **Controllato a occhio** in locale (screenshot):
  - Sestola, Colognole, Calambrone e Freo;
  - una scheda normale (negli UiTests).
  - Corretti dopo il controllo: la tabella che usciva dal riquadro, la traccia principale che finiva sotto le varianti, il breadcrumb "…Andata".
- **Sito pubblico**: è servito da Render ed è ancora alla versione precedente. Il commit `130dfdf9`, che aveva l'errore 500, non risulta online: `/escursioni/calambrone2` risponde 200 e il nuovo URL di Sestola dà 404. **Render pubblica a ogni push senza eseguire i test**: prima di pushare va lanciato `dotnet test Escursioni.Tests`.
- **Non ancora committato.** Repository Escursioni: tutto quello che segue `130dfdf9`. Repository WikilocExporter: le modifiche sono in stage.

## Come compilare e testare

Docker Desktop è rotto (errore del motore WSL `0xc00000fd`; si ripara con `wsl --shutdown` e riavviando Docker Desktop). Nel frattempo c'è il .NET SDK 10.0.403 in `%LOCALAPPDATA%\Microsoft\dotnet`, non nel PATH:

```powershell
$env:DOTNET_ROOT = "$env:LOCALAPPDATA\Microsoft\dotnet"; $env:PATH = "$env:DOTNET_ROOT;$env:PATH"
dotnet test Escursioni.Tests
```

## Cosa resta

1. **Rileggere i testi delle 11 schede** riscritte partendo dalle tue note Wikiloc (il testo originale è nel campo `descrizione` di ogni JSON):
   - 87617166 Sestola
   - 92463110 Gherardesca
   - 230899301 Sottoguda
   - 168160296 Acquapendente/Freo
   - 227287941 Dardagna
   - 104515816 Cala Violina
   - 184678906 Grotte Gialle
   - 96964761 Verruca
   - 145307121 Calambrone
   - 87479081 Colognole
   - 253262610 Ferrata di Buti
3. **5.3 – Altre schede.**
   - Fatto il blocco 3: 20 schede delle Alpi Apuane.
     - Corchia: 88152083, 182508862, 263440573.
     - Pania: 214180956, 216388114.
     - Tambura 139430408, Pisanino 172151891.
     - Altissimo: 258778198, 233734502, 137118829.
     - Forato: 288243374, 255309309, 87478884, 212184454.
     - Procinto: 115763698, 99419802, 232577182.
     - Matanna: 208649249, 164988284, 87371489.
   - Due schede del Matanna (208649249, 87371489) non hanno cenno storico: non ho trovato un fatto solido e diverso da quelli già usati.
   - Restano 38 schede Apuane e le altre zone, sempre a blocchi di circa 20. Regole: fatti solo con fonte, campo vuoto se non si trova niente, H3 specifiche, `descrizione_rivista: true`, un cenno diverso per ogni scheda.
4. **7.8 – UiTests**: erano già fuori sincrono prima di questo lavoro.
   - Baseline mobile a 450 px contro un viewport di 390.
   - Il test "dettaglio senza foto" usa uno slug non più presente nei dati di prova.
   - Errori CORS di Cloudflare Analytics in locale.
   - Da sistemare prima di rigenerare le baseline.
5. **7.7 – Test dell'exporter**: il repository WikilocExporter non ha un progetto di test.
6. **8.x – Passi manuali**: Search Console e controllo del redirect da www.

## Differenze rispetto al piano

Sono nella sezione "Modifiche in corso d'opera" di `design.md`.
