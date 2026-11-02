# Figure e fonti — Analisi 1 Spark

Le 23 figure richiamate nel libro sono copie vettoriali riutilizzate dalla biblioteca di `Books/Archive/October/analisi-1-assets/`, conservata intatta. `figure-provenance.json` registra provenienza e capitolo. Il generatore `disegni.py` conserva solo le funzioni selezionate e gli aiuti che usano, insieme a `figlib.py` e al convertitore Swift.

Scala fisica: 1 unità SVG = 0,25 mm. Le dimensioni di ogni figura sono in `sizes.json`. Linee fini monocrome, etichette STIX Two, titoli e descrizioni accessibili negli SVG. I PDF sono vettoriali e vengono incorporati da TeXmacs.

Dalla cartella principale del bundle, per rigenerare i disegni:

```sh
python3 assets/disegni.py assets assets/sizes.json
mkdir -p /private/tmp/analisi-spark-swift-cache
swift -module-cache-path /private/tmp/analisi-spark-swift-cache assets/svg-to-pdf.swift assets
sh build.sh
```

Per ricostruire normalmente il libro basta `sh build.sh`: i PDF delle figure sono già forniti. La generazione degli SVG non sovrascrive `fonti.json`.

`fonti.json` contiene le 16 note del corso, le 5 trascrizioni associate, le impronte SHA-256 e le destinazioni nei capitoli. I nomi dei PDF originari citati nelle note di ottobre sono metadati: tali PDF non sono presenti nel workspace e non se ne dichiara la consultazione diretta.
