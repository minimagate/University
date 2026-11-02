# Revisione matematica indipendente — capitoli4–7

Revisore: agente fondamenti, distinto dall'autore del blocco. Letti integralmente `source/04.tm`, `05.tm`, `06.tm`, `07.tm` e `reviews/solutions-04-07.tm` nella versione disponibile il2novembre2026. La revisione concerne il contenuto matematico e l'ordine delle dipendenze; non certifica la resa del PDF, da controllare separatamente.

**Esito: nessun errore matematico bloccante trovato.** Tutti gli otto esercizi hanno risposta completa e corretta. Non sono stati modificati i sorgenti dell'autore.

## Capitolo4 — spazio vettoriale e sottospazi

- Otto assiomi presenti, con tipi K×V→V e V×V→V distinti. Elemento nullo richiesto esplicitamente, quindi insieme non vuoto.
- Verifica componente per componente in K^n coerente con gli assiomi del campo; tre proprietà 0_Kv=0_V, α0_V=0_V e (−1)v=−v dimostrate mediante cancellazione lecita nel gruppo additivo.
- Polinomi trattati come oggetti formali: necessario soprattutto per campi finiti; non identificati con le funzioni polinomiali. Spazio grado≤d include zero e non si confonde con grado esattamente d.
- Funzioni con dominio/codominio fissati e matrici di tipo fissato: operazioni corrette. Diverso campo degli scalari per C esplicito.
- Criterio di sottospazio dimostrato in entrambe le direzioni; spiegato perché la sola chiusura non esclude l'insieme vuoto. Nessun uso circolare di zero proprio di W prima di dimostrarne la coincidenza con quello ambiente.
- Equazione2x−y+3z=0: parametrizzazione(s,2s+3t,t) e generatori(1,2,0),(0,3,1) corretti. Equazioni omogenee distinguono il termine noto non nullo.
- Intersezione sempre sottospazio; unione sottospazio se e solo se uno dei due è contenuto nell'altro: prova completa, con u+w esterno all'unione e differenze lecite.
- Soluzioni4.1–4.2 corrette: valutazione lineare; p(1)=2 fallisce lo zero; piano x+y+z=0 descritto in entrambe le direzioni.

## Capitolo5 — span, indipendenza e basi

- Span finito, infinito a combinazioni finite, span vuoto={0}, minimalità e idempotenza formulati correttamente. Nessuna somma infinita illegittima.
- Indipendenza equivalente all'unicità degli sviluppi **nello span**, senza confondere con esistenza in tutto V.
- Casi di uno/due vettori comprendono zero; caratterizzazione della dipendenza con vettore eliminabile giustificata dividendo per un coefficiente non nullo.
- Esempio(−1,1,0),(−2,1,1) indipendente, come mostra l'ultima componente e poi la seconda.
- Basi(1,1),(1,−1) e(1,0),(1,1): formule coordinate esatte, ordine fissato. Base canonica e monomi verificate sia per generazione sia per indipendenza. K[X] non finitamente generato: massimo grado corretto e caso tutti generatori nulli distinto.
- Cambio campo: w=iv rende dipendenti su C i vettori(1,i),(i,−1), mentre per coefficienti reali α+iβ=0 implica α=β=0. Implicazione indipendenti su C⇒su R corretta nel contesto di uno spazio complesso considerato anche reale; inversa non affermata.
- F2: −1=1, quindi la coppia(1,1),(1,−1) coincide ed è dipendente. Nessuna divisione per2 in caratteristica2.
- Risposte5.1–5.2: rette generate e due rappresentazioni di(3,6), coordinate(2,3) di(5,−1) e relazione con vettore zero tutte corrette.

## Capitolo6 — scambio e dimensione

