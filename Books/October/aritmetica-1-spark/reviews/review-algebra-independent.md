# Revisione indipendente dei capitoli 9–12

Letti integralmente i frammenti 09.tm, 10.tm, 11.tm e 12.tm il 2 novembre 2026.

## Esito matematico

Nessun errore matematico sostanziale trovato. Controllati in particolare:

- cancellazione nei gruppi non abeliani senza scambiare fattori;
- unicità di neutro e inverso;
- differenza fra inversi additivi e moltiplicativi;
- campo Z/nZ se e solo se n primo, per n≥2;
- buona definizione e biiettività della mappa cinese;
- criterio xy^-1 per i sottogruppi;
- ordine finito e g^k=e se e solo se l'ordine divide k, anche k negativo;
- ordine del generato, composizione di permutazioni e mcm dei cicli;
- soluzione delle esponenziali mediante appartenenza al generato e periodo dell'esponente;
- decimali razionali, antiperiodo esatto e ordine del 10 sul fattore coprimo;
- discriminante per p dispari e coefficiente principale invertibile;
- espansione quadratica del sollevamento, tutte le alternative singolari;
- ricomposizione delle radici con CRT e conteggio 2^r per gli idempotenti.

I risultati non dipendono da Lagrange/Eulero o altro materiale di novembre.

## Microprecisazioni comunicate al coordinatore

1. Capitolo 11, box equazione esponenziale: la condizione di appartenenza al ciclo va formulata «se e solo se», anziché il solo «se».
2. Capitolo 10, radici dell'unità: esplicitare n≥1.
3. Completezza selettiva: il teorema che ogni sottogruppo di Z è dZ può essere inserito nel percorso Per proseguire con minimo e divisione. Il blocco interi non include l'applicazione MCD(3^a−1,3^b−1); registrare l'omissione come esercizio tecnico nella coverage se non viene aggiunta altrove.

## Esito didattico

Il passaggio operazione→gruppo→anello→campo è leggibile e non confonde insieme e operazione. I casi del sollevamento sono costruiti prima con numeri, poi generalizzati. Il discriminante e le immagini complesse sono già separati come Per proseguire. La derivazione del periodo decimale è più impegnativa del resto del capitolo ma include i prerequisiti necessari e spiega il ruolo della frazione ridotta.

Controlli indipendenti numerici in `checks-algebra-independent.py`; non sostituiscono le verifiche testuali sopra.
