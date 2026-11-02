<assign|page-this-header|><assign|page-this-footer|>

<\with|par-mode|center>
<vspace*|6.7cm>

<with|font-size|2.8|Fondamenti di>

<with|font-size|2.8|Programmazione>

<vspace|1.4fn>

<with|font-shape|small-caps|font-size|1.5|Spark>

<vspace|1.4fn>

<with|font-shape|small-caps|font-size|1.15|ottobre 2026 · volume 1>
</with>

<chapter*|Capire un programma, un passo alla volta>

Un programma prende dei dati e li trasforma. Sembra facile dire se lo fa bene, finché non ci chiediamo che cosa significhi davvero «bene». Per rispondere dobbiamo dire con precisione che cosa vogliamo ottenere, seguire le operazioni una dopo l'altra e trovare un ragionamento che valga per tutti gli ingressi possibili, non soltanto per quelli che abbiamo provato. Questo libro costruisce un passaggio alla volta, sempre partendo da esempi piccoli, e richiede soltanto l'aritmetica e l'algebra della scuola.

<subsection|Il percorso>

Il viaggio comincia da una richiesta, da una procedura che la soddisfa e dai valori che cambiano mentre la eseguiamo. Sono la <strong|specifica>, l'<strong|algoritmo> e lo <strong|stato>, i protagonisti del capitolo 1.

Per parlare di questi valori senza ambiguità ci serve un linguaggio preciso, e questo linguaggio è la <strong|logica>. Prima impariamo a ragionare con frasi che possono essere vere o false (capitolo 2), poi a parlare di oggetti e a dire «tutti» ed «esiste» con i <strong|quantificatori> (capitoli 3 e 4).

Con questi strumenti torniamo ai programmi. Studiamo che cosa fanno i comandi (capitolo 5) e colleghiamo il loro effetto alle proprietà che valgono prima e dopo l'esecuzione, grazie alle <strong|triple di Hoare> (capitolo 6).

L'ultima parte è dedicata ai cicli, dove si concentrano le difficoltà più interessanti. Gli <strong|invarianti> ci diranno che cosa rimane vero a ogni giro, le <strong|funzioni di terminazione> perché il calcolo prima o poi finisce. Negli array useremo dei confini che si spostano per separare il lavoro già fatto da quello che resta da fare (capitoli 7–9).

<subsection|Come leggere gli esempi>

Non serve imparare subito ogni simbolo. Conviene leggere l'esempio, chiedersi che cosa vogliamo sapere e solo allora tornare alla definizione. Davanti a un assegnamento, fermati un momento e domandati quale valore viene letto e quale viene sostituito.

Nelle dimostrazioni distingui ciò che sappiamo prima di un passo da ciò che dobbiamo sapere dopo. Quando scegliamo un comando o un'uguaglianza, il testo prova sempre a spiegare perché proprio quella, e vale la pena cercare il motivo anche da soli.

Ogni esercizio ha una soluzione spiegata nell'ultima parte del libro. Prima di leggerla, prova almeno a scegliere il primo passo. Le sezioni «Per proseguire» sviluppano varianti secondarie e si possono lasciare per una seconda lettura.

<subsection|Convenzioni e fonti>

I naturali comprendono lo zero. Usiamo il piccolo linguaggio imperativo del corso con interi matematici, che non hanno limiti di grandezza. La divisione intera e le condizioni perché un'espressione abbia valore verranno precisate prima di usarle.

Il comando <math|x:=E> cambia il valore di <math|x>, mentre l'uguaglianza <math|x=E> afferma una proprietà. Le <em|variabili di specifica> ricordano i valori iniziali e non cambiano durante una prova.

Il volume raccoglie le lezioni del corso fino al 31 ottobre 2026. Le spiegazioni aggiunte non sono citazioni del docente, e le fonti e le scelte editoriali sono registrate nei documenti che accompagnano il libro.

<\table-of-contents|toc>
</table-of-contents>
