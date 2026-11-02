<chapter|Congruenze quadratiche e potenze prime>

<\inbreve>
Finora l'incognita compariva al primo grado, moltiplicata per un coefficiente. Quando compare un quadrato le cose si fanno più interessanti, perché una congruenza può avere nessuna, una, due o anche più soluzioni. Modulo un primo ci aiuterà il fatto di lavorare in un campo, modulo una potenza di un primo correggeremo le soluzioni un passo alla volta, e il teorema cinese metterà insieme i pezzi.
</inbreve>

<section|Un quadrato modulo un primo>

Cerchiamo le soluzioni di <math|x<rsup|2>≡1<pmod|5>>. Le classi modulo 5 sono soltanto cinque, quindi possiamo provarle tutte:

<\equation*>
0<rsup|2>≡0,<space|1em>1<rsup|2>≡1,<space|1em>2<rsup|2>≡4,<space|1em>3<rsup|2>≡4,<space|1em>4<rsup|2>≡1<pmod|5>.
</equation*>

Le soluzioni sono <math|[1]> e <math|[4]>, cioè <math|x≡±1<pmod|5>>, e siamo sicuri di non averne perse perché ogni intero sta in una di queste cinque classi.

C'è anche una spiegazione che non richiede tentativi. Scriviamo <math|x<rsup|2>-1=(x-1)(x+1)>. Modulo un primo <math|p> un prodotto è zero soltanto se lo è uno dei fattori, perché se il primo fattore fosse diverso da zero avrebbe un inverso e potremmo cancellarlo. Le soluzioni di <math|x<rsup|2>≡1<pmod|p>> sono quindi <math|x≡1> e <math|x≡-1>, che per <math|p=2> sono la stessa classe.

Un numero <math|b> si dice <strong|quadrato modulo <math|p>> se esiste un <math|x> con <math|x<rsup|2>≡b<pmod|p>>. Così 4 è un quadrato modulo 5, mentre 2 non lo è, perché nella lista dei quadrati non compare. Essere un numero positivo, o anche un quadrato fra gli interi, non c'entra con l'essere un quadrato in un certo modulo.

<\attenzione|Il modulo cambia le regole>
Modulo 4, <math|2·2≡0>, pur avendo due fattori non nulli. Perciò non usiamo l'annullamento del prodotto modulo un numero composto senza un'ulteriore giustificazione. Lo stesso quadrato può avere più di due radici: modulo 15, <math|x<rsup|2>≡1> ha le quattro soluzioni <math|1,4,11,14>.
</attenzione>

<section|Per proseguire: il discriminante modulo un primo>

Per una congruenza di secondo grado <math|Ax<rsup|2>+Bx+C≡0<pmod|p>>, con <math|p> primo dispari e <math|p∤A>, possiamo riprendere il completamento del quadrato che conosciamo dalla scuola. L'identità

<\equation*>
4A(Ax<rsup|2>+Bx+C)=(2Ax+B)<rsup|2>-(B<rsup|2>-4AC)
</equation*>

trasforma la congruenza in <math|(2Ax+B)<rsup|2>≡Δ<pmod|p>>, dove <math|Δ=B<rsup|2>-4AC> è il solito discriminante. Il passaggio non fa perdere né aggiungere soluzioni, perché <math|4A> è invertibile modulo <math|p>.

Il problema si spezza così in due parti più semplici. Prima cerchiamo i numeri <math|y> con <math|y<rsup|2>≡Δ>, e poi, per ciascuno, risolviamo la congruenza lineare <math|2Ax+B≡y>, che dà <math|x≡(2A)<rsup|-1>(y-B)>. Se il discriminante non è un quadrato non ci sono soluzioni, se è zero ce n'è una, e se è un quadrato non nullo ce ne sono due, corrispondenti a due valori opposti di <math|y>. Che non ce ne siano altre lo garantisce di nuovo l'annullamento del prodotto, applicato a <math|y<rsup|2>-z<rsup|2>=(y-z)(y+z)>.

