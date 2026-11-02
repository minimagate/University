<chapter|Congruenze quadratiche e potenze prime>

<\inbreve>
Le congruenze lineari ci hanno insegnato a cercare un'incognita moltiplicata per un coefficiente. Ora compare un quadrato. Useremo i campi per risolvere modulo un primo, poi vedremo come correggere le soluzioni quando il modulo è una potenza. Il teorema cinese unirà i risultati.
</inbreve>

<section|Un quadrato modulo un primo>

Cerchiamo le soluzioni di <math|x<rsup|2>≡1<pmod|5>>. Possiamo provare tutti i resti:

<\equation*>
0<rsup|2>≡0,<space|1em>1<rsup|2>≡1,<space|1em>2<rsup|2>≡4,<space|1em>3<rsup|2>≡4,<space|1em>4<rsup|2>≡1<pmod|5>.
</equation*>

Le soluzioni sono <math|[1]> e <math|[4]>, cioè <math|x≡±1<pmod|5>>. Il controllo è completo perché ogni intero appartiene a una di queste cinque classi.

Possiamo anche capire la struttura dell'equazione. Scriviamo <math|x<rsup|2>-1=(x-1)(x+1)>. Modulo un primo <math|p>, un prodotto è zero soltanto se almeno un fattore è zero. Infatti, se il primo fattore fosse non nullo, avrebbe un inverso e potremmo cancellarlo. Quindi le soluzioni di <math|x<rsup|2>≡1<pmod|p>> sono <math|x≡1> oppure <math|x≡-1>; per <math|p=2> queste due classi coincidono.

Un numero <math|b> si chiama <strong|quadrato modulo <math|p>> se esiste <math|x> con <math|x<rsup|2>≡b<pmod|p>>. Per esempio 4 è un quadrato modulo 5, mentre 2 non lo è. Essere un numero positivo non garantisce di essere un quadrato in un dato modulo.

<\attenzione|Il modulo cambia le regole>
Modulo 4, <math|2·2≡0>, pur avendo due fattori non nulli. Perciò non usiamo l'annullamento del prodotto modulo un numero composto senza un'ulteriore giustificazione. Lo stesso quadrato può avere più di due radici: modulo 15, <math|x<rsup|2>≡1> ha le quattro soluzioni <math|1,4,11,14>.
</attenzione>

<section|Per proseguire: il discriminante modulo un primo>

Per <math|Ax<rsup|2>+Bx+C≡0<pmod|p>>, con <math|p> primo dispari e <math|p∤A>, possiamo riprendere il completamento del quadrato. L'identità

<\equation*>
4A(Ax<rsup|2>+Bx+C)=(2Ax+B)<rsup|2>-(B<rsup|2>-4AC)
</equation*>

trasforma la congruenza in <math|(2Ax+B)<rsup|2>≡Δ<pmod|p>>, dove <math|Δ=B<rsup|2>-4AC>. La trasformazione è equivalente perché <math|4A> è invertibile modulo <math|p>.

Prima cerchiamo le radici <math|y> di <math|y<rsup|2>≡Δ>. Poi risolviamo la congruenza lineare <math|2Ax+B≡y>: otteniamo <math|x≡(2A)<rsup|-1>(y-B)>. Se il discriminante non è un quadrato, non ci sono soluzioni. Se è zero c'è una radice; se è un quadrato non nullo ci sono due radici opposte, perché <math|y<rsup|2>-z<rsup|2>=(y-z)(y+z)> e vale l'annullamento del prodotto.

Per <math|x<rsup|2>+5x+3≡0<pmod|11>>, <math|Δ=25-12=13≡2>. I quadrati dei rappresentanti <math|0,1,2,3,4,5> sono <math|0,1,4,9,5,3>. Gli altri ripetono questi risultati, perché il quadrato di <math|-x> è quello di <math|x>. Il 2 non compare: nessuna soluzione.

Se <math|p=2>, proviamo direttamente 0 e 1. Se <math|p∣A>, il termine quadratico scompare modulo <math|p> e studiamo la congruenza lineare o costante rimasta.

<section|Sollevamento: una soluzione piccola va corretta>

Vogliamo ora risolvere <math|x<rsup|2>≡6<pmod|25>>. Chi risolve modulo 25 risolve anche modulo 5. Poiché <math|6≡1<pmod|5>>, le sole classi iniziali possibili sono 1 e 4.

Ma 1 non è una soluzione modulo 25: <math|1<rsup|2>-6=-5> è divisibile per 5, non per 25. Dobbiamo cercare una correzione che conservi il resto 1 modulo 5.

Tutti i candidati sono <math|x=1+5h>. Per avere classi distinte modulo 25 bastano <math|h=0,1,2,3,4>. Sostituiamo:

<\equation*>
(1+5h)<rsup|2>-6=-5+10h+25h<rsup|2>.
</equation*>

L'ultimo termine è già multiplo di 25. Gli altri lo sono insieme se <math|5(-1+2h)> è multiplo di 25, cioè se <math|-1+2h≡0<pmod|5>>. Otteniamo <math|h≡3>, quindi <math|x≡16<pmod|25>>.

Ripetiamo per il resto 4. Scriviamo <math|x=4+5h> e otteniamo

