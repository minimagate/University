#!/usr/bin/env python3
"""Census of a course's lectures for a monthly book (run from the vault root).

  sources.py census COURSE FROM TO [--json fonti.json]
      Lists transcripts of _transcripts/COURSE with frontmatter date in [FROM, TO] (YYYY-MM-DD),
      and notes of Notes/COURSE/Lectures dated in the range, pairing them via the note's
      source_transcript. Some notes come from course PDFs (source_files) and have no transcript.
      Prints a Markdown table and, with --json, writes the traceability manifest: date, note,
      sha256, transcript, transcript_sha256, source_files, duration_seconds, sections (note
      headings), chapters (empty: fill in after planning).

  sources.py verify fonti.json
      Recomputes every hash; prints mismatches. Run at the end: sources must be untouched.

  sources.py books COURSE [--archive | --all] [--json] [--root BOOKS]
      Lists main Spark volumes by default; archived editions only when requested.
      Uses numeric volume order and ignores figures/chapter fragments.
"""
import argparse, hashlib, json, re, sys
from pathlib import Path

def front(p):
    t = p.read_text(encoding='utf-8')
    m = re.match(r'---\n(.*?)\n---\n', t, re.S)
    meta = {}
    if m:
        key = None
        for line in m.group(1).split('\n'):
            mm = re.match(r'(\w+):\s*(.*)', line)
            if mm: key = mm.group(1); meta[key] = mm.group(2).strip()
            elif key and line.startswith('  '): meta[key] += ' ' + line.strip()
    return meta, t

def sha(p): return hashlib.sha256(p.read_bytes()).hexdigest()

def census(course, a, b, out=None):
    tdir, ndir = Path('_transcripts') / course, Path('Notes') / course / 'Lectures'
    trans = {}
    for p in sorted(tdir.glob('*.md')):
        meta, _ = front(p)
        d = meta.get('date', p.name[:10])
        if a <= d <= b: trans[str(p)] = meta
    notes = {}
    for p in sorted(ndir.glob('*.md')) if ndir.exists() else []:
        meta, text = front(p)
        notes[str(p)] = (meta, text)
    entries = []
    used_t = set()
    for np, (meta, text) in notes.items():
        tp = meta.get('source_transcript') or None
        d = meta.get('date', Path(np).name[:10])
        if not (a <= d <= b or (tp in trans)): continue
        if tp and tp in trans: used_t.add(tp)
        tmeta = trans.get(tp, {}) if tp else {}
        entries.append((d, np, tp if tp and Path(tp).exists() else None, meta, tmeta, text))
    for tp, tmeta in trans.items():
        if tp not in used_t:
            entries.append((tmeta.get('date', ''), None, tp, {}, tmeta, ''))
    entries.sort(key=lambda e: (e[0], e[1] or e[2]))
    print('| Data | Min | Titolo | Fonte | Sezioni nota | Sintesi |\n|---|---:|---|---|---:|---|')
    manifest = []
    for d, np, tp, meta, tmeta, text in entries:
        secs = re.findall(r'^#{1,4} (.+)$', text, re.M) if np else []
        dur = int(tmeta.get('duration_seconds', 0) or 0)
        files = re.findall(r'^\s+- (.+)$', text.split('---', 2)[1], re.M) if np and text.startswith('---') else []
        src = 'nota + transcript' if np and tp else ('solo nota' + (f' ({", ".join(files)})' if files else '') if np else 'solo transcript')
        title = meta.get('title') or tmeta.get('title', '?')
        print(f"| {d} | {dur//60 if dur else '–'} | {title} | {src} | {len(secs)} | {tmeta.get('summary','')[:140]} |")
        manifest.append({'date': d, 'note': np, 'sha256': sha(Path(np)) if np else None,
                         'transcript': tp, 'transcript_sha256': sha(Path(tp)) if tp else None,
                         'source_files': files, 'duration_seconds': dur, 'sections': secs, 'chapters': []})
    tot = sum(m['duration_seconds'] for m in manifest)
    print(f'\n{len(manifest)} lezioni; {tot//3600} h {tot%3600//60} min di registrazione nei transcript.')
    for m in manifest:
        if not m['note']: print('ATTENZIONE: transcript senza nota (leggere il transcript):', m['transcript'])
        elif not m['transcript']: print('Nota: senza transcript, fonte primaria = nota', ('e ' + ', '.join(m['source_files'])) if m['source_files'] else '', '->', m['note'])
    if out:
        Path(out).write_text(json.dumps(manifest, ensure_ascii=False, indent=1), encoding='utf-8')
        print('scritto', out)

