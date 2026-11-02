# Aritmetica 1 — mappa e progetto editoriale

Periodo: 23 settembre–31 ottobre 2026. Corpus disponibile: 13 lezioni, circa 19 ore e 49 minuti di registrazione. La lezione del 1° novembre è esclusa. Le date descrivono i file disponibili, non certificano un calendario completo delle lezioni effettivamente svolte.

## Passo 1 — ritmo e contenuti delle lezioni

| Fonte | Durata | Nucleo e avanzamento | Destinazione |
|---|---:|---|---|
| 23/09 — Numeri naturali, induzione e fattorizzazione | 85 min | Costruzione dei naturali; operazioni; minimo; induzione debole, forte e cumulativa; falso argomento sul colore degli occhi; esistenza della fattorizzazione | 1, 4 |
| 29/09 — Cardinalità e tecniche fondamentali del calcolo combinatorio | 102 min | Somma dei dispari; biezioni e cardinalità; cassetti; prodotti; funzioni; iniezioni; sottoinsiemi e coefficienti binomiali; sovraconteggio uniforme | 1, 2 |
| 30/09 — Successioni ricorrenti e formule combinatorie | 92 min | Ricorrenze lineari del secondo ordine; equazione caratteristica; esempio 2^n−1; Fibonacci; Newton; parità dei sottoinsiemi; indicatori e inclusione-esclusione | 2, 3 |
| 05/10 — Divisione euclidea, massimo comun divisore e identità di Bézout | 110 min | Divisione anche con interi negativi; esistenza/unicità; divisibilità e ordine parziale; algoritmo e risalita | 4 |
| 06/10 — Equazioni diofantee lineari e loro soluzioni | 88 min | Criterio MCD; soluzione particolare; tutte le soluzioni; reticolo e parametro | 5 |
| 06/10 — Conteggio combinatorio e principio di inclusione-esclusione | 85 min | Multinomiali; suriezioni; caso n→n−1; coppie di sottoinsiemi; tassellazioni; selezioni a somma pari | 2, 3 |
| 07/10 — Fattorizzazione unica, congruenze e sistemi modulari | 99 min | Unicità via lemma di Euclide; classi; criteri per 3, 9, 11; cancellazione; congruenze lineari e sistemi | 4, 6, 7 |
| 13/10 — Divisori, algoritmo di Euclide e conteggio combinatorio | 90 min | MCD/mcm dagli esponenti; divisori; stelle e sbarre; prodotti di terne; MCD di 3^a−1; diofantea con vincoli; tre elementi distinti a somma 100 | 2, 4, 5 |
| 14/10 — Sviluppi decimali razionali e fattorizzazione dei denominatori | 91 min | Periodicità tramite resti; denominatore 2^α5^βc; periodico→frazione; Legendre e doppio conteggio; differenza di quadrati | 4, 5, 8 |
| 21/10 (nota) / 22/10 (transcript) — Relazioni di equivalenza e strutture quoziente | 93 min | Partizioni; costruzione di Q; buona definizione; classi modulari; gruppi/anelli/campi; unità | 6, 9 |
| 22/10 — Omomorfismi tra anelli e teorema cinese | 66 min | Prodotto diretto; mappa naturale; isomorfismo iff coprimi; restrizione agli invertibili | 7, 9 |
| 27/10 — Equazioni esponenziali e congruenze modulo potenze prime | 91 min | Ordine; appartenenza alle potenze; moduli composti; cinese generalizzato; quadratiche; sollevamento | 8, 10 |
| 27/10 — Gruppi ciclici, sottogruppi e permutazioni | 96 min | Assiomi; radici dell'unità; criterio sottogruppo; intersezione/unione; dZ; ordine; centro; S_n e cicli | 9 |

Il ritmo passa dai fondamenti (23/09) a un blocco combinatorio (29–30/09), alterna teoria dei numeri ed esercizi (05–14/10), quindi introduce l'algebra astratta (21/22–27/10). Euclide e il teorema cinese ricompaiono più volte; le ricorrenze precedono alcuni esempi che le motivano; gli esercizi esponenziali precedono o affiancano il linguaggio dei gruppi. Il libro riunisce queste riprese.

## Passo 2 — ordine pedagogico

1. **Imparare a dimostrare**: simboli, insiemi numerici, logica minima, minimo e induzione. Fornisce il linguaggio.
2. **Contare senza ripetere**: funzioni, prodotti, binomiali, multinomiali, indicatori, inclusione-esclusione, stelle e sbarre. Riunisce l'intero filo combinatorio.
3. **Dalle ricorrenze alle formule**: partire dalle tassellazioni, poi generalizzare e risolvere le ricorrenze. Due dati iniziali e unicità giustificano il metodo.
4. **Dividere, trovare il MCD, scomporre**: divisione → Euclide → Bézout → lemma di Euclide → fattorizzazione unica → divisori, mcm e Legendre. Evita la circolarità fra unicità e proprietà dei primi.
5. **Equazioni negli interi**: applicare Bézout; vincoli sul parametro; differenze di quadrati.
6. **Dagli interi alle classi**: equivalenza, Q come quoziente, congruenze e buona definizione; inversi, cancellazione e congruenze lineari.
7. **Ricomporre i resti**: teorema cinese operativo e generalizzato; isomorfismo di anelli, introdotto qui con le definizioni necessarie.
8. **Potenze e cifre periodiche**: ordine dimostrato direttamente via cassetti; equazioni esponenziali; decimali. Non richiede Lagrange o Eulero, che appartengono al volume successivo.
9. **Il linguaggio dei gruppi**: rileggere esempi già noti; sottogruppi, ciclici, centro e permutazioni; unità e cinese. Breve ponte sui complessi per le radici dell'unità.
10. **Quadratiche e potenze prime**: campo modulo p; discriminante; sollevamento con tutti i rami; ricomposizione finale.