<\equation*>
(4+5h)<rsup|2>-6=10+40h+25h<rsup|2>.
</equation*>

Dobbiamo avere <math|2+8h≡0<pmod|5>>, ossia <math|2+3h≡0>. Questa volta <math|h≡1> e <math|x≡9<pmod|25>>.

Abbiamo considerato entrambe le radici modulo 5 e tutti i candidati sopra ciascuna: le soluzioni sono esattamente <math|9,16> modulo 25. Il controllo dà <math|9<rsup|2>=81=3·25+6> e <math|16<rsup|2>=256=10·25+6>.

<\concetto|Sollevare una soluzione>
Sollevare una soluzione da modulo <math|p> a modulo <math|p<rsup|2>> significa cercare, tra i numeri con quel resto modulo <math|p>, quelli che soddisfano la condizione più forte. Si scrive <math|x=x<rsub|0>+ph> e si determina la correzione <math|h> modulo <math|p>.
</concetto>

<section|Tre possibilità: una, nessuna o più correzioni>

Per una quadratica <math|f(x)=Ax<rsup|2>+Bx+C>, supponiamo <math|f(x<rsub|0>)=pγ>. Sviluppando il quadrato, come nell'esempio, troviamo

<\equation*>
f(x<rsub|0>+ph)=pγ+ph(2Ax<rsub|0>+B)+Ap<rsup|2>h<rsup|2>.
</equation*>

La condizione modulo <math|p<rsup|2>> equivale quindi alla congruenza lineare

<\equation*>
γ+h(2Ax<rsub|0>+B)≡0<pmod|p>.
</equation*>

Se il coefficiente di <math|h> è non nullo modulo <math|p>, ha inverso e determina <strong|una sola correzione>. Se invece è zero, la correzione non può influire sul resto: quando <math|γ≢0> non funziona nessun <math|h>; quando <math|γ≡0> funzionano tutti i <math|p> valori di <math|h>.

Per vedere la differenza, confrontiamo due esempi. Per <math|x<rsup|2>≡0<pmod|9>>, l'unica radice modulo 3 è 0; tutti i candidati <math|0,3,6> hanno quadrato divisibile per 9. Per <math|x<rsup|2>≡3<pmod|9>>, partiamo ancora da 0 modulo 3, ma gli stessi tre quadrati danno sempre resto zero, mai 3. Qui non c'è nessun sollevamento.

<figura|@IMG(sollevamento)|Una soluzione a un livello può avere una sola continuazione, <math|p> continuazioni oppure nessuna. I rami rappresentano possibilità controllate dall'equazione della correzione.>

Per passare da <math|p<rsup|k>> a <math|p<rsup|k+1>>, usiamo <math|x=x<rsub|k>+p<rsup|k>h>. Sostituendo, il termine con il quadrato della correzione contiene <math|p<rsup|2k>>, dunque è multiplo di <math|p<rsup|k+1>> per <math|k≥1>. Dopo aver diviso per <math|p<rsup|k>> rimane ancora una congruenza lineare modulo <math|p>. Un ramo senza continuazioni non può produrre soluzioni più in alto.

<section|Il teorema cinese ricompone le radici>

Per risolvere una congruenza modulo <math|N>, scomponiamo <math|N> in potenze di primi distinti. Queste potenze sono a due a due coprime. Troviamo le radici su ogni pezzo; poi ogni scelta di una radice per pezzo dà un'unica classe modulo <math|N>.

Per esempio, cerchiamo <math|x<rsup|2>≡6<pmod|75>>. Modulo 25 conosciamo le radici 9 e 16; modulo 3 serve <math|x≡0>. Per il primo resto, <math|x=9+25k>: la condizione modulo 3 impone <math|k≡0>, quindi <math|x≡9<pmod|75>>. Per il secondo, <math|x=16+25k>, serve <math|1+k≡0<pmod|3>>: <math|k≡2>, quindi <math|x≡66<pmod|75>>. Abbiamo esattamente due classi.

<strong|Per proseguire: contare senza trovare ogni radice.> Consideriamo <math|x(x-1)≡0<pmod|N>>, con <math|N›1> e <math|r> primi distinti nella sua fattorizzazione. Modulo ogni potenza <math|p<rsup|e>>, i due fattori consecutivi sono coprimi: tutti i fattori <math|p> devono stare nello stesso fattore. Quindi <math|x≡0> oppure <math|x≡1<pmod|p<rsup|e>>>. Le due scelte per ciascuno dei <math|r> pezzi producono, attraverso il cinese, esattamente <math|2<rsup|r>> soluzioni distinte modulo <math|N>.

<subsection|In sintesi>

I pilastri lavorano insieme: il <strong|campo> giustifica la cancellazione modulo un primo; le <strong|congruenze lineari> determinano le correzioni; il <strong|teorema cinese> ricompone i risultati. Il metodo conserva tutte le possibilità e controlla ogni volta le ipotesi che permettono il passaggio.

<\verifica|12>
<strong|1.> Trova tutte le soluzioni di <math|x<rsup|2>≡4<pmod|25>>. Parti dalle radici modulo 5 e cerca una correzione per ciascuna.

<strong|2.> Risolvi <math|x<rsup|2>≡1<pmod|12>> separando i moduli 3 e 4. Perché possono comparire quattro radici?
</verifica>
