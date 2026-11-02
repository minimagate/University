# Geometria — lettura della revisione approfondita

Revisione del 2 novembre 2026 su source/00-front.tm, 01–10.tm e 99-app.tm. Letti il brief comune, le skill monthly-book e texmacs-book, lo standard Spark, Aritmetica 01/05/06, coverage, source-audit, note editoriali e precedente audit di qualità. Il corpus originale non è stato riletto integralmente in questa revisione linguistica: le attribuzioni e le correzioni pregresse sono conservate.

## Ragionamenti controllati

- **Span.** L'identità con α+2β descrive ogni combinazione, non solo i bersagli mostrati. L'impossibilità di (1,0) usa la relazione fra componenti valida per tutte le combinazioni. Le scritture diverse di (3,6) preparano l'indipendenza.
- **Aggiunta fuori span.** L'eventuale coefficiente non nullo del nuovo vettore lo renderebbe combinazione dei vecchi; il caso nullo si chiude con l'indipendenza iniziale. Questa prova rimane nel percorso principale ed è disponibile per la costruzione dei sottospazi.
- **Scambi.** I due esempi sono su R, perciò la divisione per 2 è lecita. Il lemma generale richiede un coefficiente non nullo; Steinitz sceglie uno dei vecchi vettori rimasti perché altrimenti il nuovo sarebbe generato dai nuovi precedenti. Le prove di confronto delle basi, dimensione, completamento e sottospazi restano complete e in ordine non circolare.
- **Grassmann.** Nel caso concreto t=βe3 appartiene a U∩W, cioè all'asse x; questo forza β=0. La prova generale conserva la stessa struttura usando la base di W, poi quella di U. Casi di intersezione o blocchi vuoti conservati.
- **Rango–nullità.** k,e1,e3 sono indipendenti su ogni campo; la coordinata −α annulla α anche in caratteristica 2. Le immagini di e1,e3 formano la base canonica. La prova generale conserva generazione e indipendenza separate e non assume l'uguaglianza fra rango per righe e colonne.
- **Rango.** Le mosse numeriche danno esattamente S; le colonne 1,2 vengono controllate dal basso, le righe da sinistra. La relazione c3=c1+c2 vale in A e S. La prova generale dell'invarianza usa il nucleo e rango–nullità; non suppone l'uguaglianza degli span delle colonne.
- **Copertura.** Tutti i capitoli 1–10 e gli esercizi 1.1–10.2 rimangono. Le prove principali, le ipotesi sul campo e le eccezioni già documentate rimangono. Il riordino di parti opzionali è esplicito in coverage.md. Nessuna fonte originale, audio o altra bundle modificata.

## Controlli eseguiti

- Assemble, build.py e check.py: completati, sintassi TeXmacs valida.
- checks/deep-pass.py: tutti i nuovi casi numerici e le dieci aperture passano.
- foundations.py, foundations-independent.py, vector-spaces.py, systems.py, independent.py: tutti passano.
- reviews/deep-pass-paragraphs.json: nessun capoverso raggiunge 80 parole ordinarie, formule sostituite da una voce. Questo è solo un segnale per trovare testo denso.

## Rischi da controllare sul PDF finale

La revisione non dichiara conteggio di pagine né approvazione visiva finale. Il capitolo 6 ora spende più spazio nelle decisioni prima dei risultati; controllare che gli esempi e le successive sottosezioni non producano code di pagina isolate. Controllare le matrici A/S affiancate del capitolo 10 e le soluzioni rese in capoversi distinti. La precedente esportazione presente prima della nuova build non è evidenza della nuova impaginazione.

## Correzioni dopo la prima esportazione della revisione

L'integratore ha rilevato due chiusure isolate: verifica 4 e verifica 10. Nel capitolo 4 sono state unite le due introduzioni ripetitive alle operazioni, ridotta al 90% la semplice figura delle rette e resa più diretta la prova dell'unione senza perdere i due casi. Nel capitolo 10 sono state abbreviate ripetizioni sulle diagonali, GL ed equivalenze. Dimensione del carattere, margini, dimostrazioni principali ed esercizi restano invariati. Sorgente riassemblato e check.py/deep-pass.py nuovamente superati. Nuova esportazione e conferma del risultato visivo a cura dell'integratore.
