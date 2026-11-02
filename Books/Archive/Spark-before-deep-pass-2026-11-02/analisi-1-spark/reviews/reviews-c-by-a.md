# Revisione matematica indipendente dei capitoli 11–14

Revisore: agente dei fondamenti; i quattro capitoli e tutte le nove soluzioni del blocco sono stati letti integralmente in due batch non troncati. Revisione svolta dopo la stesura, separata dalla produzione. Non sono state modificate queste fonti.

## Esito

Non ho trovato errori matematici bloccanti né risposte mancanti. Gli enunciati delicati dichiarano ipotesi adeguate; gli esempi e i coefficienti risultano corretti. Nove esercizi proposti (2+2+2+3) hanno nove soluzioni ragionate corrispondenti.

## Controlli dei ragionamenti

- **11, Landau:** definizione fattorizzata di o/O/∼ coerente anche in presenza di zeri della scala; quando si usa il quoziente, la non nullità viene dichiarata. Prodotti e divisioni di equivalenze limitati ai domini pertinenti; nessuna sostituzione illegittima nelle differenze. La composizione dei resti gestisce esplicitamente l'annullamento dell'argomento interno con prolungamento del resto e ω(0)=0. La stima u=O(x) garantisce che i fattori quoziente restino limitati. Regola transitiva verificata mediante prodotto di fattori nulli. Il caso a=0 del binomiale di primo ordine è separato.
- **12, derivate:** derivabilità/differenziabilità equivalenti mediante divisione del resto, senza circoli. Derivabile⇒continua segue dallo sviluppo. Prodotto, reciproco, quoziente hanno ipotesi visibili e prove corrette. Catena dimostrata senza dividere per incremento interno potenzialmente nullo. Teorema dell'inversa assume esplicitamente continuità dell'inversa e derivata originaria non nulla; la prova mediante reciproco del rapporto non presuppone derivabilità dell'inversa. Derivate di arcsin/arccos limitate all'interno di (−1,1). Potenze variabili richiedono base positiva. Le due derivate dell'esercizio 12.2 sono corrette.
- **13, De L'Hôpital:** versione 0/0 oppure denominatore ±∞ corretta; nessun limite del numeratore richiesto nel secondo caso. Dominio un intero intervallo/semiretta e g,g' non nulli. Esempi negativi cos x/x, (2x+sin x)/x e floor(x)/x dimostrano i diversi limiti dell'applicabilità. Esempio iniziale: entrambi i passaggi di Hôpital legittimi sui due lati, limite 2; controllo indipendente Taylor dà ancora 2. Circolarità sin x/x esplicitamente evitata.
- **13, Taylor–Peano:** ipotesi f derivabile n−1 volte in un intorno e derivata n-esima al centro sufficienti. Prova mediante Hôpital risale dai rapporti di R^(n−1)/n!x; non richiede la derivata n-esima fuori dal centro. Gli stadi intermedi sono forme 0/0 perché l'esistenza delle derivate al centro garantisce le continuità necessarie. Unicità dimostrata scegliendo il primo coefficiente non nullo e dividendo per la sua potenza. Conoscere uno sviluppo non è confuso con possedere tutte le derivate. Arcotangente ricavata dai coefficienti della derivata già regolare, senza derivare genericamente un resto o. Parità e ordine del resto corretti.
- **14, operazioni:** composizione generale ha f(0)=0, dunque f=O(x); differenza f^k−P^k fattorizzata correttamente. Cambio di centro di sin(cos x) è a 1, non a 0; uso del secondo ordine esterno giustifica o(x³), spiegando perché il solo o(h) non basta. Reciproco cos, tan all'ordine5 e controllo con arctan corretti. Nelle potenze variabili la precisione del resto esterno viene aumentata quanto serve, senza assumere o(u)=o(x³) soltanto da u=O(x²).
- **14, iperboliche:** definizioni, parità, limiti, identità, derivate e sviluppi corretti. Crescenza e minimo ottenuti senza introdurre teoremi di monotonia da derivata non ancora provati. Formule inverse e scelta del ramo non negativo per Sett cosh corrette. Interpretazione dell'area iperbolica e legami complessi esplicitamente enunciati senza attribuire a Taylor reale risultati complessi.
- **14, ultimo esempio:** sin²(tanh²x)∼x⁴ mentre x⁵ è trascurabile; numeratore log(1+sin²x)−x² ha coefficiente −5/6 al grado4. Denominatore definitivamente non nullo, limite −5/6. Le successioni finali usano il giusto centro: 1/n→0; cos n viene stimato, non sviluppato in zero.

## Verifiche esatte indipendenti

Non essendo disponibile SymPy nel Python di sistema, ho costruito un piccolo calcolo di polinomi troncati con `fractions.Fraction` (nessun arrotondamento). Script conservato in `/private/tmp/analisi-spark-session/check_review_c.py` e utilizzabile nel bundle come controllo accessorio. Dieci assert superati:

1. sin x cos x = x−2x³/3+2x⁵/15;
2. cos(sin x) = 1−x²/2+5x⁴/24;
3. derivata quinta di sin³x in 0 = −60;
4. 1/cos x = 1+x²/2+5x⁴/24;
5. tan x = x+x³/3+2x⁵/15;
6. (1+sin x)^x = 1+x²−x³/2+o(x³);
7. coefficiente x⁴ di log(1+sin²x)−x² = −5/6;
8. coefficiente lineare esercizio 11.2 = 5/3;
9. rapporto coefficienti esercizio 14.3 = −4/9;
10. verifica delle identità polinomiali di composizione nei controlli suddetti.

Le prove e le proprietà dei resti sono state controllate mediante ragionamento; questi controlli finiti non vengono presentati come prove dei teoremi.

## Limiti della revisione

Non include la revisione tipografica del PDF, affidata al coordinatore. Le costruzioni di esponenziale/logaritmo, le proprietà geometriche della circonferenza e Hôpital sono usati nel quadro dichiarato dal libro: non ho aggiunto dimostrazioni non presenti né necessarie al percorso iniziale. Gli approfondimenti su settori e numeri complessi sono chiaramente opzionali.
