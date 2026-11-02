# Aritmetica 1 Spark

Libro di settembre e ottobre 2026: **52 pagine, 12 capitoli, 23 figure vettoriali e 24 esercizi con soluzioni ragionate**.

- `aritmetica-1-spark.pdf`: volume da leggere e stampare.
- `aritmetica-1-spark.tm`: documento completo nativo GNU TeXmacs, modificabile.
- `source/`: capitoli e soluzioni in UTF-8; `templates/`: impaginazione e riquadri.
- `assets/`: figure SVG modificabili e copie PDF vettoriali, generatore, dimensioni e manifesto delle fonti.
- `coverage.md`: corrispondenza fra lezioni e sezioni, con selezioni esplicite.
- `editorial-notes.md`: scelte didattiche, aggiunte e correzioni.
- `source-audit.md`: inventario dettagliato delle 14 note e 13 trascrizioni.
- `validation.md`, `checks/`, `reviews/`: verifiche numeriche e revisione.

## Rigenerare il libro

Servono Python 3.8+ e GNU TeXmacs (verificato con 2.1.5). Dalla cartella del libro:

```sh
sh build.sh
```

Il comando assembla i file `source/*.tm`, converte simboli Unicode e formule nel formato nativo, verifica la sintassi, aggiorna l'indice e genera il PDF. La coppia `scripts/export.sh` e `scripts/export.py` gestisce avvio, timeout e controllo dell’output senza dipendenze aggiuntive; una compilazione fallita conserva il PDF e il documento nativo pubblicati. Le figure PDF sono già incluse: Swift non serve per una normale ricompilazione. Se è presente la personalizzazione locale `~/.my-texmacs/TeXmacs`, viene riutilizzata.

Per cambiare il testo in modo riproducibile, modifica i capitoli in `source/` e ricompila. Se invece modifichi direttamente il `.tm` completo con TeXmacs, esporta da quel documento: `build.sh` ricostruisce il `.tm` dai capitoli e sostituirebbe quelle modifiche manuali.

## Verificare i calcoli e le fonti

```sh
python3 checks/foundations.py
python3 checks/integers.py
python3 checks/algebra.py
python3 checks/algebra-independent.py
python3 scripts/verify_sources.py
```

La verifica delle fonti cerca la radice del vault risalendo dalle cartelle del libro. Se il libro viene spostato fuori dal vault, i controlli numerici restano utilizzabili, mentre occorre indicare il percorso del vault a `verify_sources.py`.

## Modificare le figure

Tutte le 37 figure originali sono conservate; il libro ne usa 23. Il generatore `assets/disegni.py` è autosufficiente e produce gli SVG. Per rigenerarli e aggiornare le dimensioni:

```sh
python3 assets/disegni.py assets assets/sizes.json
swift assets/svg-to-pdf.swift assets
sh build.sh
```

La conversione SVG→PDF richiede macOS e Swift/WebKit. Le figure mantengono lo stile monocromo a tratto sottile dell'originale. Le fonti delle lezioni e il volume precedente non vengono modificati.

## Edizione principale e archivio

Spark è ora il formato predefinito dei libri: l'[indice principale](../../README.md) mostra le edizioni disponibili. Il volume precedente è conservato in `Books/Archive/October/aritmetica-1.*` con la sua cartella asset. Le impronte storiche rimangono invariate; `scripts/verify_sources.py` risolve i percorsi attraverso `Books/Archive/relocations.json`.
