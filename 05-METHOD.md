# Method

**Probably the real contribution.**

The subject is one vendor's classifier on a handful of dates, and the framework's own reference notes estimate that such specifics drift on a two-to-eight-week half-life. **The method does not drift.** It generalises to any opaque system a researcher has to reason about from outside: a classifier, a rate limiter, a fraud model, a ranking system, a moderation pipeline, an adversary's tooling.

**Every practice below was paid for by a specific, recorded failure in this very investigation.** That is what makes them worth transferring. None is an aspiration, and most were paid for by the parties who wrote the rules.

---

## 1 · Pre-register a falsifiable arm, and state what would refute you

> **The standing rule: *an instrument that cannot render the opposite verdict has not measured anything.***

The investigation's single citable turning point was an arm pre-registered **in terms** (*same directory, everything unchanged, type `What is 2 + 2?` and nothing else*), with the prediction committed **before the data** and the falsifier named: **a clean run would refute the whole diagnosis.**

It fired in the predicted direction. ⇒ **It is the first arm in the sequence citable without qualification, and it is citable *because* it could have gone the other way.**

**Transferable:**

- **Write the prediction down before you look, and write down what result would mean you are wrong.**
- **A probe that can only confirm you is a null experiment.**
- **Say the cost.** Each arm here was costed, at roughly $0.70–0.90 per probe; the six-attempt cluster totalled $4.96 (API-rate equivalents on a subscription plan; amended 2026-10-18, [W-23](CORRECTIONS.md#w-23--reframed-dollar-figures-are-api-rate-equivalents-not-spend)). **A costed arm gets run; an uncosted one gets discussed.**

---

## 2 · Null controls *and* positive controls · and a null control that is not fresh is not a control

**Three distinct control failures occurred here, and each teaches something different.**

**(a) A control can be invalidated by a hidden premise.** Two sub-context probes were used to exonerate elements of the loaded context. The inference carried an unstated premise (*that the mechanism which fired at top level also evaluates sub-context turns*), which was never stated and never tested. ⇒ **If the gate is surface-conditional, a clean sub-context carries zero information about which element drives it, and those elements were demoted on a null result.** The conclusion happened to survive; **the reasoning did not.**

**(b) The repair is a matched control, with the dose measured on both arms.** The valid version compared the two assemblies *as actually sent*: byte-identical instruction carrier, a **larger** memory index with an **identical** harm-token profile, **the same twelve** tools bound. ⇒ **Exposure in the clean arm was greater-than-or-equal on every dimension measured. A content-presence hypothesis cannot survive a clean arm at equal-or-greater dose.**

**(c) A floor made of zero is not a floor.** A two-sided bracket was constructed: something that passed, something that blocked. **But the passing side scored zero on both harm vocabularies.** ⇒ **It is not a floor under the threshold; it is a potency-free control.** Therefore nothing licenses saying the subject sits *"near"* the threshold. **The band's bottom is nothing at all, and a far smaller dose might also block.**

> **A control proves an instrument *fires*. It never proves the instrument is *aimed*.**

**And the positive-control rule has a second, harness-level justification measured in this work:** on the shell used here, an unquoted expansion used as a file list **silently collapses to one argument and returns a well-formed integer that is wrong.** ⇒ **Pair any sweep whose answer is `0` with a positive control on the same command shape, because a positive control fires on the failing idiom too, where a null control cannot.**

---

## 3 · A negative claim about a search is a claim about the **search's span**, never about the world

**This fired twice in one investigation, and the second time was worse than the first.**

**First instance: the span was never stated.** A record said the refusal text was *"not captured, the entry's principal defect,"* and a session recorded that *every transcript in every project directory was searched.* **That search claim was false.** One directory had never been looked in, and **the entire episode was preserved there in full.** ⇒ **A record said "not recoverable" when it meant "not found where I looked," and four parties inherited it. An unstated span reads as exhaustive and nobody can refute it.**

**Second instance: the span was stated and the *predicate* was wrong, which is the harder failure.** A later sweep stated its span scrupulously (*712 files, every transcript, parsed as JSON, not grepped*) and reported **zero** artifacts on a newly-affected tier.

**The predicate was *a session with user turns and zero assistant records*.** But **a stopped response leaves no assistant record, while a session that worked fine and was stopped once still has assistant records.** ⇒ **The predicate could only ever find sessions in which every turn was blocked. It structurally excluded the common case.** An artifact had been on disk for **five days.**

**Four things about this failure are what make it teachable:**

1. **A stated span is not a stated predicate.** Scrupulous disclosure of *where* you looked says nothing about *what you looked for.* **State both, every time.**
2. **The detector was derived from one artifact class and applied unbounded.** It was the signature of one episode, published as a general instrument.
3. **The wrongly-low reading had no complainant.** It looked like good news, it closed a question, and nothing in the record disagreed with it. ⇒ **A finding ledger is a directionally biased sample: the wrongly-admitted absence has nobody to object on its behalf, so a rule repaired only from its own findings can only get wider. An upper bound must be tested by construction.**
4. **The cure had been published hours earlier, in the same document, and not applied to the next artifact.** The separator was named (*token accounting restores specificity, never turn counts*), and the detector was shipped unbounded anyway, and **does not apply to the newer artifact at all, which carries no token accounting whatsoever.**

> **The transferable form: `<count> under <predicate> over <N units> at <date>`. A bare total hides which predicate was run, and the predicate is where the bug lives.**

---

## 4 · The instrument-failure taxonomy, and the escalating cost of catching each level

**One party published a citation-form self-audit at the end of every round, reporting its own failure rate *both ways*, the flattering event-level rate and the unflattering figure-level rate, so that neither could be quoted alone.** Five published failures across four rounds, and **every one was the same defect:**

> **An instrument that was correct where it was built, carried into a context where its premise no longer held, still returning a plausible number.**

| the instrument | broke when | caught only by |
|---|---|---|
| character counts labelled **bytes** | the text was multibyte-heavy | **re-execution** |
| size summed from **serialised JSON** | payload ≠ transport (1.8× inflated) | **re-execution** |
| a vocabulary built from **framework prose** | applied to **operational tradecraft, which uses none of those words**: an **8.8× undercount**, scoring an offensive-tooling operator description at near zero | **reading the payload in primary text** |
| **whole-file density** as the predictor | the classifier may score **passages** | **building a second, independent instrument and disagreeing with the first** |
| **on-disk bytes** quoted where the **rendered** form was owed | the category token appears in the interface and not in the file | **comparing two surfaces of the same event** |

> **Re-execution defends a number. Primary text defends an instrument. Only a second, independent instrument defends a model.**

**And the definitive proof of the third clause arrived by accident.** Forced to build a second vocabulary for an unrelated question, the party discovered that **the two vocabularies score each other's top candidate at exactly zero.** ⇒ **Running either alone would have dismissed the other's finding as nothing. There is no single honest ranking, and the disjointness is a structural fact, not a calibration problem.**

**The residual that party named about its own practice, and it is the part most worth transferring:**

> *"Both of those figure defects survived a full round because **nothing re-runs a figure once it is written into prose.** The figures in this round are re-executed; the figures in any round after it will not be, unless someone re-runs them."*

**Confirmed here: the character-counts-as-bytes error had already drifted *back* into the records after being corrected once.** ⇒ **A corrected figure does not stay corrected. Correction is an event; accuracy is a practice.**

**A second residual, named by that party against itself:** one error *"ran against my own argument, which is why it survived a reading — **a number that flatters your case gets checked; one that doesn't, doesn't.***"

**And a third, which belongs to this file rather than to that party.** Two independently *correct* repairs, landing in one round, can compose into a regression that neither author can see, because every control here is per-change and nothing tests a composition.

---

## 5 · Held-out and independent readers, and knowing what concurrence is worth

**(a) A cold reader is a different instrument from an in-context one.** The first probe was handed the artifact **cold**: not told a refusal had occurred, not told what was being tested. Its unprompted verdict became evidence precisely *because* it was uncontaminated. **It also returned four defects that had nothing to do with its own question**, which is the argument for having run it at all.

**(b) Only another party catches a characterisation.** The standing rule: ***a second reading defends a measurement and never a characterisation.*** Four consecutive leading hypotheses were killed here, each by a different reader, and **in several cases the hypothesis was the commissioning party's own and was killed by a measurement that same party commissioned.** Every one went self-uncaught until another party or another instrument spoke.

**(c) Cross-party figure duplication is load-bearing, not wasteful.** The silently-wrong-zero shell hazard was caught **only because two parties had independently published the same figure and one could compare.** ⇒ **The detector was redundancy across readers, not any property of the command or of the reader.** **A solo investigator running the same idiom gets the wrong number and has nothing to notice it against.**

**(d) Label concurrence honestly.** When a party recommended closing analysis and the account holder agreed, the record refused to call it convergence: **the recommendation was shown before the answer was given** ⇒ *"that is single-premise agreement, not two independent judgements."* Recorded as what it was: one reasoned recommendation, accepted.

**(e) And the observer effect is real.** The first sweep predicate here (*the notice literal appears anywhere in a record*) returned a badly inflated count, because it matched records that merely **discussed** the notice, **including concurrently-running sibling sub-contexts that were analysing those exact literals at that moment.** ⇒ **A party sweeping for a string it is simultaneously writing is measuring itself.** The fix is a predicate anchored to the record's own **role** (*does this record **begin** the notice*), not to the string's presence. **And the same thing happened inside a document: by recording that a string was absent from a corpus, a party made it present, and re-running its own check then returned its own output.**

---

## 6 · Amend, never rewrite · because the record of what you believed is itself the evidence

Every correction in this investigation was written **beside** the claim it corrects, with the original left **unedited**, on the express ground that *"the record of what the coordinator believed is itself the evidence."*

> **This is what makes the failure taxonomy in § 4 possible at all.** A corpus that silently absorbed its corrections could not have produced a five-instance pattern across four rounds, and nobody would have seen that **the escalation in catching-cost was itself the finding. A tidied record is a destroyed instrument.**

**Its sharpest consequence here:** a party recorded the hypothesis it *"had written as the answer"* and what struck it down, stating that an advisory which quietly deleted its own dead branch *"would be the fourth instance of the defect it is here to name."*

[`CORRECTIONS.md`](CORRECTIONS.md) in this repository exists for that reason, and is the first file a reader should open after the open questions.

---

## 7 · Characterisation where a measurement was owed · the most-convicted defect in the record

**The canonical instance, and it is small and instructive.** A party recorded the account holder's words **verbatim and correctly**, then reasoned about **the properties of those words**, and called the result the load-bearing finding. **Two of its three stated properties were false against the primary record.** The account holder had given a good-faith paraphrase of their own actions; **the party promoted a paraphrase to a measurement without opening the artifact.**

> **Open the record before you *characterise* it, not merely before you *cite* it. Quoting correctly and then reasoning about the quote is not the same act as measuring.**

**And its structural relative, found here and classed as new:** a recommendation to **`KEEP`** a dated tier-and-outcome table, **when no such table existed.** ⇒ ***A maintenance verb applied to a nonexistent object is unfalsifiable by construction***, which is why nine days passed with nothing ever reading as wrong. **Nobody can fail to maintain a thing that is not there.**

**And one more, worse than either, because it is about a record's existence rather than its content:** a party stated three times (twice in conversation, once in a dispatched instruction) that a datum *"is recorded"* in a named file. **It was not.** ⇒ **An announced record and a written record are distinguishable only by looking, and nobody looked.**

---

## 8 · Quotation marks make a quotation *read* as verified without being so

A reviewing party's **paraphrase of an instruction, presented inside quotation marks**, propagated into five files including three of the coordinator's own records. ⇒ **The repair is mechanical and cheap: sweep every quotation by literal match against its source, and report the count checked *and* the count wrong.** Done here: **42 checked, 41 pass, 1 wrong.**

**Two traps in the sweep itself, both paid for:**

- **A literal miss is not proof of absence.** A source carrying inline markup fails a literal test. **Print the span from the source; do not only test for it.**
- **And a literal hit is not proof of accuracy either.** The one failure here was the same quotation carried in two files **differing in one character**, settled only by going to **the originating primary artifact**, which showed which copy had been altered. The alteration changed no meaning; **the altered copy was the one that propagated forward as a reassurance.**

**A correlate worth its own line: a verbatim quote can be a citation trap.** The vendor's notice says it *"flagged **this message**."* **The message was four neutral words containing zero domain content; "this message" cannot literally denote them.** ⇒ **Citing it as a mechanism statement would be quoting product interface copy as an architectural claim.** The quote is verbatim, is correct, and **supports none of what it appears to support.** That is the most seductive form of the defect, because nothing about the quotation is wrong.

---

## 9 · Bound the iteration, and check the *frame* rather than the round count

The investigation stopped at its fourth analytic round, **surfaced the question to a human rather than to another agent**, and judged the round's value **before** running it. **And the round repaid itself in the way that matters: it reversed the party's own pre-registered prediction and moved a finding in the direction nobody expected. Had it stopped at three, both errors would have shipped.**

**The close is the transferable part, and it is a change of frame rather than a halt:** the party recommended **no fifth round**, on the ground that ***the binding constraint is no longer analysis; it is data.***

> **The question at the threshold is not "is another round worth its cost?" It is "does this work need to be done *differently*?"** A loop that keeps meeting the same problem is the target, not length and not cost.

**And the hazard is named explicitly: a party can stop, surface the question, be told to continue, and resume the identical approach, satisfying the stop and defeating the thing the stop exists for.**

---

## 10 · The harness is part of the instrument, and it is undocumented

**Measured by execution:** the shell used here **does not word-split unquoted parameter expansions**, so an idiom that is correct and routine elsewhere **silently collapses to a single argument.**

| command shape | result |
|---|---|
| `paths='A B'; git log --oneline -- $paths \| grep -c .` | **`0`** |
| `git log --oneline -- A B \| grep -c .` | **`61`** |

⇒ **The failing form does not error, does not warn, and does not look empty. It returns a well-formed integer that is wrong, and that `0` is byte-identical to the `0` that means "this genuinely does not occur."**

**And the exposure was sized in both directions rather than only the reassuring one:** tracked code, small and probably nil, **but not cleared: that is a count of one idiom's spelling, not a proof that no reader is affected, and a form the predicate did not look for is a form it silently excluded.** Meanwhile **ad-hoc commands typed during a session are unbounded, leave no artifact, and cannot be swept after the fact.** ⇒ **The honest statement: the tracked exposure is small and the real exposure is unknown and unknowable.**

**This is declared engine-conditional and re-measure-rather-than-inherit.** It is not POSIX, it is documented nowhere, and it is free to change without notice. **Verify it on your own shell rather than trusting this table.**

**The companion practice: end every check with something that renders.** Print a number, never a quiet boolean; append an explicit status echo where a command may be silent. **Tool silence is not a measurement, and a result you cannot tell apart from the opposite outcome has told you nothing.**

---

## 11 · Read-only is not read-only, and a baseline can be consumed

Two findings that bear on anyone instrumenting a live system:

- **A probe told that all writes were blocked, and told to run a gate, discovered that running the gate mutated a ledger anyway.** ⇒ ***A "read-only" measurement of a live system is not necessarily read-only, and any control-arm or held-out run that assumes it is will contaminate its own baseline.*** The probe flagged this itself rather than letting it pass.
- **A baseline can be spent.** The unverified-account baseline here is **consumed and unrefreshable**: you cannot un-verify an account to see what an unverified user sees. ⇒ **Some comparands are single-use. Take the control measurement *before* you change the thing, because the change may be the one that cannot be undone.**

---

## The one-paragraph version

**Write the prediction and its falsifier down before you look. State the span *and* the predicate with every count, because a bare total hides which predicate was run and the predicate is where the bug lives, and the wrongly-low reading has no complainant, so the ledger you repair from is directionally biased. Match your controls on dose, and remember that a passing control scoring zero is a potency-free control and not a floor. Re-execute numbers; read primary text to defend an instrument; build a second instrument to defend a model, and expect the two instruments to score each other's top finding at zero. Amend, never rewrite, because the record of what you believed is the only evidence that can show you a pattern across your own mistakes. Never promote a paraphrase to a measurement, including your own, and especially not one inside quotation marks. Treat the harness as part of the instrument, and end every check with something that renders. And at the threshold, ask whether the work needs to be done *differently* rather than whether another round is worth its cost.**

**Every line of that was paid for by a recorded failure in this one investigation, most of them by the parties who wrote the rules.**
