# Audit del blocco logica — Fondamenti di Programmazione 1 Spark

Lettura completa: note 21, 22, 23 settembre; 8, 12, 13 ottobre 2026. Nessun transcript corrispondente a queste sei note è disponibile nel censimento. Letti per confronto i capitoli archiviati 02, 03, 04, 05. Ispezionati introduzione e capitolo Bézout di Aritmetica Spark, standard didattico e tre skill aggiornate. Le fonti restano intatte.

## Mappa fonte → destinazione

| Nota | Contenuti sostanziali | Destinazione e selezione |
|---|---|---|
| 21/09 — Semantica del calcolo proposizionale | Connettivi e tabelle; alfabeto e grammatica; formalizzazione; interpretazioni e valutazione ricorsiva; modelli/conseguenza; tavole 2^n; soddisfacibilità/tautologie/contraddizioni; sostituzione per equivalenza | Cap. 2, sezioni «Formule, connettivi e interpretazioni», «Modelli, tautologie e controesempi», «Equivalenze e dimostrazioni motivate»: principale. Tabella completa dei connettivi, albero e una valutazione svolta; selezionata la conseguenza sugli amici, non tutte le varianti meteo e tutte le righe della tavola a tre variabili. Proprietà di riflessività/simmetria/transitività dell'equivalenza implicite nella nozione di uguaglianza dei valori; associatività dell'equivalenza non riprodotta come legge autonoma. |
| 22/09 — Equivalenze e sostituzione | Leggi booleane; complemento/assorbimento; catene; ipotesi; implicazioni e polarità; grammatica e precedenze; controesempi | Cap. 2, tutte le sezioni: principale. Principali famiglie di leggi esplicite, complemento dimostrato e duale negli esercizi; modus ponens e tollens motivati; sostituzione implicativa con direzione e due applicazioni. Non riprodotte tutte le lunghe catene alternative né l'esempio con quattro livelli di precedenza. |
| 23/09 — Forme normali e LPO | FNC/FND; risoluzione; completezza funzionale/NAND; assurdo/controposizione/casi; ipotesi; scambio; limiti CP ed espressività LPO | Cap. 2, «Equivalenze…» e «Per proseguire»: centrali le tecniche motivate, compatti forme normali/risoluzione/NAND con esempi e ragioni. Cap. 3 introduce LPO e formalizzazione. Le seconde prove simboliche, lo scambio come legge separata e il catalogo completo di tutte le leggi non sono riprodotti; ragionamento sotto ipotesi presente. |
| 08/10 — Sintassi LPO | Alfabeto/arietà; termini e formule; variabili libere/legate; ridenominazione; interpretazioni; formalizzazione di tutti/alcuni/unicità e antenati | Cap. 3 completo. Termini e formule distinti; cattura mostrata mediante rinomina preventiva; confronto domini {5,10,15} e ℕ; tutti/alcuni/tranne uno e antenato comune. Omesse varianti sulle città/clima e madre/fratelli, non necessarie alla progressione. Figure archiviate albero-formula e portata riutilizzate nel blocco. |
| 12/10 — Semantica LPO | Assegnamenti e aggiornamento; valutazione termini/formule e quantificatori; indipendenza da assegnamento per formule chiuse; modello/validità; proof systems correttezza/completezza; deduzione; leggi quantificatori | Cap. 4, sezioni «Assegnamenti…», «Negazione…», «Regole di prova…»: principale. Esempio ∃x(Q(x)∧∀yP(x,y)) con figura quantificatori. Leggi costante/non-vuoto, distribuzioni e versi non invertibili, ordine quantificatori spiegati. Indebolimento e unione filtri compatti nel Per proseguire. Non riprodotta tutta la valutazione S0–S6 pedissequa, già spiegata strutturalmente; omessa tavola P/Q/R a tre elementi ridondante. |
| 13/10 — Filtri, uguaglianza e specifiche | Quantificazione ristretta e vacuità; leggi di dominio; Leibniz/singoletto; generalizzazione/skolemizzazione; ordine ∃∀/∀∃; stati e specifiche | Cap. 3 prepara i filtri; cap. 4 tratta vacuità, leggi, uguaglianza e regole di prova. Specifiche, costanti iniziali e tre approcci alla semantica passano al blocco programmi (cap. 5 dell'orchestratore); cap. 4 chiude con σ⊨P. Esempio quantificatori invertiti aggiunto per chiarire la dipendenza del testimone. |

## Dipendenze e scelte didattiche

2. Calcolo proposizionale. Domanda: quando la conclusione segue davvero? Esempio iniziale amici al cinema → significato dei connettivi → sintassi e valutazione → conseguenza e controesempi → trasformazioni motivate → polarità. Forme normali/risoluzione/NAND sono secondarie e non necessarie alla lettura successiva.

3. Individui e formule. Domanda: come dire una proprietà generale senza elencare tutti i casi? Esempio dei pari → termini/formule → dipendenze libere/legate → sostituzione sicura → interpretazione → formalizzazione. Introduciamo la sostituzione qui perché servirà sia alle regole logiche sia all'assegnamento di Hoare.

4. Semantica e prove. Domanda: come valutare e dimostrare «tutti» ed «esiste»? Assegnamento → semantica dei quantificatori → leggi dal significato → dipendenze dei testimoni → regole di prova e uguaglianza → asserzioni sugli stati. Evitata la vecchia successione di grandi formulari e officine: la lettura sviluppa ragioni e poi nomi delle mosse.

## Correzioni e cautele

- Le date dei file Sep21–23 non coincidono con quelle di dispense citate in fondo (29/09, 01/10, 02/10). Usiamo i file come fonti nel periodo richiesto e documentiamo la discordanza senza rinominarli né ricostruire una cronologia non dimostrata.
- La nota 08/10 scrive una ridenominazione come sostituzione di «tutte le occorrenze»: sostituiamo solo le occorrenze libere nella portata e proteggiamo i quantificatori annidati.
- La polarità semplice vale per negazione, ∧, ∨, ⇒; prima si elimina ≡, non monotono. Conservata la cautela già aggiunta nell'archivio.
- Sotto quantificatore una sostituzione richiede una relazione uniforme su tutti i valori quantificati. Un'ipotesi su un assegnamento corrente non basta per inferire un universale. La formulazione troppo generale della nota 12/10 è qualificata esplicitamente.
- Eliminazione universale, introduzione esistenziale, Leibniz e singoletto usano sostituzioni senza cattura; i nomi di variabile x,y nel singoletto sono distinti.
- La «skolemizzazione» delle note è trattata come regola di uso di un testimone con nome nuovo e conclusione indipendente da quel nome. Non si presenta il falso passo semantico (∃x.P)⇒P(d) per d prefissata. È una correzione già presente nell'archivio, ora spiegata pazientemente.
- Dominio di interpretazione assunto non vuoto; un filtro ristretto può essere vuoto. Distinte le due questioni e mantenuta l'avvertenza sulle leggi che fallirebbero su un dominio vuoto.
- «Valida» significa in tutte le interpretazioni, non soltanto vera nell'interpretazione aritmetica desiderata.
- Come richiesto dall'orchestratore, l'errore della nota 25/09 che descrive la logica intuizionista come logica con valori aggiuntivi non viene ripreso; non introduciamo questa digressione nel blocco.

## Elaborati e verifiche

Sorgenti: logic/02.tm, 03.tm, 04.tm; appendice logic/solutions.tm. Sei esercizi, tutti con soluzione spiegata. Circa 4.400 parole contando markup come unità separate. Figure usate: albero-formula, portata, quantificatori, tutte archiviate e riutilizzabili. I riferimenti al blocco programmi sono soltanto al capitolo successivo.

Verifica indipendente finita: logic/check-logic.py, 448 controlli superati su tavole booleane, leggi di quantificatori in domini di due elementi, relazioni binarie e controesempi stampati. La verifica finita affianca e non sostituisce le giustificazioni generali nel testo. Restano all'orchestratore il controllo integrato, l'impaginazione e la verifica visiva finale.
