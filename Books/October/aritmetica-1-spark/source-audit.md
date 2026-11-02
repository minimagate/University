# Aritmetica 1 Spark — analisi delle fonti

Analisi del 2 novembre 2026. Perimetro: 23 settembre–31 ottobre 2026; la lezione del 1° novembre è esclusa. La revisione Spark segue le precisazioni dell'utente: spiegare con pazienza i concetti principali, rendere riconoscibili i tasselli della materia, alleggerire il percorso; non riprodurre necessariamente ogni esercizio, variante tecnica o dimostrazione alternativa.

## Corpus effettivo e lettura

Sono state lette le 14 note del periodo in `Notes/Aritmetica/Lectures/` e i corpi dei 13 transcript corrispondenti in `_transcripts/Aritmetica/`. I transcript sono ASR molto rumorosi, con formule spesso irriconoscibili e conversazioni ambientali: non costituiscono una trascrizione matematica certificata. Per la lettura alcuni output hanno soppresso soltanto la stringa ripetitiva «Grazie.»; i file restano intatti. Gli output inizialmente troncati sono stati completati mediante letture sovrapposte/normalizzate. I contenuti delle note sono stati confrontati con i transcript, la mappa e passaggi del vecchio sorgente TeXmacs.

Il conteggio precedente di 13 note non comprendeva la nota autonoma del 19 ottobre sul teorema cinese, derivata da appunti manoscritti (`source: Quando_G._Bresciani_fa__teoria_2.pdf`) e priva di transcript. Il PDF manoscritto non è presente nel corpus locale ispezionato: si usa la nota disponibile, che distingue esplicitamente le aggiunte dell'autore. Le 13 registrazioni corrispondono a circa 19 ore e 49 minuti; la nota del 19 ottobre non aggiunge una durata registrata.

## Inventario per lezione e destinazione proposta

