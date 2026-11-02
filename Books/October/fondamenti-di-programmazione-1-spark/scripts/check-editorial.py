"""Check required Spark chapter openings; flag prose for human review.

This heuristic excludes formulas/code and cannot measure conceptual density.
Long-paragraph warnings are advisory; missing/empty chapter openings fail.
"""
from pathlib import Path
import argparse,re,json

def remove_math(text):
    result=[];i=0
    while i<len(text):
        if text.startswith('<math|',i):
            depth=0;j=i
            while j<len(text):
                if text.startswith('\\<',j):
                    end=text.find('\\>',j+2);j=end+2 if end>=0 else len(text);continue
                if text[j]=='<':depth+=1
                if text[j]=='>':
                    depth-=1
                    if depth==0:j+=1;break
                j+=1
            result.append(' [formula] ');i=j
        else:result.append(text[i]);i+=1
    return ''.join(result)

def prose(text):
    text=remove_math(text)
    text=re.sub(r'<\\?[-\w*]+\|',' ',text)
    text=re.sub(r'</?[-\w*]+>',' ',text)
    text=re.sub(r'\\<[^>]*\\>',' ',text)
    return text.replace('>',' ').replace('|',' ')

def inspect(bundle):
    findings=[];chapters=[];missing=[];total=0
    for p in sorted((Path(bundle)/'source').glob('*.tm')):
        text=p.read_text()
        if '<chapter|' in text:
            chapters.append(p.name)
            start=text.index('<chapter|')
            depth=0;end=start
            for end in range(start,len(text)):
                if text[end]=='<':depth+=1
                elif text[end]=='>':
                    depth-=1
                    if depth==0:break
            opening=re.match(r'\s*<\\inbreve>(.*?)</inbreve>',text[end+1:],re.S)
            if not opening or len(re.findall(r'\w+',prose(opening.group(1))))<6:
                missing.append(p.name)
        in_code=False
        for m in re.finditer(r'(?:\A|\n[ \t]*\n)(.*?)(?=\n[ \t]*\n|\Z)',text,re.S):
            block=m.group(1).strip()
            if '<\\verbatim>' in block:in_code=True
            if in_code:
                if '</verbatim>' in block:in_code=False
                continue
            if block.startswith(('<\\equation','<tabular','<\\table','<figura|')):continue
            clean=prose(block)
            words=re.findall(r"[A-Za-zÀ-ÖØ-öø-ÿ]+(?:[’'][A-Za-zÀ-ÖØ-öø-ÿ]+)?",clean)
            n=len([w for w in words if w!='formula'])
            if n<12:continue
            total+=1
            if n>80:
                findings.append({'source':p.name,'line':text[:m.start(1)].count('\n')+1,'words':n,'start':clean.strip()[:125]})
    return {'bundle':str(bundle),'chapters':len(chapters),'missing_inbreve':missing,'prose_paragraphs':total,'paragraphs_over80_words':findings}

if __name__=='__main__':
    parser=argparse.ArgumentParser();parser.add_argument('bundle',type=Path);parser.add_argument('--json',type=Path)
    args=parser.parse_args();r=inspect(args.bundle)
    if args.json:args.json.write_text(json.dumps(r,ensure_ascii=False,indent=2))
    print(f"{args.bundle.name}: {r['chapters']} chapters; missing In breve {r['missing_inbreve']}; {len(r['paragraphs_over80_words'])} prose paragraphs >80 ordinary words (review flags, not a readability grade)")
    for f in r['paragraphs_over80_words']:print(f"  {f['source']}:{f['line']} {f['words']} words: {f['start']}")

    raise SystemExit(1 if r['missing_inbreve'] else 0)
