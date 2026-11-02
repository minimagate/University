# Revisione indipendente — capitoli 4–8

Revisione del testo completo dei cinque frammenti, effettuata come controllo matematico e come lettura di uno studente al primo incontro. Successivamente sono state lette e controllate tutte le dieci soluzioni di `answers-integers.tm`: corrispondono ai quesiti e ai calcoli indipendenti riportati sotto. Nessuna modifica effettuata ai capitoli 4–8 durante questa revisione. I blocker di markup e la formulazione dei resti CRT sono stati poi corretti dall'autore, come comunicato e verificato nei file aggiornati.

## Da correggere prima della compilazione

1. **Markup TeXmacs misto**, presente in tutti i capitoli: `<strong|1.</strong>`, `<strong|2.</strong>`, nei capitoli 5 e 8 anche titoli di teoremi chiusi con `</strong>`, capitolo 5 `<em|Dimostrazione.</em>`, capitolo 7 `<em|classe del risultato</em>`. Devono diventare normali tag brevi come `<strong|1.>` e `<em|Dimostrazione.>`. Il checker della skill individua questi errori; nessuna modifica matematica richiesta.

2. **08.tm, dopo la formula cinese `x=avn+bum`.** L'enunciato consente a,b interi arbitrari: il numero costruito è *congruo ad a modulo m e a b modulo n*, mentre non ha necessariamente resto letteralmente uguale ad a,b. Sostituire «ha resto a modulo m e b modulo n» con «è congruo ad a modulo m e a b modulo n» (o imporre i range dei rappresentanti, ma correggere la frase è più semplice).

## Valutazione matematica

Non ho trovato errori nelle prove principali. In particolare:

- la prova di esistenza della divisione funziona anche con a<0 e b=1; q=a produce a(1-b)=0;
- il principio del minimo è applicato correttamente a numeri non negativi;
- la prova di unicità usa correttamente la differenza dei resti;
- MCD non viene definito per (0,0), e i casi con un coefficiente nullo vengono gestiti;
- Bézout precede il lemma di Euclide e la fattorizzazione unica, evitando circolarità;
- la parametrizzazione diofantea è provata in entrambe le direzioni; la divisione per B è accompagnata dall'ipotesi B≠0 e segue il caso B=0;
- le coppie negative nella differenza di quadrati sono conteggiate;
- la buona definizione di somme e prodotti modulari è provata con le differenze dei rappresentanti;
- la costruzione di Q controlla denominatori non nulli e buona definizione;
- cancellazione e congruenze lineari cambiano il modulo in n/gcd(c,n), senza cancellazioni illegittime;
- il modulo ridotto uguale a 1 viene gestito esplicitamente;
- il teorema cinese distingue correttamente unicità della classe, compatibilità e periodo mcm per moduli non coprimi;
- l'estensione a più moduli coprimi contiene la ragione della coprimalità fra il prodotto già combinato e il modulo successivo.

## Possibili ritocchi didattici, senza allungare il libro

- **04.tm, esistenza della divisione:** la scelta q=a quando a<0 è corretta ma poco prevedibile. Basta aggiungere «Qui a e 1−b sono entrambi non positivi, quindi il loro prodotto è non negativo». Aiuta a leggere il segno senza una digressione.
- **04.tm, ultimo resto non nullo:** se il maggiore è multiplo del minore, il primo resto è già zero. La formula scolastica resta comprensibile trattando i dati come inizio della catena, ma per un principiante sarebbe più nitido «l'ultimo numero non nullo della catena di Euclide» oppure una breve precisazione «se il primo resto è zero, il MCD è il divisore stesso».
- **05.tm, esistenza della fattorizzazione:** è già provata per intero nel capitolo 1. Il libro può richiamarla e dedicare qui tutto lo spazio all'unicità; non occorre ripetere l'intera prova, per rispettare la leggerezza richiesta.
- **06.tm, figura reticolo:** il testo usa 2x+3y=5, il disegno originale 2x+3y=9. La didascalia lo dichiara correttamente. Una frase prima della figura («La figura mostra lo stesso passo su una retta parallela») rende meno brusco il cambio, senza rifare il disegno.
- **08.tm, densità:** il capitolo introduce inversi, cancellazione, lineari, cinese e generalizzazione. La sequenza è corretta; dopo la sezione centrale sul teorema cinese si potrebbe etichettare «Per proseguire» la parte sui moduli non coprimi, lasciando visibili tutti gli argomenti ma chiarendo le priorità di prima lettura.

## Calcoli ricontrollati indipendentemente

Ho ricalcolato mediante aritmetica esatta, enumerazione dei punti interi e enumerazione di resti (non ho eseguito né consultato lo script dell'autore):

- −29 = (−5)·6+1; Euclide per 84,30 dà 6;
- −30+2·18=6; 7 è impossibile, 12=−2·30+4·18;
- 180 ha 18 divisori positivi; gcd(180,48)=12; mcm(180,48)=720;
- 6x+9y=15 ha soluzione generale (1+3t,1−2t) e unica non negativa (1,1);
- 4x+6y=14 ha soluzione generale (2+3t,1−2t) e unica non negativa (2,1);
- x²−y²=15 ha le otto coppie indicate; x²−y²=8 ha (±3,±1), quattro scelte indipendenti di segni; 26 è impossibile modulo 4;
- [12]+[17]=[1] e [12][17]=[1] modulo 7;
- inverso di 5 modulo 12: 5; 8x≡4 modulo 12: 2,5,8,11;
- sistema x≡2 modulo 6, x≡5 modulo 9: x≡14 modulo 18; cambiando il secondo resto in 4: incompatibile;
- gli esempi cinesi nel testo danno rispettivamente 8 modulo 15 e 9 modulo 12.

