
  <appendix|La cassetta degli attrezzi>

  Le dimostrazioni di questo libro usano pochi schemi, sempre gli stessi. Quando non sai da dove cominciare, guarda la forma della frase da dimostrare e cerca qui l'attrezzo adatto.

  <\padded>
    <tabular|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-valign|t>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|-1|1|1|cell-width|0.25par>|<cwith|1|-1|1|1|cell-hmode|exact>|<cwith|1|-1|3|3|cell-width|0.17par>|<cwith|1|-1|3|3|cell-hmode|exact>|<cwith|1|-1|2|2|cell-width|0.55par>|<cwith|1|-1|2|2|cell-hmode|exact>|<cwith|1|-1|1|-1|cell-tsep|0.45fn>|<cwith|1|-1|1|-1|cell-bsep|0.45fn>|<cwith|1|1|1|-1|cell-bborder|0.6pt>|<cwith|2|-1|1|-1|cell-bborder|0.25pt>|<cwith|1|-1|1|1|cell-lsep|0fn>|<cwith|1|-1|3|3|cell-rsep|0fn>|<table|<row|<cell|<strong|Se la frase dice…>>|<cell|<strong|prova a…>>|<cell|<strong|vedi>>>|<row|<cell|«ciò che il sistema deve fare»>|<cell|scrivi lo stato iniziale e quello finale, e cerca le parole vaghe>|<cell|officina 1, cap. 1>>|<row|<cell|«basta un caso?», «per ogni»>|<cell|cerca un controesempio piccolo; se non c'è, dimostra per tutti i casi>|<cell|officina 2, cap. 2>>|<row|<cell|«dimostra che…»>|<cell|scrivi una catena, un passo per riga, ogni passo con la sua legge>|<cell|officina 3, cap. 3>>|<row|<cell|«se e solo se», «ogni … è …»>|<cell|traduci una proposizione alla volta, e controlla le parentesi>|<cell|officina 4, cap. 4>>|<row|<cell|«per ogni x esiste un y»>|<cell|scrivi l'ordine dei quantificatori; cerca un controesempio con un dominio piccolo>|<cell|officina 5, cap. 5>>|<row|<cell|«che cosa fa questo programma?»>|<cell|eseguilo a mano su un caso piccolo, con una colonna per variabile>|<cell|officina 6, cap. 6>>|<row|<cell|«calcola la precondizione»>|<cell|parti dalla postcondizione e risali comando per comando, con (ass)>|<cell|officina 7, cap. 7>>|<row|<cell|«il ciclo termina e fa…»>|<cell|scrivi invariante, guardia e funzione di terminazione, poi verifica i cinque obblighi>|<cell|officina 8, cap. 8>>|<row|<cell|«per ogni elemento dell'array»>|<cell|separa le zone (già elaborata, da elaborare) e scrivi che cosa sai di ciascuna>|<cell|officina 9, cap. 9>>>>>
  </padded>

  Un'abitudine vale per tutti: prima di dimostrare, prova su un caso piccolo e sui valori limite. Una traccia sbagliata fa emergere l'errore in pochi minuti.

  <appendix|Risposte alle verifiche>

  <strong|1.>

  a) Viola la non ambiguità: «dolce» non è una condizione che un esecutore possa controllare (quando è «dolce»?). Forse viola anche la finitezza, se si aggiunge zucchero senza fine.

  b) <math|{x↦3,y↦3}> è uno stato. <math|{x↦3,x↦4}> non lo è: uno stato associa a ogni identificatore al più un valore, e qui <math|x> ne avrebbe due.

  c) Bastano dieci confronti: ogni confronto dimezza i casi possibili, e <math|2<rsup|10>=1024≥1000>.

  <strong|2.>

  a) <math|e⇒¬p>. «Esco solo se non piove» dice che uscire richiede non piovere: <math|¬p> è condizione necessaria per <math|e>.

  b) La formula è soddisfacibile, perché basta <math|p=<falso>>. Non è una tautologia: con <math|p=<vero>> e <math|q=<falso>> diventa falsa.

  c) Con <math|a=<falso>> e <math|b=<vero>> le premesse sono vere e la conclusione <math|¬b> è falsa: il controesempio mostra che l'argomento non è valido.

  <strong|3.>

  a) In <math|¬(P⇒Q)∧R> la <math|P> è positiva (attraversa due negazioni: quella esterna e l'antecedente di <math|⇒>), <math|Q> è negativa (una sola negazione), <math|R> è positiva. Infatti <math|¬(P⇒Q)∧R≡P∧¬Q∧R>.

  b) <math|P∧(¬P∨Q)≡(P∧¬P)∨(P∧Q)> per distributività, <math|≡F∨(P∧Q)> per contraddizione, <math|≡P∧Q> per unità.

  c) <math|¬P≡P↑P>, perché <math|P↑P≡¬(P∧P)≡¬P>.

  <strong|4.>

  a) Sono libere la <math|y> in <math|q(x,y)> e la <math|x> in <math|r(x)>. La <math|x> in <math|q(x,y)> è legata dal <math|∀x> interno; quella in <math|p(x)> dal <math|∃x>.

  b) <math|∀x.<math-up|pari>(x)⇒<math-up|dispari>(<math-up|succ>(x))> è una formula; <math|<math-up|succ>(x)> è un termine.

  c) In <math|ℐ<rsub|2>> il dominio contiene solo <math|5, 10, 15>, tutti multipli di <math|5>; in <math|ℐ<rsub|3>> c'è anche <math|7>, che non lo è. Il dominio fa la differenza.

  <strong|5.>

  a) <math|∃x.(p(x)∧∀y.¬q(x,y))>.

  b) Se <math|d> comparisse nelle premesse, potremmo usare fatti su un elemento particolare: da <math|p(a)> concluderemmo <math|∀x.p(x)>, che è un'inferenza sbagliata.

  c) <math|∀x.∃y.P(x,y)> è vera: per <math|a> si usa <math|b>, per <math|b> si usa <math|a>. <math|∃y.∀x.P(x,y)> è falsa: nessuna <math|y> va bene per entrambi.

  <strong|6.>

  a) Lo stato finale è <math|{x↦7,y↦3}>: <math|x=3+7=10>, poi <math|y=10-7=3>, poi <math|x=10-3=7>. È lo scambio senza variabile ausiliaria.

  b) La <math|x> compare nella postcondizione ed è modificata: <math|x=2·x> nello stato finale vale solo per <math|x=0>. Serve una variabile di specifica: <math|x=A∧A≥0⟶x=2·A>.

  c) No: la successione è <math|5,3,1,-1,-3,…> e non passa mai per <math|0>, quindi la guardia resta vera per sempre.

  <strong|7.>

  a) Con <math|x=5>, <tt|x := x + 1> dà <math|x=6>, non <math|x=5>: la tripla non è soddisfatta.

  b) Con (ass): <math|<math-up|def>(x·2)∧(y›10)[x·2/y]≡(x·2›10)≡(x›5)>. La precondizione richiesta è <math|x›5>.

  c) Con <math|x=2>, <math|1<space|0.2em><math-up|div><space|0.2em>2=0≠1>: la postcondizione non vale. Con <math|x=0> la divisione non è definita. La tripla non è soddisfatta.

  <strong|8.>

  a) Ingresso, invarianza, terminazione, progresso e uscita.

  b) No, con l’invariante <math|x≥0>. Da <math|x=1> la guardia resta vera per sempre, quindi nessuna funzione di terminazione può esistere. L'obbligo che fallisce è il progresso: nessuna quantità intera non negativa diminuisce a ogni giro.

  c) Si usa <math|<math-up|expt>=n-i>. Sotto l'invariante <math|0≤i≤n>, <math|n-i≥0>: è il terzo obbligo. Se <math|i‹n>, allora <math|n-(i+1)‹n-i>: è il progresso. Il ciclo si ferma con <math|i=n>.

  <strong|9.>

  a) Il secondo comando, <tt|y := x>, leggerebbe il nuovo <math|x>: il vecchio valore va salvato in <tt|temp> prima di aggiornare <math|x>.

  b) L'elemento arrivato da destra, <math|a[y-1]>, non è ancora classificato: va esaminato di nuovo, quindi <math|x> resta fermo.

  c) <math|f(6)=f(3)=f(1)+f(2)=1+1=2>.
