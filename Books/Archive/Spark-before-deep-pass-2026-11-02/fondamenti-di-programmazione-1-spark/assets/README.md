# Figure e provenienza

La libreria conserva i 19 disegni SVG/PDF del vecchio volume di Fondamenti, con generatore `disegni.py`, `figlib.py`, convertitore e dimensioni fisiche in `sizes.json`. Il testo richiama una selezione dei disegni; quelli non richiamati restano disponibili come libreria riutilizzabile. Provenienza: `Books/Archive/October/fondamenti-di-programmazione-1-assets/`, preservata integralmente.

Scala: 1 unità SVG = 0,25 mm, linee sottili monocrome, etichette STIX Two. I PDF rimangono vettoriali nel documento nativo e nel libro.

Rigenerare gli SVG e le dimensioni dalla cartella del bundle:

```sh
python3 assets/disegni.py assets assets/sizes.json
swift -module-cache-path /tmp/fdp-swift-cache assets/svg-to-pdf.swift assets
sh build.sh
```

Per una compilazione ordinaria non occorre rigenerare le figure. Il generatore non modifica `fonti.json`. Le immagini di controllo sono intermedie e rimangono fuori dal bundle.

`fonti.json` contiene le 13 lezioni, percorsi, SHA-256, titoli di sezione e destinazioni. `original-hashes.json` include le fonti e tutti i file del vecchio volume e del riferimento Aritmetica Spark fotografati prima della produzione. `scripts/verify_sources.py` verifica entrambi rispetto al vault.

Per controllare il PDF visivamente:

```sh
sh scripts/tools.sh /tmp/fdp-review-bin
/tmp/fdp-review-bin/pdfrender fondamenti-di-programmazione-1-spark.pdf /tmp/fdp-pages 1.2
```

La figura Fibonacci è adattata localmente: mostra il passo (x,y)=(3,2)→(5,3) e il valore conservato nel temporaneo in uno spazio più breve. Generatore, SVG, PDF e dimensioni sono aggiornati insieme. Gli altri disegni della libreria sono copie degli originali; l’archivio è intatto.
