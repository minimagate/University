# Fondamenti di Programmazione — volume 1 Spark

Settembre–ottobre 2026, dalla prima nota disponibile (19 settembre) al 31 ottobre; ultima lezione presente: 29 ottobre.

- [Libro PDF](fondamenti-di-programmazione-1-spark.pdf)
- [Documento nativo TeXmacs](fondamenti-di-programmazione-1-spark.tm)
- [Copertura](coverage.md), [analisi delle fonti](source-audit.md), [scelte editoriali](editorial-notes.md), [verifica finale](validation.md)

## Modificare e rigenerare

Con Python 3 e GNU TeXmacs 2.1.5:

```sh
sh build.sh
```

`source/` contiene i capitoli UTF-8 modificabili; `templates/` il preambolo e le impostazioni; `scripts/` conserva tutte le dipendenze di assemblaggio, conversione, esportazione e controllo. Il build rigenera `.src`, `.tm` e PDF, aggiornando l'indice. Le figure PDF vettoriali sono già fornite: la ricompilazione ordinaria non richiede Swift. `TEXMACS_BIN` o `TEXMACS_APP` permettono di scegliere il motore. Il motore grafico macOS richiede una sessione che possa avviare applicazioni.

Il `.tm` completo è modificabile direttamente in TeXmacs; per conservare le modifiche al successivo build occorre riportarle nei frammenti sotto `source/`. Il build protegge il PDF e il `.tm` precedenti in caso di esportazione fallita.

Le estensioni locali al convertitore riguardano solo i simboli della logica e della semantica; il preambolo canonico aggiunge una macro per il codice in linea. Nei listati, spazi espliciti conservano l'indentazione e i vincoli di pagina tengono insieme le righe.

## Ripetere i controlli

```sh
python3 checks/foundations.py
python3 checks/check-logic.py
python3 checks/check-hoare.py
python3 checks/check-arrays.py
python3 checks/review-foundations-logic-checks.py
python3 checks/review-independent.py
python3 scripts/verify_sources.py
```

L'ultimo comando cerca il vault fra le cartelle ascendenti; per una copia esterna usare `--vault /percorso/University`. Gli script di verifica numerica non richiedono TeXmacs. Per le figure e gli strumenti di controllo visivo vedere [assets/README.md](assets/README.md). I risultati e le revisioni indipendenti sono conservati in `reviews/`.
