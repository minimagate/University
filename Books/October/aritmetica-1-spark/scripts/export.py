#!/usr/bin/env python3
"""Typeset, refresh TOC/references, save .tm, and atomically publish a fresh PDF."""
import argparse
import os
from pathlib import Path
import subprocess
import sys
import tempfile


def scheme_string(value):
    return '"' + str(value).replace('\\', '\\\\').replace('"', '\\"').replace('\n', '\\n').replace('\r', '\\r') + '"'


def export(tm, out, timeout):
    tm, out = tm.resolve(strict=True), out.resolve()
    if tm == out:
        raise ValueError('The source and PDF paths must differ')
    original = tm.read_bytes()
    env = os.environ.copy()
    app = Path(env.get('TEXMACS_APP', '/Applications/TeXmacs.app'))
    engine = Path(env.get('TEXMACS_BIN', str(app / 'Contents/MacOS/TeXmacs')))
    custom = Path.home() / '.my-texmacs/TeXmacs'
    if not env.get('TEXMACS_PATH') and custom.is_dir():
        env['TEXMACS_PATH'] = str(custom)
    # A fresh destination cannot accidentally validate an older successful export.
    with tempfile.TemporaryDirectory(prefix='.texmacs-export-', dir=out.parent) as work:
        work = Path(work)
        draft, result = work / 'draft.pdf', work / 'result.pdf'
        env.setdefault('TEXMACS_HOME_PATH', str(work / 'home'))
        Path(env['TEXMACS_HOME_PATH']).mkdir(parents=True, exist_ok=True)
        url = lambda p: '(system->url ' + scheme_string(p) + ')'
        program = ('(begin (load-buffer ' + url(tm) + ') '
                   '(print-to-file ' + url(draft) + ') (generate-all-aux) '
                   '(update-document "all") (print-to-file ' + url(draft) + ') '
                   '(update-document "all") (buffer-save (current-buffer)) '
                   '(print-to-file ' + url(result) + ') (quit-TeXmacs))')
        try:
            run = subprocess.run([str(engine), '-H', '-x', program], env=env,
                                 stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
                                 timeout=timeout)
            log = run.stdout.decode('utf-8', errors='replace')
            if run.returncode:
                if log:
                    print(log, end='' if log.endswith('\n') else '\n')
                raise RuntimeError(f'TeXmacs exited with status {run.returncode}')
            if not result.is_file():
                if log:
                    print(log, end='' if log.endswith('\n') else '\n')
                raise RuntimeError('TeXmacs did not create a fresh PDF')
            data = result.read_bytes()
            if not data.startswith(b'%PDF-') or b'%%EOF' not in data[-2048:]:
                raise RuntimeError('TeXmacs produced an incomplete or invalid PDF')
            # Quiet routine first-run/font messages only after a verified export.
            routine = ('---', 'Welcome to TeXmacs', 'Installation', 'I will now',
                       'TeXmacs] approximating font', 'TeXmacs] With',
                       'TeXmacs] Generating')
            for line in log.splitlines():
                if line and not line.startswith(routine):
                    print(line)
            os.replace(result, out)
        except BaseException:
            # The engine saves the TOC before its final print. Restore on failure.
            tm.write_bytes(original)
            raise
    print(f'PDF generated: {out}')


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('tm', type=Path)
    parser.add_argument('pdf', type=Path)
    parser.add_argument('--timeout', type=float, default=600)
    args = parser.parse_args()
    if args.timeout <= 0:
        parser.error('--timeout must be positive')
    try:
        export(args.tm, args.pdf, args.timeout)
    except (OSError, ValueError, RuntimeError, subprocess.TimeoutExpired) as exc:
        sys.exit(f'Export failed: {exc}')


if __name__ == '__main__':
    main()
