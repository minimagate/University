# Revisione matematica indipendente — capitoli 1–3

Revisore: agente sistemi, diverso dall'autore dei capitoli. Letti integralmente `source/01.tm`, `02.tm`, `03.tm` e `reviews/solutions-01-03.tm`, poi audit e script dell'autore per confrontare la copertura dei controlli. Le conclusioni riguardano i sorgenti disponibili al momento di questa revisione; la verifica visiva è separata.

## Esito

**Nessun errore matematico sostanziale trovato.** Una precisazione locale da integrare prima della consegna: nel cap. 2 «Forma polare e significato del prodotto», la derivazione scrive zw/(ρλ); rendere esplicita l'ipotesi z,w≠0 (quindi ρλ>0) prima di dividere. La formula finale è già correttamente estesa ai fattori nulli e l'argomento di zero è correttamente dichiarato non definito. Segnalazione comunicata al root, senza modificare i sorgenti di un altro autore.

## Prove e casi limite

### Capitolo 1

- Distributiva di intersezione sull'unione: entrambe le inclusioni presenti, con «oppure» inclusivo. Distributiva duale corretta distinguendo appartenenza a X e non appartenenza a X.
- Applicazioni: dominio/codominio/assegnazione distinti; grafico con esistenza e unicità; controesempio all'iniettività e distinzione immagine/codominio corretti.
- Inversa: la suriettività fornisce esistenza della preimmagine, l'iniettività unicità. Dimostrate le identità inverse e il loro reciproco, con unicità mediante associatività della composizione. Non confusa la funzione inversa con il reciproco del valore.
- Campo: tutti gli assiomi pertinenti e 0≠1 espliciti; distribuzione destra ottenuta da commutatività. Cancellazione additiva, unicità di neutri/opposti/inversi, a·0=0 e annullamento del prodotto sono giustificati dagli assiomi. Nessuna divisione per un elemento non provato non nullo.
- F2: operazioni corrette e inversi verificati; il fatto che 2=0 viene usato correttamente come avvertimento sulle ipotesi del campo.
- Soluzioni 1.1–1.2 corrette, incluso il caso x+x'=0 nella restrizione del quadrato e il controesempio a=1 in F2.

### Capitolo 2

- Costruzione di C dalle coppie: prodotto corretto, i²=−1 e inclusione R coerenti. L'associatività del prodotto è verificata attraverso le due parti del prodotto triplo; espansioni controllate simbolicamente indipendentemente.
- Modulo: non negativo, nullo se e solo se z=0; coniugio involutivo e punto fisso reale corretti.
- Proprietà del coniugio e z·coniugato(z)=|z|² verificate; l'inverso ha denominatore positivo per z≠0. La verifica conclude la struttura di campo senza assumerla circolarmente.
- Forma polare: argomento modulo 2π, quadrante e assi trattati correttamente; per zero non si assegna una direzione. Prodotto e De Moivre corretti, con induzione sul numero di fattori. La notazione e^(iθ) è dichiarata abbreviazione: non introduce dipendenze dall'analisi complessa.
- Radici: n≥1 esplicito; caso w=0 distinto; derivazione degli argomenti mantiene 2kπ prima della divisione. Distinzione e completezza delle n radici giustificate dagli indici modulo n. Per n=1 la formula e il conteggio restano validi. Non presupposta una fattorizzazione generale dei polinomi.
- Radici cubiche di −8, seste di 1 e quarte di ±1: valori, angoli e rotazioni corretti. Le soluzioni 2.1–2.2 controllano divisione e potenze e non omettono radici.

### Capitolo 3

- Teorema del fattore: la divisione per z−r ha resto costante, coincidente con P(r). Il teorema comprende anche P=0 mediante Q=0; la frase sul grado del quoziente è limitata a P di grado n≥1. La divisione con resto è usata come proprietà elementare dopo averla preparata con un esempio numerico.
- TFA: enunciato soltanto per polinomi complessi non costanti, esplicitamente accettato senza dimostrazione. Non confuso con una formula risolutiva universale.
- Fattorizzazione: induzione corretta su tutti i polinomi del grado fissato, base n=1 e passo n→n+1. Il quoziente ha grado inferiore e conserva il coefficiente direttivo. Non viene assunto già il risultato per il grado da dimostrare.
- Induzione forte/ordinaria: equivalenza descritta tramite proprietà cumulativa. Il testo non presenta l'esempio concreto come dimostrazione di un caso generale.
- Molteplicità: P non nullo e Q(r)≠0 dichiarati. Il conteggio complesso usa la fattorizzazione TFA; il limite superiore in un campo arbitrario invece usa estrazione di fattori e calo del grado, senza TFA o circolarità. La molteplicità delle altre radici è preservata perché il fattore rimosso non si annulla in esse. Le costanti non nulle non hanno radici, il polinomio nullo è escluso.
- Coefficienti reali: P(coniugato z)=coniugato P(z) corretta; coppie coniugate hanno stessa molteplicità mediante coniugio dei coefficienti. Il polinomio Q coniugato è distinto dal coniugato del valore. La non nullità nel punto coniugato prova l'uguaglianza esatta delle molteplicità.
- Fattori reali: coppia a±ib produce z²−2az+a²+b²; b≠0 assicura assenza di radici reali. Costanti incluse mediante prodotto vuoto.
- Quadratiche complesse: completamento del quadrato corretto e reversibile perché a≠0 e il campo è C, dove 2≠0. Δ=0 distinto; le due radici della radice quadrata sono opposte. Esempio z²+(1−i)z−i: discriminante 2i, soluzioni i e−1, fattori controllati.
- Soluzioni 3.1–3.2 corrette. Le cinque radici forzate dalla coniugazione impediscono il grado3; il monico reale di grado4 con 2+i doppia è univocamente (z²−4z+5)². L'espansione è stata ricalcolata indipendentemente attraverso i quattro fattori complessi lineari.

## Computazioni indipendenti conservate

`checks/foundations-independent.py` usa dizionari di polinomi multivariati e Fraction, senza librerie esterne. Verifica come identità simboliche:

- associatività del prodotto complesso e le due parti espanse stampate nel capitolo;
- coniugio del prodotto e prodotto con il coniugato;
- fattore quadratico da coppia coniugata;
- identità del completamento del quadrato;
- espansione dell'esercizio3.2 mediante quattro fattori complessi.

Esecuzione effettiva: **PASS**. I controlli simbolici non sostituiscono le prove di esistenza, unicità o i risultati generali appena revisionati. Le formule numeriche dei restanti esempi sono state controllate anche a mano durante la lettura: nessuna discrepanza.

## Correzione separata richiesta dal root

Esercizio8.2 ora specifica «Considera A come matrice reale». Aggiornato anche l'audit del blocco sistemi: il rango dell'esempio 1,…,9 dipende dalla caratteristica e sarebbe diverso su F3. Il frammento08 corretto passa `scripts/check.py`.