Proviamo con <math|x<rsup|2>+5x+3≡0<pmod|11>>. Il discriminante è <math|Δ=25-12=13≡2>. I quadrati di <math|0,1,2,3,4,5> modulo 11 sono <math|0,1,4,9,5,3>, e quelli degli altri resti ripetono gli stessi valori, perché <math|-x> ha lo stesso quadrato di <math|x>. Il 2 non compare, e quindi la congruenza non ha soluzioni.

Restano due casi particolari. Se <math|p=2> basta provare direttamente 0 e 1. Se <math|p∣A>, il termine di secondo grado sparisce modulo <math|p>, e resta da studiare una congruenza lineare o costante.

<section|Sollevamento: una soluzione piccola va corretta>

Passiamo a un modulo che è una potenza di un primo, e risolviamo <math|x<rsup|2>≡6<pmod|25>>. Un numero che risolve la congruenza modulo 25 la risolve anche modulo 5, e siccome <math|6≡1<pmod|5>> le sue classi modulo 5 possono essere soltanto 1 o 4. Questo restringe molto la ricerca.

Il numero 1, però, non va bene modulo 25, perché <math|1<rsup|2>-6=-5> è divisibile per 5 ma non per 25. Dobbiamo correggerlo, restando fra i numeri che hanno resto 1 modulo 5, altrimenti perderemmo la soluzione modulo 5 da cui siamo partiti.

Questi numeri sono quelli della forma <math|x=1+5h>, e per ottenere classi distinte modulo 25 basta far variare <math|h> fra 0 e 4. Sostituendo troviamo

<\equation*>
(1+5h)<rsup|2>-6=-5+10h+25h<rsup|2>.
</equation*>

L'ultimo termine è già un multiplo di 25, quindi resta da chiedere che lo sia anche <math|-5+10h=5(-1+2h)>, cioè che <math|-1+2h≡0<pmod|5>>. Questa è una congruenza lineare con soluzione <math|h≡3>, e otteniamo <math|x≡16<pmod|25>>.

Facciamo lo stesso partendo dal resto 4. Scriviamo <math|x=4+5h> e sostituiamo:

<\equation*>
(4+5h)<rsup|2>-6=10+40h+25h<rsup|2>.
</equation*>

Dividendo per 5 la condizione diventa <math|2+8h≡0<pmod|5>>, cioè <math|2+3h≡0>, che dà <math|h≡1> e quindi <math|x≡9<pmod|25>>.

Abbiamo esaminato entrambe le radici modulo 5 e, per ciascuna, tutti i possibili numeri con quel resto, quindi le soluzioni sono esattamente 9 e 16 modulo 25. Un controllo finale lo conferma, perché <math|9<rsup|2>=81=3·25+6> e <math|16<rsup|2>=256=10·25+6>.

<\concetto|Sollevare una soluzione>
Sollevare una soluzione da modulo <math|p> a modulo <math|p<rsup|2>> significa cercare, tra i numeri con quel resto modulo <math|p>, quelli che soddisfano la condizione più forte. Si scrive <math|x=x<rsub|0>+ph> e si determina la correzione <math|h> modulo <math|p>.
</concetto>

<section|Tre possibilità: una, nessuna o più correzioni>

Nell'esempio ogni radice modulo 5 aveva esattamente una correzione, ma non è sempre così. Per capire che cosa può succedere, prendiamo una quadratica qualsiasi <math|f(x)=Ax<rsup|2>+Bx+C> e una soluzione <math|x<rsub|0>> modulo <math|p>, con <math|f(x<rsub|0>)=pγ>. Sviluppando come prima troviamo

<\equation*>
f(x<rsub|0>+ph)=pγ+ph(2Ax<rsub|0>+B)+Ap<rsup|2>h<rsup|2>.
</equation*>

L'ultimo termine è un multiplo di <math|p<rsup|2>>, e dividendo il resto per <math|p> la condizione modulo <math|p<rsup|2>> diventa la congruenza lineare

<\equation*>
γ+h(2Ax<rsub|0>+B)≡0<pmod|p>.
</equation*>

Tutto dipende allora dal coefficiente di <math|h>. Se non è zero modulo <math|p> è invertibile, e c'è <strong|una sola correzione>. Se invece è zero, la scelta di <math|h> non cambia nulla. In quel caso, quando <math|γ≢0>, nessuna correzione funziona, e quando <math|γ≡0> funzionano tutti i <math|p> valori di <math|h>.

