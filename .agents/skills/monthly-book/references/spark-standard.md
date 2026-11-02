# Spark teaching standard

The user found the previous books too difficult and insufficiently step by step. Spark should be simple, clear and mentally lighter while retaining the main concepts and mathematical rigor. Prior knowledge: school arithmetic, fractions and elementary algebra; do not assume university proof experience. Build additional prerequisites where needed.

## Make the conceptual structure visible

Choose the pillars after analyzing the actual course. A pillar is a main idea, not necessarily one chapter. Explicit mathematical names belong in titles and the contents; a metaphor alone is not enough. Every numbered chapter starts with an `In breve` in the canonical layout: a short narrative paragraph, usually three or four connected sentences, telling what problem the chapter faces, why it is interesting and where it arrives. Vary the opening from chapter to chapter: do not start every one with a question, and avoid the fixed «domanda → Partiamo da… → Impareremo…» template. Do not repeat the same prose immediately below it. This is the one regular opening aid; other special boxes remain selective.

At each transition explain the question, the knowledge we bring and what becomes possible next. Distinguish objects, algorithms and theorems (for example MCD, Euclid's algorithm, Bézout). Use a short `concetto` statement after its meaning has been prepared; avoid bolding everything.

## Write a narrative, not a list of facts

The user's approved target voice is in [prose-example.md](prose-example.md); read it before writing or revising any chapter. The book should read like a good teacher explaining to one student: simple, warm, precise and pleasant to read, so that the reader wants the next sentence.

- **Tell the story of the idea.** Start from a concrete question the reader can try, show where the obvious attempt runs into trouble, then reach the definition or theorem as the way out. A `concetto` box is the arrival point of that story, not a copy of the paragraph before it.
- **Connect the sentences.** Let *perché*, *così*, *allora*, *però*, *infatti*, *per questo*, *altrimenti* carry the logic. Vary sentence length: most sentences are of ordinary length (roughly 15–25 words), with an occasional short one for emphasis. A run of eight-word declaratives, each stating one isolated fact, is a defect even when every sentence is correct.
- **Use colons sparingly.** Typically at most one per paragraph; do not make «X: Y» the default way to link two ideas. Semicolons are rarely needed.
- **Motivate every choice.** Say why we pick this interval, this case split, this auxiliary variable. A declared choice the reader cannot reconstruct is a gap.
- **Keep the actors natural.** The subjects are *noi* (author and reader) or mathematical objects with ordinary verbs (*vale*, *ha*, *è*, *cresce*). Do not personify formulas or procedures: a function does not «cerca» or «sceglie», a check does not «completa l'equivalenza», a path does not «conserva gli argomenti».
- **Avoid house tics.** *Conservare* for every keep/preserve (prefer *tenere*, *mantenere*, *restare vero*), *restituisce*, filler *proprio*, *Il punto è*, *Non basta* openings, and sentences that begin with a bare formula. Replacing a word with a synonym is not a fix; recast the sentence.
- **Drop reviewer-facing remarks.** State a hypothesis where it matters, briefly and inside the flow. Notes about what the text does not claim, attributions to the professor or to other languages, and rigor disclaimers the reader cannot use belong in the companion files, if anywhere.
- **Read it aloud.** If a passage sounds like lecture notes, a translation or a checklist, rewrite it. Natural spoken Italian, written carefully, is the target.

Be patient without padding. Start with small concrete cases; explain the decisions and show the meaningful intermediate steps. Introduce notation when useful and say what it means. Do not hide a nontrivial inference behind «è immediato», «ovviamente» or «con un semplice calcolo». Avoid infantilizing language, forced jokes, exclamation marks and unnecessary metaphors.

A paragraph develops one idea in several connected sentences (typically three to six); it is neither a single fact nor a wall that combines goal, proof and conclusion. Give formulas their own line when the reader must follow a transformation. Use a meaningful subheading when the subject changes; give separate definitions their own explanation and example rather than packing a glossary into prose. In TeXmacs, a single newline does not make a new paragraph: leave a blank line.

Narrative prose is somewhat longer than notes. Pay for it by removing duplication between text and boxes, repetitive verifications that a single line can summarize, redundant examples teaching the same move and reviewer-facing remarks, never by removing main concepts or necessary steps.

Prefer a complete small example before the general proof. For programs, show how the state changes in a short trace before presenting an invariant or termination argument. Explain how the proposed invariant or decreasing quantity is found. For abstract mathematics, calculate with a small concrete object before introducing a general family.

Review every chapter, including captions and answers, for natural narrative Italian. Recast awkward sentences and explain unfamiliar terms; cosmetic synonym replacement is insufficient. Do not meet a word limit by mechanically chopping sentences, shrinking type, or removing useful steps. Inspect the PDF: adjacent definition-heavy paragraphs and oversized proof boxes can remain walls of text even when no paragraph is unusually long. Solutions follow the same voice: they explain the reasoning in connected sentences, not as terse lists of results.

The goal is understanding all the main ideas, not duplicating every numerical exercise or source variant. Spend space on a difficult conceptual step and recover it by selecting secondary material. Optional sections must not hide prerequisites required immediately afterward. There is no target of 150 pages, 52 pages, 12 chapters or a fixed figure/exercise ratio.

## Proof model approved by the user

For the lemma «gcd(r,s)=1 and r divides st imply r divides t», the old book immediately chose ur+vs=1 and multiplied by t. Spark first explores 3 dividing5t. The equality1=2·3−5 gives t=2·3t−5t, a difference of known multiples of3. Then explain the strategy: to prove divisibility of t, express it using quantities already divisible by r; Bézout supplies the needed combination. Only then present the general statement and complete proof, showing why both addends are divisible by r.

This illustrates the desired depth; it is not a compulsory sequence of labels. `Anatomia di una dimostrazione` can make the objective, available information, obstacle and key move visible. Do not make every proof artificially long or pretend its discovery was inevitable. Counterexamples should explain why a hypothesis matters. Keep formal correctness and edge cases that affect the result.

## Support autonomy

Follow a worked decision with a partly guided problem, then an appropriate new problem without naming the method in advance. Use as many as the topic warrants, with explained solutions. A reader should practice recognizing applicability rather than copying a recipe. Keep the main narrative continuous; special boxes are occasional aids.

## Editorial identity

Classical university book: Computer Modern, well-composed formulas, sober hierarchy, monochrome fine-line vector illustrations, discreet boxes and balanced spacing. Retain useful existing assets. Sources, coverage and corrections live in companion files. Spark is the default for all courses; adapt the examples and proof techniques to the discipline.