| Fonte | Nuclei e risultati sostanziali | Capitoli Spark proposti |
|---|---|---|
| 23/09 — Naturali, induzione, fattorizzazione | Insiemi numerici e ampliamenti; operazione interna; assioma/successore; minimo; induzione debole, forte e proprietà cumulativa; controesempio dell'induzione sugli occhi; esistenza della fattorizzazione in primi; distinzione esistenza/unicità | 1, 5, 9 |
| 29/09 — Cardinalità e combinatoria | Somma dei dispari via induzione e quadratini; scoprire una formula vs verificarla; funzioni, dominio/codominio/immagine, composizione/inversa; biezioni e cardinalità; cassetti; prodotto cartesiano; m^n funzioni, fattoriale decrescente per iniezioni; equivalenza iniettività/suriettività per insiemi finiti equicardinali; sottoinsiemi, indicatori, 2^n; binomiali e sovraconteggio uniforme | 1–2 |
| 30/09 — Ricorrenze e formule combinatorie | Successione come funzione; ricorrenza del secondo ordine; linearità e combinazioni; ricerca di λ^n e polinomio caratteristico; radici distinte; dati iniziali; a_n=2^n−1; Fibonacci/Binet; Newton con prova combinatoria e induttiva; Pascal; indici delle somme; metà sottoinsiemi pari/dispari per n>0; indicatori e inclusione-esclusione generale | 2–3 |
| 05/10 — Divisione, MCD, Bézout | Approssimare con multipli; divisione euclidea per a intero e b≠0; resto 0≤r<|b|; esistenza per minimo e unicità; divisibilità; relazioni d'ordine parziale/totale; MCD e sua proprietà caratteristica; Euclide, terminazione e invarianza; risalita 45/17; identità di Bézout | 4–5 |
| 06/10 — Diofantee | Criterio gcd(a,b)∣c; necessità e sufficienza; riduzione dei coefficienti a coprimi; soluzione particolare via Bézout; lemma di Euclide; differenza di soluzioni e problema omogeneo; parametrizzazione completa e verifica; retta e reticolo; cambi di parametro; primi e irriducibilità nel transcript finale | 5–6 |
| 06/10 — Conteggi | Anagrammi/multinomiali e partizioni ordinate; suriezioni n→n−1 e generali tramite complementare/inclusione-esclusione; coppie di sottoinsiemi con intersezione o unione fissata; tassellazioni 2×n, ricorrenza e somma binomiale; scelta di 96 elementi con somma pari; identità Σ k C(n,k)=n·2^(n−1) nel finale del transcript | 2–3 |
| 07/10 — Fattorizzazione e congruenze | Unicità della fattorizzazione tramite lemma sui primi; equivalenza congruenza/differenza multipla/stesso resto/stessa progressione; classi e rappresentanti; operazioni e potenze; MCD invariato scegliendo rappresentante congruo; congruenze a più moduli e mcm; passaggio a divisori del modulo; moltiplicazione anche del modulo; cancellazione con riduzione n/gcd; criteri 3,9,11 e potenze; congruenze lineari, d soluzioni mod n, inversi; sistemi e cinese | 5, 7–8 |
| 13/10 — Divisori ed esercizi | MCD/mcm dagli esponenti, relazione prodotto; numero divisori; terne xyz=2000 e stelle/sbarre; MCD(3^a−1,3^b−1)=3^gcd(a,b)−1 e misura decrescente; 11x+41y=2 con vincoli |x|,|y|≤100; terne positive distinte di somma 100 (784 sottoinsiemi) | 2, 4–6 |
| 14/10 — Decimali e fattoriali | Razionale iff decimale eventualmente periodico; resti come stati di un algoritmo; blocco B/(10^m−1); conversione periodico→frazione; esistenza potenza unitaria per basi coprime via cassetti/cancellazione; b=2^α5^βc; v_p e formula di Legendre mediante righe/colonne; x²−y²=n tramite fattori di stessa parità, impossibilità n≡2 mod4, casi dispari e multipli di4, divisori anche negativi | 5–6, 11 |
| 19/10 — Cinese, nota autonoma | Coprimalità con un prodotto; moltiplicatività del MCD rispetto a fattori coprimi; CRT per un numero qualsiasi di moduli a due a due coprimi, induzione e unicità; inverso con piccoli tentativi h≥0 | 5, 8 |
| 21/10 nota ↔ 22/10 transcript — Equivalenze | Relazione equivalenza, classi uguali o disgiunte, partizione e quoziente; Q da coppie con denominatore non nullo; somma/prodotto su classi e buona definizione; proiezione; gruppi, anelli commutativi unitari, campi; invertibilità iff gcd=1; gruppo delle unità; campo modulo p | 7, 9 |
| 22/10 — Omomorfismi | Conservare operazioni; omomorfismi unitari; prodotto diretto componente per componente; mappa canonica Z/(mn)→Z/m×Z/n, buona definizione e conservazione; isomorfismo iff coprimi; coppia (0,1) per necessità; esempio mod6; restrizione alle unità (non automatica la suriettività) | 9–10 o coda 9 |
| 27/10 — Esponenziali e potenze prime | Ordine minimo, ritorno a1, divisione dell'esponente; a^x=b iff b nel generato e x in una classe modulo ordine; esempi 3 mod13,4 mod17,3^x=61 mod91; CRT generalizzato; fattorizzazione del modulo in potenze prime; annullamento su campi; idempotenti x(x−1)=0 modN, 2^r soluzioni (nel transcript); quadratiche, completamento quadrato, discriminante e p=2; sollevamento p→p² e iterazione; rami semplici/singolari | 8, 10–12 |
| 27/10 — Gruppi | Esempi additivi e moltiplicativi; radici dell'unità; criteri sottogruppo e proprietà ereditate; dZ; generato e ciclici; ordine finito/infinito; centro e sua chiusura; permutazioni, composizione da destra, S3 non abeliano; proprietà di neutro/inverso/cancellazione | 9–10 |

## Ordine didattico e dipendenze

L'ordine in 12 capitoli proposto dall'orchestratore è valido. Importa dare un nome esplicito ai concetti, non obbligare ogni concetto a diventare un capitolo. MCD (oggetto), algoritmo di Euclide (procedimento), Bézout (teorema) devono avere ingressi visivi distinti e connessioni chiare.

