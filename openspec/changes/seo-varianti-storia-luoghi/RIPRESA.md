# Ripresa lavori – seo-varianti-storia-luoghi

Stato al 3 novembre 2026, sera. Ultimo commit su `dev`: vedi `git log`. Il lavoro si fa su `dev`; viene pubblicato solo ciò che va su `master`.

## In breve

- **Fatto e testato** (83 test verdi in `Escursioni.Tests`):
  - varianti con 301 e correzione del WikilocExporter;
  - sezioni "Come arrivare" e "Cenno storico";
  - pagina del Rifugio del Freo;
  - testi riscritti per 236 schede (blocchi 1-14);
  - README;
  - introduzione di `/escursioni` generata dai dati;
  - nuovi campi modificabili dal MigrationEditor.
- **Controllato a occhio** in locale (screenshot):
  - Sestola, Colognole, Calambrone e Freo;
  - una scheda normale (negli UiTests).
  - Corretti dopo il controllo: la tabella che usciva dal riquadro, la traccia principale che finiva sotto le varianti, il breadcrumb "…Andata".
- **Sito pubblico**: è servito da Render ed è ancora alla versione precedente. Il commit `130dfdf9`, che aveva l'errore 500, non risulta online: `/escursioni/calambrone2` risponde 200 e il nuovo URL di Sestola dà 404. **Render pubblica a ogni push senza eseguire i test**: prima di pushare va lanciato `dotnet test Escursioni.Tests`.
- **Committato e pushato su `dev`** blocco per blocco (non su `master`).

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
2. **5.3 – Altre schede.**
   - Fatto il blocco 3: 20 schede delle Alpi Apuane.
     - Corchia: 88152083, 182508862, 263440573.
     - Pania: 214180956, 216388114.
     - Tambura 139430408, Pisanino 172151891.
     - Altissimo: 258778198, 233734502, 137118829.
     - Forato: 288243374, 255309309, 87478884, 212184454.
     - Procinto: 115763698, 99419802, 232577182.
     - Matanna: 208649249, 164988284, 87371489.
   - Due schede del Matanna (208649249, 87371489) non hanno cenno storico: non ho trovato un fatto solido e diverso da quelli già usati.
   - Fatto il blocco 4: 20 schede da fare d'inverno.
     - Ciaspolate: Lago Santo Modenese 249084065, Casetta di Lapo 196918402, Lago Scaffaiolo 204197595, Lago Nero 163375758.
     - Lucchesia: Camelieto 162278392, Parole d'oro 92978992, Quercia delle Streghe 93383878.
     - Monti Pisani: Certosa di Calci 245402608.
     - Livorno: Terrazza Mascagni 92602331, Quattro Mori 92547592, Castellaccio 87372464, Sentiero del Pellegrino 87478911, Infernaccio 123884538 (senza cenno: nessuna fonte storica).
     - Costa degli Etruschi: Populonia 122247783 e 91657229, Castagneto 125727727, San Silvestro 190572766.
     - Entroterra: Sasso Pisano 124574099, San Vivaldo 197643085, Sammezzano 247357749.
   - Fatto il blocco 5: altre 20 schede invernali.
     - Costa livornese: Ardenza 92778135, Tombolo 160859471, Tomboli di Cecina 157143664, Punta Falcone 91571972, Sambuca 121406300, Collesalvetti 161846411.
     - Monti Pisani: Passo di Dante 252374519, Spelonca 94515950, Mirteto 126197856, Faeta da Vorno 90605819, Monte Serra e Vega 10 158070505.
     - Lucchesia e Vecchiano: Santa Maria in Castello 156445141, Legnaio in notturna 87617243, Pizzorne 93932142.
     - Val di Cecina e colline: Grotta dei Banditi 95854305, Pozzo della Campana 199207459, Strolla 200144675, Pietracassia 161387879, Parco Caselli 123535150.
     - Firenze 95117629.
   - Senza cenno storico, perché non ho trovato fonti: Collesalvetti, Faeta da Vorno, Legnaio in notturna, Grotta dei Banditi, Pozzo della Campana.
   - Fatto il blocco 6: 18 schede invernali.
     - Versilia, Massaciuccoli e San Rossore: 150085806, 175848151 (unita alla Via delle Erbe: varianti 219150059 e 271597191), 87478832, 100360380, 89812063, 133785834, 89289628, 150464902.
     - Maremma: 104293519, 136252249, 104410604, 136419434, 87617094, 104346383, 104216997.
     - Firenze e dintorni: 192547578, 97381391, 132731789.
   - Fatto il blocco 7: 18 schede invernali.
     - Monti Pisani: 87479120, 139784387, 142530536, 87320187, 87371988, 137174146, 153503172, 173951737, 173718340, 88745714.
     - Lucchesia e colline: 100430333, 101451357, 261295859, 241205825, 104200262, 138768881, 228267858, 87378618.
     - Unite come varianti, con 301 automatico: 87617225 → 87479120 (stesso caricamento), 135150055 → 173951737 (Caprona), 87376066 → 138768881 (Masso delle Fanciulle), 87479024 → 87617243 (Legnaio, stessi dati).
   - Fatto il blocco 8: 20 schede invernali.
     - Lucchesia e colline: Monte Acuto 104143205, Gusciane 186625004, Pomaia 187225802, cascate di Santa Luce 188186962, Croce di Brancoli 136075119, Scesta 110932035.
     - Isole e costa sud: Volterraio 289135430, Capraia 87616854, Suvereto 164830675, Monte Pelato 167204875 e 88260398.
     - Monti Livornesi: 87377309, Monte Carvoli 135432935, Calignaia 102949526, Castellaccio–Quercianella 87617083, Gabbro 109999488, Buca dei Banditi 87616811 e 87371842, Montenero 97490981 e 97480494.
     - Unite come varianti: 88150266 → 87377309 (stessa uscita caricata due volte) e 87377819 → 87478668 (Sambuca, stessa uscita; la scheda va ancora riscritta).
   - Fatto il blocco 9: le ultime 16 schede di Livorno, così le schede invernali sono finite.
     - Val di Chioma 216247587, Pan di Zucchero 96861375, Monte Rotondo 164142691, Botro del Diavolo 215219273.
     - Valle Benedetta: 87479004, 193377883, 159324182, 106000106, 98392430, 87478668 (Sambuca, con la variante notturna), 88150930.
     - Livorno città e dintorni: 87727616, Puzzolente 88188848, Pian di Rota 101049220, Collesalvetti 164224084, Marina di Pisa 100232757.
   - Fatto il blocco 10: 20 schede delle Apuane meridionali, della Versilia e della Media Valle.
     - Camaiore: Moriglione di Penna 97809994, Fibialla 135962013, Prana 88398726, Lucese 115177865, Prana dal Lucese 145994168, Candalla 110858919, Roccia dei Pennati 244396363, Montecastrese 168910075, Gabberi e Sant'Anna 113368838, Grotta all'Onda 243140021, Piglione 101606088, Gevoli 169560138.
     - Media Valle e Versilia: eremi di Borgo a Mozzano 188998672, Monte Costa 168612652, Cavallo d'Azzano 191352625, Monte Alto 229597917, Cardoso–San Leonardo 198605304, Malbacco 87378212, Folgorito 172845616, Palodina 173359682.
     - Unita come variante: 190245735 → 145994168 (Monte Prana dal Lucese, rifatto nel 2024).
   - Fatto il blocco 11: le ultime 17 schede delle Apuane (Lucchio, Prato Fiorito, Freddone x2, Brugiana-Bergiola, Macina-Sella x2, Renara, Forno x2, Colonnata, Sagro x3, Contrario, Cavallo, Pizzo d'Uccello). Le Apuane sono finite.
   - Fatto il blocco 12 (priorità 1): 19 schede di Garfagnana, Panie, Forato, Abetone e Corno alle Scale. Le coppie Forato (87372356/103545524) e Pania (87371098/110604678) sono giri diversi: collegate tra loro, non unite.
   - Fatto il blocco 13 (priorità 2): 22 schede di Appennino Tosco-Emiliano e Garfagnana. Libro Aperto (227114660/176614518) e Rondinaio (107015230/99028295) non sono giri ripetuti: collegati tra loro, non uniti.
   - Fatto il blocco 14 (priorità 3): 15 schede di Lunigiana, Trentino e Veneto. Unita come variante: 181305955 → 144365959 (Stretti di Giaredo, fatti due volte). Treschietto 226767789 e Passo San Pellegrino 231290009 hanno un testo originale quasi vuoto: descritte solo con i dati della traccia.
   - Totale: 236 schede riviste, 123 con cenno storico, nessun cenno duplicato.
   - Ordine per le restanti 56:
     - Priorità 2: resto dell'Appennino e della Garfagnana (circa 22). Libro Aperto 227114660/176614518 e Rondinaio 107015230/99028295 sono da controllare per un'eventuale unione.
     - Priorità 3: Lunigiana (6) e Trentino-Veneto (10).
     - Priorità 4: altre zone d'Italia (7) ed Estero (11). Per i testi quasi vuoti (Budapest 2, Sulcina, Treschietto, San Pellegrino) valutare il noindex.
   - Restano 18 schede su 254 principali (priorità 1, 2 e 3 fatte): 25 Appennino Tosco-Emiliano, 16 Garfagnana, 11 Estero, 10 Trentino e Veneto, 7 altre zone d'Italia, 6 Lunigiana. Sempre a blocchi di circa 20. Regole: fatti solo con fonte, campo vuoto se non si trova niente, H3 specifiche, `descrizione_rivista: true`, un cenno diverso per ogni scheda.
3. **7.8 – UiTests**: erano già fuori sincrono prima di questo lavoro.
   - Baseline mobile a 450 px contro un viewport di 390.
   - Il test "dettaglio senza foto" usa uno slug non più presente nei dati di prova.
   - Errori CORS di Cloudflare Analytics in locale.
   - Da sistemare prima di rigenerare le baseline.
4. **7.7 – Test dell'exporter**: il repository WikilocExporter non ha un progetto di test.
5. **8.x – Passi manuali**: Search Console e controllo del redirect da www.

## Differenze rispetto al piano

Sono nella sezione "Modifiche in corso d'opera" di `design.md`.
