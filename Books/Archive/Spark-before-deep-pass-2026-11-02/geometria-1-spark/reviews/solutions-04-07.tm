<section|Spazi vettoriali e sottospazi>

<strong|4.1.> La valutazione nel punto 1 rispetta le due operazioni: <math|(p+q)(1)=p(1)+q(1)> e <math|(αp)(1)=αp(1)>. Se <math|p(1)=q(1)=0>, anche la somma vale zero in 1; così ogni multiplo. Il polinomio nullo appartiene all'insieme. I tre controlli dimostrano che è un sottospazio. L'insieme con <math|p(1)=2> non contiene il polinomio nullo, quindi non è un sottospazio. Per esempio contiene il polinomio costante 2, ma non il suo multiplo per zero.

<strong|4.2.> Isoliamo <math|z=-x-y> e lasciamo liberi <math|x=s,y=t>. Ogni soluzione si scrive

<\equation*>
(s,t,-s-t)=s(1,0,-1)+t(0,1,-1).
</equation*>

Viceversa, questa espressione ha sempre somma delle tre componenti zero, quindi non produce vettori estranei a <math|H>. Per <math|s=t=1> otteniamo <math|(1,1,-2)>, che appartiene a <math|H>. Il controllo diretto <math|1+1-2=0> conferma il risultato.

<section|Span, indipendenza e basi>

<strong|5.1.> Il secondo vettore è il doppio del primo. Ogni combinazione è

<\equation*>
α(1,2)+β(2,4)=(α+2β)(1,2).
</equation*>

Lo span è quindi la retta <math|{t(1,2):t∈ℝ}>. La relazione <math|2(1,2)-(2,4)=0> è non banale, dunque i vettori sono dipendenti. Per il vettore richiesto abbiamo, per esempio, <math|(3,6)=3(1,2)+0(2,4)> e <math|(3,6)=1(1,2)+1(2,4)>. La dipendenza permette proprio queste scritture diverse.

<strong|5.2.> Cerchiamo <math|α,β> con <math|α(1,1)+β(1,-1)=(5,-1)>. Le componenti impongono <math|α+β=5> e <math|α-β=-1>. Sommandole troviamo <math|2α=4>, quindi <math|α=2> e <math|β=3>. Le coordinate sono <math|(2,3)>; ricostruendo, <math|2(1,1)+3(1,-1)=(5,-1)>. Una famiglia contenente zero ha la relazione <math|1·0=0>, con coefficienti nulli sugli altri vettori: non è indipendente, e quindi non è una base.

<section|Dimensione e completamento>

<strong|6.1.> Dal teorema del fattore <math|p(2)=0> equivale a <math|p=(X-2)q>, con <math|q> di grado al più 1, incluso zero. Scriviamo <math|q=a+bX>. Allora

<\equation*>
p=a(X-2)+bX(X-2).
</equation*>

Quindi <math|(X-2,X(X-2))> genera <math|W>. Per l'indipendenza, nella relazione <math|a(X-2)+bX(X-2)=0> il coefficiente di <math|X<rsup|2>> è <math|b>, che deve essere zero. Rimane <math|a(X-2)=0>, il cui coefficiente di <math|X> è <math|a>, dunque anch'esso è zero. La famiglia è una base di due elementi: <math|dim W=2>.

<strong|6.2.> Possiamo aggiungere <math|e<rsub|2>=(0,1)>. Da <math|α(2,3)+β(0,1)=(0,0)> la prima componente dà <math|2α=0>, quindi <math|α=0>. La seconda dà allora <math|β=0>. I due vettori sono indipendenti e sono tanti quanti la dimensione 2 del piano, quindi formano una base. Quattro vettori di <math|ℝ<rsup|3>> sono invece più della dimensione: se fossero indipendenti, il lemma di scambio imporrebbe <math|4≤3>, impossibile. Dunque sono sempre dipendenti.

<section|Somme e formula di Grassmann>

<strong|7.1.> Scegliamo <math|W=<math-up|span>((1,-1))>. Le due rette sono distinte e il sistema <math|α(1,1)=β(1,-1)> dà <math|α=β> e <math|α=-β>, quindi <math|α=β=0>: l'intersezione è nulla. I due vettori formano la base studiata nel capitolo 5 e generano il piano. Abbiamo quindi <math|ℝ<rsup|2>=U⊕W>. La scomposizione è

<\equation*>
(3,1)=2(1,1)+1(1,-1)=(2,2)+(1,-1).
</equation*>

È unica perché la differenza fra due primi addendi dovrebbe stare nell'intersezione, che contiene soltanto zero.

<strong|7.2.> Poniamo <math|q=dim(U∩W)>. Grassmann dà <math|dim(U+W)=6-q>. La somma è contenuta in <math|ℝ<rsup|4>>, perciò <math|6-q≤4> e <math|q≥2>. L'intersezione è contenuta in ciascuno spazio di dimensione 3, quindi <math|q≤3>. I soli valori possibili sono 2 e 3. Per 2 scegliamo <math|U=<math-up|span>(e<rsub|1>,e<rsub|2>,e<rsub|3>)> e <math|W=<math-up|span>(e<rsub|1>,e<rsub|2>,e<rsub|4>)>: l'intersezione è <math|<math-up|span>(e<rsub|1>,e<rsub|2>)>. Per 3 basta scegliere <math|U=W=<math-up|span>(e<rsub|1>,e<rsub|2>,e<rsub|3>)>. I due esempi realizzano tutti i valori consentiti.
