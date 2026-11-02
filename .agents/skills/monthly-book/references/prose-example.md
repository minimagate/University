# Approved prose example — before and after

The user approved the "Dopo" version below (2 November 2026) as the target voice for every Spark book. It is Analisi 1, chapter 6, the inverse trigonometric functions. Formulas are written in plain text here; in the book they stay in `<math|…>` markup.

Use it to calibrate tone and rhythm, not as a template to copy: other subjects need their own questions and images.

## Before (staccato, rejected)

> **In breve.** Il seno dà un'altezza: come risaliamo all'angolo? Partiamo dal cerchio unitario e dai grafici. Per costruire le inverse sceglieremo un intervallo preciso, che ci guiderà anche nelle composizioni.
>
> Una funzione periodica ripete i valori e quindi non può essere iniettiva sul dominio intero. Per costruire un'inversa scegliamo un ramo che raggiunga ogni valore dell'immagine una sola volta.
>
> Per esempio arcsin(1/2) = π/6: scegliamo l'unico angolo dell'intervallo principale il cui seno vale 1/2. arccos(1/2) = π/3 compie una scelta diversa, perché cerca un coseno.
>
> Nel verso opposto arcsin(sin x) = x vale solo per x ∈ [−π/2, π/2]. Fuori da quell'intervallo l'espressione continua ad avere senso, ma riporta all'angolo principale. Per esempio 2 ∈ (π/2, π), quindi il punto con angolo π − 2 ha lo stesso seno ed è nel ramo corretto: arcsin(sin 2) = π − 2.

What is wrong: every sentence is an isolated fact; the reader must build the links. Colons carry the logic. «compie una scelta diversa, perché cerca un coseno» personifies a formula. The choice of interval is declared, never motivated. The «In breve» follows the question → «Partiamo da…» → future-tense template repeated in every chapter.

## After (approved)

> **In breve.** Se conosciamo un angolo, il seno ci dice a che altezza arriva sul cerchio. Spesso però il problema è al contrario: conosciamo l'altezza e cerchiamo l'angolo. Gli angoli con la stessa altezza sono infiniti, quindi dovremo imparare a sceglierne uno, sempre lo stesso. Questa piccola scelta guiderà tutti i calcoli del capitolo.
>
> Cominciamo da una domanda semplice: quale angolo ha seno 1/2? Viene subito in mente π/6. Anche 5π/6 però ha seno 1/2, e lo stesso vale per π/6 + 2π, per 5π/6 + 2π e così via, un giro dopo l'altro. La domanda ha infinite risposte, mentre una funzione inversa deve darne una sola.
>
> Per uscirne ci mettiamo d'accordo in anticipo su dove cercare. Per il seno scegliamo l'intervallo [−π/2, π/2]. Lì il seno sale da −1 a 1 senza mai tornare indietro, e incontra ogni valore esattamente una volta. Dentro questo intervallo la nostra domanda ha una sola risposta, π/6, che chiamiamo arcoseno di 1/2.
>
> Per il coseno lo stesso intervallo non funzionerebbe. Fra −π/2 e π/2 il coseno prima cresce e poi cala, e prende due volte ogni valore compreso fra 0 e 1. Scegliamo allora [0, π], dove il coseno scende da 1 a −1. Per la tangente basta l'intervallo aperto (−π/2, π/2), in cui cresce sempre e assume tutti i valori reali.
>
> *[riquadro «Concetto» con i tre intervalli principali]*
>
> Gli intervalli sono diversi, e per questo cambiano anche le risposte. L'angolo con coseno 1/2 che troviamo in [0, π] è π/3, non π/6. L'arcotangente si lascia invece immaginare bene: arctan t è l'inclinazione della retta che va dall'origine al punto (1, t), misurata fra −π/2 e π/2.
>
> **Andata e ritorno**
>
> Partiamo da un'altezza t, troviamo il suo angolo con l'arcoseno e poi ne calcoliamo il seno. Torniamo esattamente a t, per ogni t fra −1 e 1. È proprio ciò per cui abbiamo costruito l'arcoseno.
>
> Il viaggio nel verso opposto può riservare una sorpresa. Partiamo da un angolo x, ne calcoliamo il seno e chiediamo all'arcoseno di ritrovarlo. Se x sta fra −π/2 e π/2 lo ritroviamo. Altrimenti l'arcoseno ci dà un altro angolo, quello che ha la stessa altezza e si trova nell'intervallo concordato.
>
> Proviamo con x = 2. Siccome π/2 < 2 < π, l'angolo 2 cade nel secondo quadrante, fuori dal nostro intervallo. Il suo riflesso rispetto all'asse verticale è π − 2: arriva alla stessa altezza e sta fra 0 e π/2. Per questo arcsin(sin 2) = π − 2.
>
> Davanti a composizioni come queste conviene farsi due domande, sempre in quest'ordine. La prima è se l'espressione ha senso: cos(arccos t), per esempio, ce l'ha solo quando t sta fra −1 e 1. La seconda, se ha senso, è se possiamo semplificarla subito o se prima dobbiamo riportare l'angolo nell'intervallo giusto.

What makes it work: it starts from a question the reader can answer, meets a real difficulty, and reaches the definition as the way out. Each choice is motivated (why the cosine needs a different interval). Connectives (*però*, *per uscirne*, *allora*, *per questo*, *altrimenti*) carry the logic. Sentence length varies. The concept box arrives as the conclusion. The rigor is unchanged: intervals, edge cases and values are all exact.
