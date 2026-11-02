"""Check required Spark chapter openings; flag prose for human review.

This heuristic excludes formulas/code and cannot measure conceptual density.
Long-paragraph warnings are advisory; missing/empty chapter openings fail.
Rhythm diagnostics (sentence length, short-sentence share, colons, recurring
verbal tics) are per-chapter signals for human review, not grades; they never
affect the exit code.
"""
from pathlib import Path
import argparse,re,json

WORD_RE=re.compile(r"[A-Za-zÀ-ÖØ-öø-ÿ]+(?:[’'][A-Za-zÀ-ÖØ-öø-ÿ]+)?")
SENTENCE_END=re.compile(r'[.?!](?=\s)')
RHYTHM_TICS=[r'conserv\w*',r'restituisc\w*',r'proprio',r'il punto è',r'non basta']

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

def ordinary_words(text):
    return [w for w in WORD_RE.findall(text) if w!='formula']

def strip_blocks(text):
    text=re.sub(r'<\\verbatim>.*?</verbatim>',' ',text,flags=re.S)
    return re.sub(r'<\\equation\*>.*?</equation\*>',' ',text,flags=re.S)

def rhythm(clean):
    words=ordinary_words(clean)
    sents=[len(ordinary_words(s)) for s in SENTENCE_END.split(clean)]
    sents=[n for n in sents if n>=3]
    mean=round(sum(sents)/len(sents),1) if sents else 0.0
    short=round(100*sum(n<=8 for n in sents)/len(sents)) if sents else 0
    colons=round(clean.count(':')/len(words)*100,1) if words else 0.0
    tics={}
    for pat in RHYTHM_TICS:
        c=len(re.findall(r'\b'+pat+r'\b',clean,re.I))
        if c:tics[pat]=c
    return {'words':len(words),'mean_sentence_words':mean,'short_sentence_pct':short,'colons_per_100w':colons,'tics':tics}

def inspect(bundle):
    findings=[];chapters=[];missing=[];total=0;rhythm_items=[];rhythm_texts=[]
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
        if '<chapter|' in text or p.name=='99-app.tm':
            clean_file=prose(strip_blocks(text))
            rhythm_texts.append(clean_file)
            rhythm_items.append({'source':p.name,**rhythm(clean_file)})
        in_code=False
        for m in re.finditer(r'(?:\A|\n[ \t]*\n)(.*?)(?=\n[ \t]*\n|\Z)',text,re.S):
            block=m.group(1).strip()
            if '<\\verbatim>' in block:in_code=True
            if in_code:
                if '</verbatim>' in block:in_code=False
                continue
            if block.startswith(('<\\equation','<tabular','<\\table','<figura|')):continue
            clean=prose(block)
            n=len(ordinary_words(clean))
            if n<12:continue
            total+=1
            if n>130:
                findings.append({'source':p.name,'line':text[:m.start(1)].count('\n')+1,'words':n,'start':clean.strip()[:125]})
    return {'bundle':str(bundle),'chapters':len(chapters),'missing_inbreve':missing,'prose_paragraphs':total,'long_paragraphs':findings,'rhythm':rhythm_items,'rhythm_bundle':{'source':'ALL',**rhythm('\n\n'.join(rhythm_texts))}}

def format_rhythm(item):
    return f"{item['words']} words, {item['mean_sentence_words']} w/sentence, {item['short_sentence_pct']}% short, {item['colons_per_100w']} colons/100w, tics {item['tics']}"

if __name__=='__main__':
    parser=argparse.ArgumentParser();parser.add_argument('bundle',type=Path);parser.add_argument('--json',type=Path)
    args=parser.parse_args();r=inspect(args.bundle)
    if args.json:args.json.write_text(json.dumps(r,ensure_ascii=False,indent=2))
    print(f"{args.bundle.name}: {r['chapters']} chapters; missing In breve {r['missing_inbreve']}; {len(r['long_paragraphs'])} prose paragraphs >130 ordinary words (review flags, not a readability grade)")
    for f in r['long_paragraphs']:print(f"  {f['source']}:{f['line']} {f['words']} words: {f['start']}")
    for item in r['rhythm']:print(f"  rhythm {item['source']}: {format_rhythm(item)}")
    print(f"  rhythm ALL: {format_rhythm(r['rhythm_bundle'])}")

    raise SystemExit(1 if r['missing_inbreve'] else 0)