1. **Linguaggio e induzione**: pochi simboli indispensabili e prove su esempi. La piena costruzione assiomatica può restare compatta.
2. **Contare**: oggetto da contare → somma/prodotto → ordine/ripetizioni → binomiali → sovrapposizioni. Funzioni concrete preparano gli omomorfismi.
3. **Ricorrenze**: tassellazioni prima del polinomio caratteristico. Unicità dai dati iniziali giustifica il metodo senza richiedere spazi vettoriali.
4. **Divisione e MCD**: resto → divisibilità → MCD → Euclide; la fattorizzazione unica non va presupposta.
5. **Bézout e primi**: risalita → combinazioni → lemma Euclide → unicità → applicazioni agli esponenti.
6. **Diofantee**: esistenza → una soluzione → tutte → vincoli, con ogni passaggio motivato.
7. **Congruenze e classi**: prima resti concreti, poi equivalenza, poi classi e buona definizione. Frazioni come esempio familiare laterale.
8. **Equazioni modulari e CRT**: congruenza lineare come diofantea; inversi prima della divisione modulare; CRT operativo prima dell'isomorfismo.
9. **Gruppi, anelli, campi**: operazioni concrete, regole da verificare, poi definizioni; separare inverso additivo/moltiplicativo. CRT come isomorfismo soltanto dopo aver definito omomorfismo e prodotto diretto.
10. **Sottogruppi e cicli**: generato, ordine, permutazioni con esempi e controesempi. Ogni gruppo ciclico abeliano, ma ogni abeliano non necessariamente ciclico.
11. **Potenze e decimali**: ordine del capitolo10 → esponenziali → periodicità dei resti → fattori2,5 e lunghezza periodo.
12. **Quadratiche e sollevamento**: capitolo conclusivo/applicazione; ridurre → risolvere sui primi → correggere sulle potenze → ricomporre. Non presentarlo come nuovo prerequisito per capire tutti gli altri.

## Nuclei da spiegare integralmente e parti da alleggerire

Da preservare nel percorso principale: significato delle definizioni; induzione e minimo; conteggi fondamentali; ricorrenza e dati iniziali; correttezza/terminazione Euclide; Bézout e lemma; fattorizzazione; criterio e parametrizzazione diofantee; equivalenza/classi/buona definizione; invertibilità/cancellazione; congruenze lineari e CRT; differenze fra gruppo/anello/campo; sottogruppo/generatore/ordine; comportamento delle potenze e razionali periodici. Per questi le dimostrazioni fondamentali devono spiegare la scelta strategica, non soltanto formalizzare i conti.

Possono essere brevi percorsi laterali o esercizi con soluzione: doppia dimostrazione di Newton, formalismo indicatori, formula generale suriezioni, conteggi numerici grandi (96 su100, 784,150), Legendre, MCD esponenziale, equivalenza formale forte/debole/minimo, costruzione completa di Q, centro, radici complesse dell'unità, idempotenti e conteggio2^r, generalità del sollevamento. Preferire UN esempio ben spiegato a molte varianti risolte in poche righe. Non tagliare il motivo per cui una procedura funziona per tenere una formula secondaria.

## Errori, ambiguità e verifiche matematiche