- Estrazione da generatori finiti tramite eliminazione: termina; base vuota dello spazio nullo inclusa. Caratterizzazioni massimale/minimale provate senza assumere la dimensione.
- Lemma di scambio elementare: coefficiente sostituito non nullo; conservazione dello span e indipendenza dimostrate separatamente.
- Iterazione Steinitz: fondamentale il passaggio «almeno un coefficiente su un u originario rimasto è non nullo»; qui è presente e giustificato dall'indipendenza dei w. Nessun uso della dimensione prima della sua definizione.
- m≤n discende dal consumo dei posti e dall'impossibilità di aggiungere un indipendente a una base. Dimensione invariata segue applicando lo scambio nelle due direzioni. Impossibilità di base infinita in uno spazio con base finita giustificata scegliendo n+1 elementi.
- Sottospazio W in V finito: esistenza di base finita dimostrata prima di scrivere dimW; l'aggiunta fuori dallo span preserva indipendenza e termina entro n. Corretti completamento, disuguaglianza dimensioni, uguaglianza⇒W=V e criteri di n vettori.
- Basi matriciali E_ij, dimensione mn; C su C/R e C^n su R, coordinate come isomorfismo: corrette.
- Equazione lineare non nulla in K^n: n−1 generatori f_j=e_j−(a_j/a_1)e_1 indipendenti per le componenti2…n; coefficienti tutti nulli trattati. Non usa rango–nullità prima di introdurlo.
- Sottospazi polinomiali W0,W1,W01 e p(0)=p(1): basi e dimensioni3,3,2,3 corrette. Indipendenza di polinomi con gradi distinti è provata, non soltanto evocata. Caso nullo del quoziente incluso implicitamente nella forma a+bX, esplicito nelle soluzioni.
- Nota finale sulle basi infinite distingue il teorema generale non provato dal lemma finito effettivamente dimostrato.
- Risposte6.1–6.2: base(X−2,X(X−2)), dim2; completamento di(2,3) mediante e2 e dipendenza di4vettori in R³ corrette.

## Capitolo7 — somme e Grassmann

- U+W sottospazio e uguale span(U∪W), con entrambe le inclusioni motivate. Somma diretta equivalente a unicità della decomposizione: la differenza dei primi addendi appartiene all'intersezione; reciproco corretto con t=t+0=0+t.
- Tutte decomposizioni ottenute spostando t nell'intersezione; infinite decomposizioni dichiarate soltanto per campo infinito, evitando errore su campi finiti.
- Basi della somma diretta: generazione e indipendenza dimostrate. Supplementare costruito dal completamento già disponibile al capitolo6, senza dipendenze circolari; non unicità illustrata correttamente.
- Grassmann: sottospazi finiti espliciti; base dell'intersezione e due completamenti esistono per cap6. Generazione della famiglia unita corretta. Prova dell'indipendenza passa da t∈U∩W alla sua espressione nella base comune, poi usa la base diW per eliminare β eδ, infine quella diU per γ eα. Non c'è il salto impreciso dell'archivio sull'unicità delle coordinate. Blocchi vuoti dichiarati.
- Conseguenze per due piani distinti in R³ e piano/retta trasversale corrette, con uso del lemma dimensione uguale⇒sottospazi uguali già provato.
- Simmetriche/antisimmetriche: trasposta definita prima; 2≠0 visibile prima della divisione; diagonale nulla dedotta soltanto sotto questa ipotesi; M=(M+M^T)/2+(M−M^T)/2 e matrice numerica S,A corrette. In caratteristica2 i due tipi coincidono e la somma diretta non è affermata.
- Risposte7.1–7.2: supplementare e decomposizione(3,1)=(2,2)+(1,−1); in R⁴ intersezione di due3-spazi possibile soltanto2o3, entrambe realizzate: corrette.

## Controlli aritmetici aggiuntivi

Eseguiti separatamente dall'autore con `fractions.Fraction`: parametrizzazioni dei due piani su frazioni non intere; coordinate reali nelle due basi per esempi del testo; valutazioni in0,1 dei polinomi delle basi W1,W01 e p(0)=p(1); matrice numerica M=S+A e proprietà di trasposizione. Tutti i controlli sono passati. Le verifiche generali e di noncircolarità sopra sono lettura delle prove, non deduzioni da questi campioni finiti.

## Osservazioni editoriali minori

La locuzione «famiglia indipendente su C è indipendente su R» è corretta perché si sta restringendo il campo dello stesso spazio complesso: il contesto del paragrafo lo rende chiaro. Un eventuale richiamo «considerando lo stesso spazio anche su R» può aumentarne l'immediatezza, ma non corregge un errore matematico.