Due esempi mostrano bene la differenza. Per <math|x<rsup|2>≡0<pmod|9>> l'unica radice modulo 3 è 0, e tutti i candidati <math|0,3,6> hanno quadrato divisibile per 9, quindi la radice si solleva in tre modi. Per <math|x<rsup|2>≡3<pmod|9>> partiamo ancora da 0 modulo 3, ma gli stessi tre quadrati danno sempre resto zero e mai 3, e la radice non si solleva affatto.

<figura|@IMG(sollevamento)|Una soluzione a un livello può avere una sola continuazione, <math|p> continuazioni oppure nessuna. I rami rappresentano possibilità controllate dall'equazione della correzione.>

Lo stesso metodo permette di salire ancora, da <math|p<rsup|k>> a <math|p<rsup|k+1>>. Scriviamo <math|x=x<rsub|k>+p<rsup|k>h> e sostituiamo. Il termine con il quadrato della correzione contiene <math|p<rsup|2k>>, che per <math|k≥1> è un multiplo di <math|p<rsup|k+1>>, e dopo aver diviso per <math|p<rsup|k>> resta ancora una congruenza lineare modulo <math|p>. Si sale così un gradino alla volta, e un ramo che a un certo livello non ha continuazioni non può dare soluzioni ai livelli successivi.

<section|Il teorema cinese ricompone le radici>

Per risolvere una congruenza modulo un numero <math|N> qualsiasi, scomponiamo <math|N> in potenze di primi distinti, che sono a due a due coprime. Troviamo le radici modulo ciascuna potenza, e il teorema cinese ci dice che ogni scelta di una radice per ciascun pezzo corrisponde a un'unica classe modulo <math|N>.

Cerchiamo per esempio le soluzioni di <math|x<rsup|2>≡6<pmod|75>>, con <math|75=3·25>. Modulo 25 conosciamo già le radici 9 e 16, mentre modulo 3 si ha <math|6≡0> e serve quindi <math|x≡0>. Partendo dalla radice 9 scriviamo <math|x=9+25k>, e la condizione modulo 3 impone <math|k≡0>, da cui <math|x≡9<pmod|75>>. Partendo da 16 scriviamo <math|x=16+25k>, e la condizione diventa <math|1+k≡0<pmod|3>>, cioè <math|k≡2>, da cui <math|x≡66<pmod|75>>. Le soluzioni sono quindi esattamente due classi.

<subsection|Per proseguire: contare senza trovare ogni radice>

A volte basta sapere quante sono le soluzioni, senza calcolarle una per una. Consideriamo <math|x(x-1)≡0<pmod|N>>, dove <math|N›1> ha <math|r> primi distinti nella sua fattorizzazione. Modulo ogni potenza <math|p<rsup|e>> che compare in <math|N>, i due fattori consecutivi <math|x> e <math|x-1> sono coprimi, e quindi tutti i fattori <math|p> devono stare nello stesso dei due. Ne segue che <math|x≡0> oppure <math|x≡1<pmod|p<rsup|e>>>. Ci sono quindi due scelte per ciascuno degli <math|r> pezzi, e grazie al teorema cinese queste scelte danno esattamente <math|2<rsup|r>> soluzioni distinte modulo <math|N>.

<subsection|In sintesi>

Nelle congruenze quadratiche lavorano insieme diversi pilastri del libro. Il fatto che modulo un primo si lavori in un <strong|campo> giustifica la cancellazione, le <strong|congruenze lineari> determinano le correzioni da un livello al successivo e il <strong|teorema cinese> ricompone i risultati. A ogni passo il metodo tiene conto di tutte le possibilità e controlla le ipotesi che rendono lecito il passaggio.

<\verifica|12>
<strong|1.> Trova tutte le soluzioni di <math|x<rsup|2>≡4<pmod|25>>. Parti dalle radici modulo 5 e cerca una correzione per ciascuna.

<strong|2.> Risolvi <math|x<rsup|2>≡1<pmod|12>> separando i moduli 3 e 4. Perché possono comparire quattro radici?
</verifica>