- **Induzione⇒minimo (23/09 nota)**: P(n): n∉S non basta a escludere tutti i precedenti. Usare Q(n): S∩{0,…,n}=∅, oppure induzione forte esplicita. Il transcript non consente di attribuire con certezza la formulazione difettosa al docente.
- **MCD e divisori negativi (05/10 nota)**: falso che ammettere divisori negativi impedisca il massimo usuale. Per una coppia non entrambi nulla i divisori comuni sono limitati in valore assoluto e il massimo positivo esiste. La positività normalizza il MCD rispetto all'ordine di divisibilità.
- **Diofantee**: dichiarare (a,b)≠(0,0). Trattare separatamente eventuali coefficienti nulli nella prova della parametrizzazione, per non cancellare zero; oppure enunciare e dimostrare prima per a,b positivi e indicare gli altri casi con precisione.
- **Ricorrenze**: il metodo a radici distinte non copre radici coincidenti; non presentarlo come universale senza avviso. Gli spazi vettoriali sono un commento del docente esplicitamente rinviato, quindi evitabili.
- **Parità dei sottoinsiemi**: uguaglianza2^(n−1) richiede n>0; complemento cambia parità solo se n è dispari. La biezione che aggiunge/toglie un elemento fissato funziona per ogni n>0.
- **MCD esponenziale (13/10)**: il testo della nota dice di riordinare ma formula a'=max−min,b'=min non lo fa sempre. Usare trasformazione (a,b)→(a−b,b), poi scambio se necessario, e somma decrescente. Caso esponente0 produce3^0−1=0.
- **19/10 lemma fattorizzazioni**: la nota stessa segnala che eventuali primi di a assenti da mn sono irrilevanti; non scrivere una fattorizzazione falsa di a. Le prove con fattorizzazione necessitano numeri non nulli; i casi0 sono separati. Moduli CRT positivi.
- **Inverso con tentativi (19/10)**: l'insieme di tutti gli h interi con a∣bh+1 non ha minimo. Imporre h≥0 e coprimalità; con a positivo bastano0,…,a−1.
- **Data equivalenze**: nota21/10, transcript22/10; conservare entrambe nella tracciabilità.
- **Esponenziale 3^x≡61 mod91**: il transcript ha «−2» incoerente. Verifica diretta:3^5=243≡61 mod91; ordine6, dunque x≡5 mod6. Le condizioni sono5 mod6 e2 mod3.
- **Sollevamento singolare**: se coefficiente e termine noto sono0 modp, ci sono ESATTAMENTE p sollevamenti a quel passo, non genericamente «più»; se termine noto non nullo,0; altrimenti1.
- **Annullamento**: su Z/p per p primo sì; su Z/p^e no in generale. Per x(x−1), la coprimalità dei fattori permette comunque la conclusione0/1 modulo ogni p^e.
- **Gruppo vs ordine elemento**: nel testo della nota27/10 «in un gruppo finito di ordine m, g^(n+m)=g^n» anticipa Lagrange. Nel libro d'ottobre usare r=ordine di g e g^(n+r)=g^n con prova tramite divisione euclidea, senza Lagrange/Eulero.
- **Sottogruppo**: per dimostrare che identità del sottogruppo coincide con quella ambiente non basta citare unicità in insiemi diversi. Da e_H h=h moltiplicare per h^−1 nel gruppo ambiente; poi gli inversi coincidono.
- **Q e campi**: definire1≠0 per escludere l'anello nullo dalla definizione di campo; Z/n campo iff n primo per n≥2. Per n=1 segnalare anello a un solo elemento se lo si considera.
- **Permutazioni**: applicare la destra per prima; notazione dei cicli non è un prodotto di numeri. La formula dell'ordine come mcm dei cicli disgiunti è presente nella nota; non è distinguibile con certezza nell'ASR, quindi indicarla come sviluppo didattico della nota, non citazione testuale.
- **Aggiunte già editoriali**: prove intersezione/unione sottogruppi e soluzione dZ∩mZ sono esplicitamente integrazioni standard nella nota; preservare questa distinzione nei documenti editoriali.

## Controllo di perimetro

Non anticipare come programma del periodo: teorema di Eulero, Lagrange, formula generale ord(g^k), classificazione di tutti i sottogruppi dei gruppi ciclici. Appartengono alla lezione del1 novembre. Le potenze che tornano all'identità si dimostrano direttamente mediante finitezza/cassetti e inversi.

## Revisione successiva

Questo è l'inventario prima della scrittura. `coverage.md` finale deve confrontare i file Spark effettivi con questa lista, assegnare capitolo/sezione e distinguere trattazione principale, approfondimento compatto, esercizio/variante non riprodotta; non dichiarare copertura integrale di ogni dettaglio quando l'ultima richiesta autorizza una selezione ragionata.
