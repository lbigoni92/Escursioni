# Mete e ricerche

Raggruppamento delle schede per meta principale, in aggiunta alle zone del sito, e dati di Google Trends per meta.

- `schede-per-meta.csv`: una riga per scheda, con slug, zona, titolo, meta principale (ricavata in automatico dal titolo) e impressioni su Search Console al 3 novembre 2026. Le schede sono 254 e le mete 219.
- `trends-mete.csv`: risultati di Trends per meta (Italia, 5 anni), con "Garfagnana" come riferimento fisso (media 39) in ogni confronto.

## Cosa dicono i dati (9 novembre 2026)

- **Quasi nessuna meta ha volume su Trends.** Su 24 mete interrogate, solo Cala Violina (9), Isola Santa (11), Lago della Ninfa e Sammezzano (4) superano la soglia. Monte Forato, Serrai e Lago di Vagli stanno a 1; le altre escono a zero.
- **Per la maggior parte delle schede, quindi, Trends non basta.** I dati veri sono le query di Search Console e i volumi di Bing.
- **Dove i volumi ci sono, le ricerche collegate mostrano bisogni pratici:** se è aperto, la prenotazione, lo svuotamento, la webcam. Le schede vanno arricchite su quelli, sempre con il rimando alle fonti ufficiali e mai con i prezzi.

## Modifiche fatte in base ai dati

| Scheda | Modifica |
|---|---|
| Serrai di Sottoguda | titolo "apertura, orari e percorso"; sezione "D'inverno" |
| Cala Violina | descrizione per Google con la prenotazione estiva |
| Sequoie e Sammezzano | titolo "si può visitare?"; sezione sullo stato del castello |
| Lago di Vagli, scheda escursione | sezione "Quando viene svuotato il lago?" |
| Lago di Vagli, pagina luogo | titolo "il paese sommerso e quando viene svuotato", per non fare concorrenza alla scheda escursione |
| Lago della Ninfa | link al rifugio e al Cimone |
| Orrido di Botri | titolo "quando è aperto e come si visita"; sezione accesso |
| Isola Santa, pagina luogo | "cosa vedere", parcheggio, bagno |

## Come continuare

1. **Rate limit:** Trends accetta circa 6-8 confronti di seguito, poi risponde 429. Conviene fare un blocco per sessione, con pause di qualche secondo.
2. **Termini ambigui:** "Montemagno", "Procinto", "Monte Altissimo", "Castiglione della Pescaia" e "Marina di Pisa" hanno omonimi o significati non escursionistici. Vanno precisati o lasciati fuori.
3. **Rifare le misure:** dopo il rilascio di dicembre, confrontare le schede della tabella sopra a +4 e +8 settimane.

## Bing Keyword Research (9 novembre 2026)

`bing-volumi.csv` contiene le impressioni su Bing negli ultimi 3 mesi, in tutti i paesi, rilevate da Bing Webmaster Tools. Bing ha una quota di mercato piccola in Italia, quindi i numeri sono bassi in assoluto, ma confrontabili tra loro.

- Classifica: Cala Violina (696), Serrai di Sottoguda (287), Orrido di Botri (87), Lago della Ninfa (60), Lago di Vagli (52), Isola Santa (25). L'ordine conferma Trends.
- Dopo circa 15 richieste di seguito Bing risponde "troppe richieste". Le righe senza numero vanno ripetute in un'altra sessione, una decina di parole alla volta e con qualche secondo di pausa.
- Dal browser integrato di Claude l'accesso non funziona; dal browser di Luca (Brave, con l'estensione Claude) sì.