Ogni capitolo contiene un orientamento iniziale («In breve»), spiegazioni e prove essenziali, esercizi guidati, una o due «officine della dimostrazione» e una verifica breve con risposta. Le officine costruiscono gli schemi di prova in ordine di difficoltà: leggere un enunciato e induzione (cap. 1), biezioni e doppio conteggio (2), esistenza e unicità (3, 4), necessario e sufficiente (5), buona definizione (6), contare invece di costruire (7), cassetti e minimo (8), verificare una struttura (9), casi esaustivi e separa-risolvi-ricomponi (10). L'appendice A li riassume.

Le figure (37) sono monocrome, a tratto sottile, e mostrano *perché* le cose sono così: funzioni come frecce, l'albero delle scelte che spiega il binomiale, anagrammi con lettere numerate, zone di Venn, stelle e sbarre, Euclide come rettangolo piastrellato, la griglia dei divisori, i gettoni di Legendre, la griglia cinese che si riempie solo con moduli coprimi, cicli di potenze e di resti, sottogruppi sull'orologio di ℤ/12, permutazioni a fili, alberi di sollevamento.

Esercizi integrati dalla raccolta Chirivì, Del Corso, Dvornicich, *Esercizi scelti di Algebra 1*: es. 4 (cap. 3), 15, 37, 40, 50 (cap. 2), 2, 47 (cap. 6), 95 (cap. 7), 49 (cap. 8), 74 (cap. 10).

## Fedeltà e correzioni editoriali

- Le note sono la fonte primaria del contenuto studiabile; i transcript vengono consultati nei passaggi dubbi. Nessuna fonte viene riscritta.
- Il nome della nota sulle equivalenze riporta 21/10, il transcript associato riporta 22/10. Entrambe le date sono conservate qui; il libro cita 21/22 ottobre.
- La dimostrazione «induzione ⇒ minimo» nella nota del 23/09 passa da un'ipotesi puntuale a una cumulativa senza dichiararlo. Il libro usa esplicitamente Q(n): nessun elemento di S è ≤n.
- In una spiegazione del 05/10, la presenza di divisori negativi viene presentata come ostacolo al massimo usuale. Per una coppia non entrambi nulla il massimo positivo esiste comunque: il libro definisce il MCD tramite i divisori positivi e non ripete quell'argomento.
- Nel procedimento per MCD(3^a−1,3^b−1), la descrizione testuale del riordinamento non coincide sempre con la coppia scritta. Il libro usa una singola riduzione per sottrazione e la somma degli esponenti come misura decrescente.
- Nell'esempio 3^x ≡61 (mod 91), il transcript contiene un passaggio «meno 2» non coerente con i resti. Il libro verifica direttamente le potenze: x≡5 (mod 6), come già corretto nella nota.
- Nel sollevamento singolare, da coefficiente e termine noto nulli modulo p seguono esattamente p sollevamenti a quel passo. Si esplicita il conteggio.
- Le prove di intersezione/unione dei sottogruppi e l'esercizio dZ∩mZ sono integrazioni standard già segnalate nelle note; il libro ne conserva lo status editoriale.
- Illustrazioni, brevi verifiche, spiegazioni dei prerequisiti e alcuni esempi numerici sono aggiunte didattiche. Non sono citazioni letterali del docente.
- Non vengono anticipati come contenuti del mese il teorema di Eulero, la formula generale dell'ordine di g^k e il teorema su tutti i sottogruppi dei gruppi ciclici della lezione del 1° novembre.

## Tracciabilità

I percorsi delle 13 note e dei 13 transcript, i rispettivi hash SHA-256, le durate e i capitoli di destinazione sono registrati in `aritmetica-1-assets/fonti.json`; ogni sezione della nota è elencata per facilitare il controllo della copertura. Su richiesta, il libro non contiene più l'appendice con i collegamenti alle fonti: la tracciabilità è in questo file e in `fonti.json`.

## Libro consegnato

- [Documento TeXmacs modificabile](aritmetica-1.tm).
- [Anteprima PDF](aritmetica-1.pdf): 48 pagine; dieci capitoli, appendice A (la cassetta degli attrezzi delle dimostrazioni) e appendice B (risposte alle verifiche).
- 37 disegni SVG originali in `aritmetica-1-assets/`, generati da `disegni.py`, con copie PDF vettoriali per l'esportazione locale.
- [Dettagli di formato e rigenerazione](aritmetica-1-assets/README.md).
