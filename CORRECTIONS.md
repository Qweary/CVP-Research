# Corrections and withdrawals

**This file is not an appendix. It is the instrument.**

Every correction in this investigation was written *beside* the claim it corrects, with the original left unedited, on the express ground that **the record of what a party believed is itself the evidence.** A corpus that silently absorbed its corrections could not have produced the five-instance failure pattern in [`05-METHOD.md § 4`](05-METHOD.md), and nobody would have seen that **the escalating cost of catching each instance was itself the finding.** A tidied record is a destroyed instrument.

Read this file before relying on any other. Several claims below circulated widely before they were withdrawn, and the withdrawn versions are more memorable than their corrections.

---

## W-1 · WITHDRAWN: "zero artifacts exist on the newest tier"

**Published with its span scrupulously stated:** *zero transcripts carrying a block artifact on the newest tier, over 712 files, every transcript parsed as JSON rather than grepped.*

**False.**

**The defect is the predicate, not the count, and not the span.** The sweep keyed on *a session with user turns and **zero** assistant records.* But **a stopped response leaves no assistant record — while a session that worked normally and was stopped once still has assistant records.** ⇒ **The instrument could only ever find sessions in which *every* turn was blocked. It structurally excluded the ordinary case.**

**An artifact had existed for five days.** On 2026-09-25 the newest tier was selected, a 5,547-character prompt was pasted, and 1.49 seconds later a stop notice fired — **84,593 ingestion tokens billed at zero output tokens**, 49,524 cache-read, after which an older tier ran a near-identical paste for 2 hours 21 minutes. Five days before anyone reported the tier as affected, and the artifact was on disk the whole time.

**Three things make this the investigation's most instructive single failure:**

1. **A stated span is not a stated predicate.** Scrupulous disclosure of *where* you looked says nothing about *what you looked for.* The predicate is where the bug lives.
2. **The detector was derived from one artifact class and published unbounded.** It was the signature of one episode, shipped as a general instrument.
3. **The wrongly-low reading had no complainant.** It looked like good news, it closed a question, and nothing in the record disagreed with it.

**And the cure had been published hours earlier, in the same document, and not applied.** That same party had written that *a block shows zero output tokens alongside non-zero cache-creation tokens; specificity is recovered by the token accounting, never by the turn counts* — and then shipped the turn-count detector anyway. **The published cure does not even apply to the newer artifact, which carries no token accounting of any kind.**

---

## W-2 · WITHDRAWN: "sub-contexts are a safe harbour"

**The claim as it circulated:** *the corpus that blocks at top level runs clean in a sub-context, so the routing architecture the framework already had is the shape that survives.*

**Withdrawn on two independent grounds. Neither is sufficient alone and both are recorded.**

**(a) Scope.** Stop artifacts *do* occur inside sub-contexts: **7 injected-stop artifacts flagged sub-context across 4 distinct sub-context transcripts, plus 1 API-error artifact in a sub-context.**

**(b) Provenance.** A 42-quotation literal-match sweep returned **41 pass, 1 wrong** — and the one failure is the sub-context verdict quotation that the reassurance rests on. It is carried in two files **differing on the first character.** Settled against the originating primary artifact: the capital initial is original, and one carrier **altered the quotation inside quotation marks.** Stated at its true size and no larger: **the alteration is a single lowercased initial and changes no meaning.** Recorded anyway, because (i) quotation marks make a quotation *read* as verified without being so, and (ii) **the altered copy is the one that propagated forward as the reassurance.**

