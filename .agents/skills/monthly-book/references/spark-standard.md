# Spark teaching standard

The user found the previous books too difficult and insufficiently step by step. Spark should be simple, clear and mentally lighter while retaining the main concepts and mathematical rigor. Prior knowledge: school arithmetic, fractions and elementary algebra; do not assume university proof experience. Build additional prerequisites where needed.

## Make the conceptual structure visible

Choose the pillars after analyzing the actual course. A pillar is a main idea, not necessarily one chapter. Explicit mathematical names belong in titles and the contents; a metaphor alone is not enough. Every numbered chapter starts with an `In breve` in the canonical layout: two or three short sentences describing its question and learning route. Do not repeat the same prose immediately below it. This is the one regular opening aid; other special boxes remain selective.

At each transition explain the question, the knowledge we bring and what becomes possible next. Distinguish objects, algorithms and theorems (for example MCD, Euclid's algorithm, Bézout). Use a short `concetto` statement after its meaning has been prepared; avoid bolding everything.

## Be patient without padding

Use clear Italian and short connected paragraphs. Start with small concrete cases; explain the decisions and show the meaningful intermediate steps. Introduce notation when useful and say what it means. Do not hide a nontrivial inference behind «è immediato», «ovviamente» or «con un semplice calcolo». Avoid infantilizing language, forced jokes and unnecessary metaphors.

One paragraph should develop one conceptual move. Give formulas their own line when the reader must follow a transformation. Use a meaningful subheading when the subject changes; give separate definitions their own explanation and example rather than packing a glossary into prose. In TeXmacs, a single newline does not make a new paragraph: leave a blank line.

Prefer a complete small example before the general proof. For programs, show how the state changes in a short trace before presenting an invariant or termination argument. Explain how the proposed invariant or decreasing quantity is found. For abstract mathematics, calculate with a small concrete object before introducing a general family.

Review every chapter, including captions and answers, for natural Italian. Recast awkward sentences and explain unfamiliar terms; cosmetic synonym replacement is insufficient. Do not meet a word limit by mechanically chopping sentences, shrinking type, or removing useful steps. Inspect the PDF: adjacent definition-heavy paragraphs and oversized proof boxes can remain walls of text even when no paragraph is unusually long.

The goal is understanding all the main ideas, not duplicating every numerical exercise or source variant. Spend space on a difficult conceptual step and recover it by selecting secondary material. Optional sections must not hide prerequisites required immediately afterward. There is no target of150 pages,52 pages,12 chapters or a fixed figure/exercise ratio.

## Proof model approved by the user

For the lemma «gcd(r,s)=1 and r divides st imply r divides t», the old book immediately chose ur+vs=1 and multiplied by t. Spark first explores 3 dividing5t. The equality1=2·3−5 gives t=2·3t−5t, a difference of known multiples of3. Then explain the strategy: to prove divisibility of t, express it using quantities already divisible by r; Bézout supplies the needed combination. Only then present the general statement and complete proof, showing why both addends are divisible by r.

This illustrates the desired depth; it is not a compulsory sequence of labels. `Anatomia di una dimostrazione` can make the objective, available information, obstacle and key move visible. Do not make every proof artificially long or pretend its discovery was inevitable. Counterexamples should explain why a hypothesis matters. Keep formal correctness and edge cases that affect the result.

## Support autonomy

Follow a worked decision with a partly guided problem, then an appropriate new problem without naming the method in advance. Use as many as the topic warrants, with explained solutions. A reader should practice recognizing applicability rather than copying a recipe. Keep the main narrative continuous; special boxes are occasional aids.

## Editorial identity

Classical university book: Computer Modern, well-composed formulas, sober hierarchy, monochrome fine-line vector illustrations, discreet boxes and balanced spacing. Retain useful existing assets. Sources, coverage and corrections live in companion files. Spark is the default for all courses; adapt the examples and proof techniques to the discipline.
