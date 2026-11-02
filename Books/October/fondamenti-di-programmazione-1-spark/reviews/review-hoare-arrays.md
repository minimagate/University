# Revisione indipendente — comandi, Hoare, costruzione di cicli e array

## Ambito e stato

Letti interamente i capitoli 05, 06, 07 in `hoare/`, 08, 09 in `arrays/` e tutte le relative soluzioni. Controllato successivamente l'integrato `fondamenti-di-programmazione-1-spark/source/`, in particolare le riparazioni div/mod, massimo tramite divisione e la correzione sintattica del tag `I`. Letto anche il capitolo 01 per il collegamento al prodotto. Consultate le note del 26, 27 e 29 ottobre nei passaggi interessati alle correzioni e al problema geometrico.

**Esito:** nessun errore matematico bloccante residuo nei capitoli 05–09 e nelle loro soluzioni. Il giudizio riguarda la matematica e la didattica del testo, non la verifica visiva della versione impaginata.

## Revisione matematica

- **05 — Esecuzione:** lettura e modifica dello stato sono distinte; l'assegnamento usa lo stato vecchio, le sequenze quello corrente. Tracce scambio/potenza corrette. Semantica parziale dichiara stati ben tipati con nomi presenti; div e mod hanno ora la convenzione globale floor per ogni divisore non nullo, evitando l'ambiguità sui numeri negativi. La mancata valutazione a cortocircuito è esplicita.
- **06 — Hoare:** correttezza totale e parziale sono distinte, compresa la convenzione che la sola parziale non esclude errori. Direzioni della conseguenza corrette. Assegnamento fondato sul lemma di sostituzione con definitezza; scambio e precondizioni risalite corretti. La guardia `x div y > 0`, con x≥0 e y>0, equivale a x≥y: il ramo vero assegna ora x e il falso y, quindi il massimo. Invariante della divisione valido ai controlli, non tra i due assegnamenti; uscita e motivazione corrette.
- **07 — Terminazione:** non negatività e integralità motivate, preservazione e progresso richiesti in correttezza totale. La guardia viene resa definita prima del primo controllo e a ogni giro. Nella divisione y>0 è conservata e dà la diminuzione del resto. Somma: limiti 0≤x≤n, somma vuota, n=0 e ordine del corpo tutti corretti. La regola sulle variabili non cambiate include la necessaria disgiunzione fra free e change. Le combinazioni di triple sono valide nella semantica dichiarata.
- **Geometria:** ipotesi punti distinti e nessuna terna allineata esplicite. Triangoli usati per il confronto delle lunghezze sono quelli non degeneri; il calo di una quantità reale è giustificato dalla finitezza degli N! abbinamenti, senza invocare falsamente la sola positività. La scelta degli estremi AD/CB è subordinata alla compatibilità dei colori.
- **08 — Costruzione:** fattoriale copre n=0 e usa n+1−x, non la candidata negativa all'uscita. MCD mantiene positività; l'altro ramo usa la guardia x≠y per ricavare x<y. Radice cubica: l'ordine y,a,b conserva le identità; la risposta b−1 è corretta e non negativa perché un giro avviene sempre; variante x+1−(b−1)^3 decresce anche al primo giro. Fibonacci usa temp per conservare il vecchio x; specifica principale k≥1 e soluzione estesa k=0 corrette. Ricorrenza dimezzante: identità nei casi pari/dispari, caso x=1, uscita h=f(n), esempio f(19)=7 e n=0 corretti. Compensazione xy+pq conserva l'uguaglianza anche per p=0.
- **09 — Array:** domini semiaperti e annidamento delle letture espliciti; esempio di aggiornamento selettivo e lettura successiva corretti. Assioma sostituisce l'intera funzione array ed esige definitezza di indice e valore. Prefisso di somme usa 1≤k<n per entrambe le posizioni. Incremento mantiene anche la zona non elaborata, necessaria per leggere V[x]. Somma e conteggio trattano gli indici e l'array vuoto. Bandiera a due colori conserva molteplicità tramite scambio, ammette x=0 e x=n e non avanza x nel ramo destro. Bandiera a tre colori conserva le quattro zone, gestisce scambi con sé stesso e misura y−z. Accessi validi anche ai confini.

## Revisione editoriale da principiante

Il percorso procede dalla traccia alla specifica, dall'assegnamento alla risalita delle condizioni, dall'invariante al progresso e infine alla costruzione di invarianti. Le scelte sono motivate da ciò che ogni variabile rappresenta; in particolare somma, fattoriale, Fibonacci e bandiera non si presentano come formule da indovinare. Le formule quantificate degli array sono preparate dal capitolo di logica; l'uso della sequenza iniziale ha una ragione esplicita. Le soluzioni mostrano i passaggi e i casi degeneri, non soltanto i risultati.

Il blocco è denso ma sostiene una lettura a più livelli: il problema geometrico, la ricorrenza dimezzante e la bandiera a tre colori sono marcati «Per proseguire». Non raccomando eliminazioni di concetti principali. Nessuna richiesta di aggiungere officine o formulari ripetitivi.

**Un'integrazione consigliata al cap. 01**, comunicata all'orchestratore: dopo la prima osservazione C+AB=ab, mostrare in poche righe ingresso 0+ab=ab, preservazione C'=C+A e B'=B−1 ⇒ C'+AB'=C+AB, uscita B=0 ⇒ C=ab, e discesa naturale di B. Nell'integrato letto era presente l'osservazione ma non ancora questo breve argomento generale.

## Verifiche effettuate

Eseguiti i controlli degli autori: 12.416 casi Hoare; 173.069 controlli del blocco costruzione/array. Inoltre scritto ed eseguito da questo revisore `review-independent.py`, senza importare il codice degli autori: controllo di transizioni e invarianti della somma, MCD, fattoriale, cubo, e di tutte le sequenze su {-1,0,1} fino a lunghezza 5 per bandiere a due/tre colori. Tutti i controlli sono superati. Le enumerazioni finite non sostituiscono le dimostrazioni generali esaminate separatamente.
