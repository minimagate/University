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

Un programma cambia dei dati. Per capire se lo fa nel modo giusto dobbiamo dire che cosa vogliamo ottenere, seguire le operazioni e trovare un ragionamento che valga per tutti gli ingressi ammessi. Il libro costruisce questi passaggi partendo da esempi piccoli. Servono soltanto aritmetica e algebra elementari.

<subsection|Il percorso>

Cominciamo da una richiesta, una procedura e i valori che cambiano mentre la eseguiamo: sono <strong|specifica, algoritmo e stato> (capitolo 1).

Per scrivere proprietà precise ci serve poi la <strong|logica>. Prima ragioniamo con frasi considerate vere o false (capitolo 2); poi impariamo a parlare di oggetti e a dire «tutti» ed «esiste» con i <strong|quantificatori> (capitoli 3 e 4).

Torniamo quindi ai programmi. Studiamo l’effetto dei comandi (capitolo 5) e lo colleghiamo alle proprietà che valgono prima e dopo con le <strong|triple di Hoare> (capitolo 6).

Infine affrontiamo i cicli. Gli <strong|invarianti> spiegano che cosa si conserva; le <strong|funzioni di terminazione> spiegano perché il calcolo finisce. Negli array useremo confini mobili per distinguere il lavoro già fatto da quello rimasto (capitoli 7–9).

<subsection|Come leggere gli esempi>

Non occorre imparare subito ogni simbolo. Leggi l’esempio e chiediti che cosa vogliamo sapere; poi torna alla definizione. Prima di un assegnamento, fermati: quale valore viene letto? Quale viene sostituito?

Nelle prove distingui ciò che sappiamo prima di un passo da ciò che dobbiamo sapere dopo. Quando scegliamo un comando o un’uguaglianza, cerchiamo anche il motivo della scelta.

Gli esercizi hanno tutti una soluzione spiegata nell’ultima parte. Prova almeno a scegliere il primo passo prima di leggerla. I passaggi «Per proseguire» sviluppano varianti secondarie e si possono rimandare a una seconda lettura.

<subsection|Convenzioni e fonti>

I naturali comprendono lo zero. Usiamo il piccolo linguaggio imperativo del corso con interi matematici, senza limiti di rappresentazione. La divisione intera e le condizioni perché un’espressione abbia valore saranno precisate prima dell’uso.

L’assegnamento <math|x:=E> cambia il valore di <math|x>; l’uguaglianza <math|x=E> afferma una proprietà. Le <em|variabili di specifica> ricordano valori iniziali e restano fissate durante la prova.

Il periodo va dalla prima nota disponibile, del 19 settembre, al 31 ottobre 2026. L’ultima lezione presente è del 29 ottobre. Il volume rielabora tredici note e la trascrizione del 25 settembre. Le spiegazioni aggiunte non sono citazioni del docente; fonti e scelte sono registrate nei documenti di accompagnamento.

<\table-of-contents|toc>
</table-of-contents>
