<assign|page-this-header|><assign|page-this-footer|>

<\with|par-mode|center>
<vspace*|6.7cm>

<with|font-size|2.8|Fondamenti di>

<with|font-size|2.8|Programmazione>

<vspace|1.4fn>

<with|font-shape|small-caps|font-size|1.5|Spark>

<vspace|1.4fn>

<with|font-shape|small-caps|font-size|1.15|settembre e ottobre 2026 · volume 1>
</with>

<chapter*|Capire un programma, un passo alla volta>

Un programma cambia dei dati. Per capire se li cambia nel modo giusto dobbiamo prima dire che cosa vogliamo ottenere, poi seguire le operazioni e infine trovare un ragionamento che valga per tutti i dati ammessi. Questo libro costruisce con pazienza questi tre passaggi. Richiede soltanto aritmetica e algebra elementari; introduce il linguaggio logico quando diventa utile.

Il percorso ha cinque pilastri. <strong|Specifica e stato> distinguono il risultato richiesto dalla procedura per ottenerlo (capitolo 1). Il <strong|calcolo proposizionale> ci insegna a leggere condizioni e conseguenze (capitolo 2). La <strong|logica del primo ordine> aggiunge oggetti, proprietà e quantificatori, indispensabili per parlare di tutti gli elementi di un array (capitoli 3 e 4). La <strong|semantica dei comandi e la logica di Hoare> collegano le formule ai programmi (capitoli 5 e 6). Infine <strong|invarianti, terminazione e zone degli array> permettono di verificare e costruire i cicli (capitoli 7–9).

Non occorre imparare subito ogni simbolo. Leggi prima l'esempio, chiediti che cosa vogliamo sapere, poi torna alla definizione. Negli esempi di esecuzione fermati prima di ogni assegnamento: quale valore viene letto? Quale viene sostituito? Nelle prove distingui ciò che sappiamo prima di un passo da ciò che dobbiamo sapere dopo.

Gli esercizi conclusivi hanno tutti una soluzione ragionata nell'ultima parte. Prova a scegliere il primo passo prima di leggerla. I passaggi «Per proseguire» sviluppano varianti secondarie; il filo principale resta comprensibile anche rimandandoli a una seconda lettura.

Il periodo va dalla prima nota disponibile, datata 19 settembre, al 31 ottobre 2026. L'ultima lezione presente nel corpus è del 29 ottobre. Il volume rielabora tredici note e la trascrizione del 25 settembre; le spiegazioni aggiunte non sono citazioni del docente. I documenti di accompagnamento registrano fonti, correzioni e selezione degli esempi.

<strong|Convenzioni.> I naturali comprendono lo zero. I programmi sono scritti nel piccolo linguaggio imperativo del corso, con interi matematici: non sono ancora programmi C. L'assegnamento si scrive <math|x:=E> e cambia il valore di <math|x>; l'uguaglianza <math|x=E> afferma una proprietà. Le variabili di specifica ricordano valori iniziali e non vengono modificate dal programma. La divisione intera e le condizioni di definitezza verranno precisate prima dell'uso.

<\table-of-contents|toc>
</table-of-contents>