**What survives is narrower and is still real:** *a sub-context faces a measurably smaller assembly and was measured clean on this corpus on the occasion it was measured.* See [`03-OPEN-QUESTIONS.md § OPEN-9`](03-OPEN-QUESTIONS.md#open-9).

---

## W-3 · WITHDRAWN: "the control tier runs clean"

Every analytic session of this investigation ran on one model tier, and that tier was treated as the clean baseline the whole thing was read against.

**That tier was stopped mid-stream six times on 2026-09-26.** Two independently-run sweeps agree exactly on the figure.

⇒ **"The control tier runs clean" is withdrawn as a standing property.**

**And the bound matters as much as the withdrawal: all six of those stops are in unrelated offensive-tooling work, none on the framework corpus.** The honest row is therefore *clean on the framework corpus; stopped six times on offensive-tooling content* — never a bare *clean*, and never a bare *blocked*.

---

## W-4 · REFUTED BEFORE PUBLICATION: the system-prompt paragraph as the mechanism

The top-level system prompt contains a dual-use-security paragraph that the sub-context prompt does not — and that paragraph states a conditional which a bare first turn structurally cannot satisfy. The diagnosing party called it *"a beautiful fit"* and recorded that it *"had this written as the answer."*

**The token accounting refuted it: that paragraph works by persuading a model, and the model never spoke.**

Recorded here rather than deleted, on the party's own stated ground that *an advisory which quietly deleted its own dead branch would be a fresh instance of the defect it was commissioned to name.*

---

## W-5 · REFUTED BEFORE PUBLICATION: a structural witness for the output-side reading

This analysis hypothesised that each injected stop turn's parent pointer might resolve to a *withheld* assistant object — which would have **proved** that generation had begun.

**Measured: all three parent pointers resolve to records that exist inside the file, and no record anywhere in the chain references an assistant message object at all.**

⇒ A structural witness for the output-side reading was formed and **killed by execution before being written down.** It does not settle [OPEN-1](03-OPEN-QUESTIONS.md#open-1) — it removes one argument for one side.

---

## W-6 · REFUTED: two leading hypotheses, both killed by measurements their own author commissioned

| hypothesis | held by | killed by |
|---|---|---|
| The pasted kickoff artifact, or something in the session's loaded context, is implicated. | the coordinator | A cold sub-context handed the exact artifact, told *comprehension only*, **did not refuse** — and volunteered unprompted that the work was *"internal framework engineering."* |
| The block is a **disposition** refusal: the model declines to *execute* what it will happily *analyse.* | the coordinator, after the first result | A second sub-context, told it *was* the orchestrating agent and told to **execute**, **did not refuse** — it ran to completion and stopped cleanly at the first blocked write. The one factor the first probe held fixed was inverted, and the reading died. |

**And a third, smaller one.** Two confounds were offered to discount the first probe — that a sub-context carries neither the user's memory index nor the offensive tooling inventory. **Both measured false against the probe's own transcript:** it carried the tooling, the memory index, an injected third-party instruction block, and even the literal string `ignore previous instructions`.

**Every one of these went self-uncaught until another party or another instrument spoke.** The standing lesson: **a second reading defends a measurement and never a characterisation.**

---

## W-7 · REVERSED BEFORE THE DATA: the fresh-clone prediction

| round | prediction | ground |
|---|---|---|
| 3 | the auto-load carrier alone runs **clean**, moderate confidence | whole-file token density, which reads 5× below the blocked payload |
| 4 | **blocks**, low-to-moderate confidence | absolute token mass at parity; sliding-window passage maximum at an **exact tie** |

**The reversal was committed before any data, in terms**, together with *"If it runs clean… that is the better outcome and I would be glad to be wrong."*

**And it only happened because of a budget gate.** The party stopped at its fourth round, surfaced the question rather than proceeding, and judged the round worth running before running it — then recorded: *"the round justified itself in a way I did not expect: it reversed my own pre-registered prediction… Had it stopped at three, both errors would have shipped."*

**The arm has still never been run.** See [OPEN-4](03-OPEN-QUESTIONS.md#open-4).

---

## W-8 · THREE FIGURE DEFECTS FOUND BY RE-MEASUREMENT

**All three were found by re-executing figures that had already been written into prose and reviewed.**

**(i) Character counts labelled as bytes.** Six prompt stimuli were recorded as *"three of 4741 B and three of 233/151/153 B."* **Those are character counts.** True byte lengths are **4910 / 4910 / 4910 / 237 / 153 / 153.**

> **This is not pedantry: in bytes, two structurally distinct prompts both read `153` and become indistinguishable.**

**And it is a recurrence.** The same party had already identified and corrected this exact defect in an earlier round — **and the mislabel then drifted back into the records and into the brief written from them.** ⇒ **A corrected figure does not stay corrected unless something re-executes it. Correction is an event; accuracy is a practice.**

**(ii) Stop-notice timestamps published as prompt timestamps.** Three timestamps were reported as the three prompt submissions. **They are the timestamps of the three harness-injected stop turns.** The prompts are approximately 1.25–1.3 seconds earlier. Immaterial to every conclusion — recorded because a prompt timestamp and a response timestamp are different objects, and **the ~1.3-second gap between them is itself a datum that nobody can see if the two are conflated.**

**(iii) "The identical kickoff re-pasted" was not identical.** The record describes the second paste of 2026-09-25 as *"the identical kickoff re-pasted."* **Measured: 5,547 characters versus 5,676 — a 129-character difference.** Both carry the same paste identifier, so it is the same source document, not a byte-identical paste. **The 129 characters are uninvestigated and no claim is made that the difference matters** — but it weakens the one-factor framing of that comparison, because the run that *succeeded* did not face byte-identical input. A one-factor claim is only as good as its held-constant side, and nothing else in the record checked this one.

---

## W-9 · A FALSE RECONCILIATION, DRAWN AND THEN WITHDRAWN BY ITS OWN AUTHOR

A separate strand of the same work found two figures differing by `+3 lines / +5 occurrences` on what appeared to be the same predicate and corpus. The author first wrote that this was an **epoch difference** — that records landing between the two readings accounted for it.

**They then tested it instead of publishing it**, per-file over every record that had landed after the earlier reading. **One occurrence was attributable, not five.**

> **The epoch explanation was false and was withdrawn.** The honest statement became *"I cannot reproduce the other figure either, and I do not know why."* The residual is unexplained and no cause is named.

**The durable is the near-miss, not the number:** *a reconciliation that **fits** is not a reconciliation that **holds**, and "an epoch, not an error" is a template so available that it will be reached for whether or not it is true.*

**This bears directly on [`02-EVIDENCE.md § 4`](02-EVIDENCE.md).** The artifact-count reconciliation offered there has three limbs; two are exact arithmetic agreements, and **the third invokes exactly this epoch template.** It is therefore marked **plausible, not settled**, and it is not cited as having resolved the disagreement.

---

## W-10 · A COORDINATOR ANNOUNCED A RECORD THREE TIMES BEFORE WRITING IT

Three times — twice in conversation and once in a dispatched instruction — a party stated that a new datum *"is recorded"* in a named investigation record. **It was not.** The content had gone to a different file; the named record received nothing. For several hours the investigation record's latest word was a claim that had already been refuted ([W-1](#w-1--withdrawn-zero-artifacts-exist-on-the-newest-tier)), standing uncorrected as the most recent finding any reader would meet.

> **An announced record and a written record are distinguishable only by looking, and nobody looked.**

The standing rule was already that *what an agent says in conversation is not a record.* **This failure is one turn worse: the party said, in conversation, that it had made a record.** It was found incidentally, as a single line in another party's undischarged-items list — *"eight amendments, not nine"* — because **nothing counts amendments and nobody had been asked to check.**

---

## W-11 · THE OBSERVER EFFECT, COMMITTED TWICE, ONCE INSIDE THE DOCUMENT DESCRIBING IT

**(a) In a sweep.** The first predicate used to count stop notices in the local store was *the notice literal appears anywhere in a record.* It returned a badly inflated count, because it matched records that merely **discussed** the notice — including the analysing session's own transcript and **concurrently-running sibling sub-contexts that were analysing those exact literals at that moment.**

> **A party sweeping for a string it is simultaneously writing is measuring itself.**

The fix is a predicate anchored to the record's own role — *does this record **begin** the notice* — not to the string's presence anywhere in it.

**(b) In a record.** A party recorded, correctly, that a particular string did not occur anywhere in the repository. **By recording that, it made the string occur.** Re-running its own check then returned two hits, both its own. ⇒ **A measurement of a corpus the measuring party is concurrently writing is a measurement of a moment, and here the instrument's own output entered its own corpus.**

---

## W-12 · A MAINTENANCE VERB APPLIED TO A NONEXISTENT OBJECT

A review round recommended **`KEEP`**-ing a dated tier-and-outcome table. **No such table existed, and none exists now.**

> **A maintenance verb applied to a nonexistent object is unfalsifiable by construction.**

Nobody can fail to maintain a thing that is not there — which is why nine days passed with nothing ever reading as wrong. This is the structural relative of the most-convicted defect in the whole record: **characterisation where a measurement was owed.**

---

## W-13 · This repository's own source summary overstated a tier count

**The internal evidence dossier this repository was derived from summarises the established finding as a block on *"three separate model tiers."* It is two.**

**Enumerated, because a count is exactly the kind of claim that should be enumerated rather than asserted.** The structurally null four-word prompt was put in front of:

| date (UTC) | tier | directory | outcome |
|---|---|---|---|
| 2026-09-21 | first affected tier | the project directory | **blocked** |
| 2026-09-21 | first affected tier | an empty directory | **clean — it answered `4`** |
| 2026-10-01 ×3 | newest tier | the project directory | **blocked, three times** |

⇒ **Two tiers blocked it. One of those two answered it cleanly in a different directory**, which is itself the counterexample that refuted *"it refuses in any directory."*

**Where the three probably came from, offered as a reading and not as a fact:** stop artifacts of *some* class exist on **four** model tiers in the local store — but **across two distinct workloads**, and the attribution bound at [`02-EVIDENCE.md § 5`](02-EVIDENCE.md) forbids pooling them. A four-tier figure and a two-tier figure are both true **of different predicates**, and a summary that carries neither predicate lands somewhere between them.

**Caught by reading this repository's own headline against its own body before publishing — which is the check, and it is the only reason this entry exists.** The error ran in the direction that *flattered* the finding, which is the direction this investigation has repeatedly recorded as the one that does not get checked: *a number that flatters your case gets checked; one that doesn't, doesn't.* **This one was flattering and was nearly not checked.**