def verify(path):
    bad = ok = 0
    for e in json.loads(Path(path).read_text(encoding='utf-8')):
        for k, hk in (('note', 'sha256'), ('transcript', 'transcript_sha256')):
            if e.get(k) and e.get(hk):
                if sha(Path(e[k])) == e[hk]: ok += 1
                else: bad += 1; print('MODIFICATO:', e[k])
    print(f'{ok} fonti intatte, {bad} modificate')
    sys.exit(1 if bad else 0)

BOOK_SLUGS = {
    'Aritmetica': 'aritmetica',
    'Analisi 1': 'analisi',
    'Geometria 1': 'geometria',
    'Fondamenti di Programmazione': 'fondamenti-di-programmazione',
}

def course_slug(course):
    for name, slug in BOOK_SLUGS.items():
        if name.casefold() == course.strip().casefold():
            return slug
    return re.sub(r'\s+', '-', course.strip().lower())

def discover_books(course, root=Path('Books'), scope='active'):
    """Discover actual editions, never count figure PDFs or legacy copies as volumes."""
    root = Path(root)
    pattern = re.compile(re.escape(course_slug(course)) + r'-(\d+)(-spark)?$')
    entries = []
    for pdf in root.rglob('*.pdf'):
        rel = pdf.relative_to(root)
        if any(part.startswith('.') or part == 'assets' or part.endswith('-assets')
               or part in {'source', 'scripts', 'checks', 'reviews', 'templates'}
               for part in rel.parts[:-1]):
            continue
        match = pattern.fullmatch(pdf.stem)
        if not match:
            continue
        archived = bool(rel.parts and rel.parts[0].casefold() == 'archive')
        spark = bool(match.group(2))
        status = 'archived' if archived else ('main' if spark else 'legacy-unarchived')
        if scope == 'active' and status != 'main':
            continue
        if scope == 'archive' and not archived:
            continue
        source = pdf.with_suffix('.tm')
        bundle = pdf.parent if spark and pdf.parent.name == pdf.stem else None
        period = rel.parts[1 if archived else 0] if len(rel.parts) > (2 if archived else 1) else ''
        doc = (bundle / 'coverage.md') if bundle else pdf.with_name(pdf.stem + '-mappa.md')
        entries.append({
            'course': course, 'volume': int(match.group(1)), 'edition': 'spark' if spark else 'legacy',
            'status': status, 'period': period,
            'pdf': str(pdf), 'source': str(source) if source.exists() else None,
            'bundle': str(bundle) if bundle else None,
            'coverage': str(doc) if doc.exists() else None,
        })
    return sorted(entries, key=lambda e: (e['volume'], e['period'], e['status'], e['pdf']))

def books(course, root=Path('Books'), scope='active', as_json=False):
    entries = discover_books(course, root, scope)
    if as_json:
        print(json.dumps(entries, ensure_ascii=False, indent=2))
        return
    if not entries:
        print(f'Nessuna edizione {"Spark principale" if scope == "active" else "nel perimetro scelto"} per {course}.')
        return
    for e in entries:
        label = {'main': 'Principale Spark', 'archived': 'Archivio', 'legacy-unarchived': 'Precedente non archiviato'}[e['status']]
        print(f"{label} | volume {e['volume']} | {e['period']} | {e['pdf']}")
        if e['coverage']:
            print('  Copertura/mappa:', e['coverage'])
        if e['source'] is None:
            print('  ATTENZIONE: manca il sorgente TeXmacs del PDF.')

if __name__ == '__main__':
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    sub = ap.add_subparsers(dest='command', required=True)
    cp = sub.add_parser('census')
    cp.add_argument('course'); cp.add_argument('start'); cp.add_argument('end'); cp.add_argument('--json')
    vp = sub.add_parser('verify'); vp.add_argument('manifest')
    bp = sub.add_parser('books'); bp.add_argument('course')
    group = bp.add_mutually_exclusive_group()
    group.add_argument('--archive', action='store_true'); group.add_argument('--all', action='store_true')
    bp.add_argument('--json', action='store_true'); bp.add_argument('--root', type=Path, default=Path('Books'))
    a = ap.parse_args()
    if a.command == 'census':
        census(a.course, a.start, a.end, a.json)
    elif a.command == 'verify':
        verify(a.manifest)
    else:
        books(a.course, a.root, 'all' if a.all else 'archive' if a.archive else 'active', a.json)
