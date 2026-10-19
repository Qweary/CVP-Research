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

---

# Added 2026-10-15

**Six entries, W-14 to W-19, added beside the thirteen above.** None of the thirteen is edited. Three of the six correct this repository itself rather than the investigation it describes, and they are listed first, because the error that flatters the person correcting it is the one least likely to be written down.

---

## W-14 · STALE AT FIRST COMMIT: "no probe has been run"

**This repository said, in three places, that a protocol of pre-registered arms existed and *"not one of its arms has been executed"*:** the README (*"No probe has been run"*), the opening of [`03-OPEN-QUESTIONS.md`](03-OPEN-QUESTIONS.md), and the last bullet of [`01-TIMELINE.md` Phase 6](01-TIMELINE.md).

**False when it was committed.** Arms 0, 0b, 0c and 1 had all run, plus an unregistered Fable 5 row, by 2026-10-01T03:52Z, and the first clean witness of the control tier had run at 2026-10-02T05:36Z. **This repository was first committed at 2026-10-02T19:15Z.**

**The cause is not a hidden fact. It is a span.** The evidence here was derived from an internal dossier whose records stopped on 2026-10-01. The independent readings this set received before its first commit (recorded at the head of [`MANIFEST.md`](MANIFEST.md)) checked the set against itself and against that dossier, **not against the record that kept growing beside it.** ⇒ **This is the generator [`MANIFEST.md § 1`](MANIFEST.md) records against its own byte count, one level up:** an instrument that was aimed correctly, whose subject grew underneath it, still returning a plausible answer. It also runs in the direction this investigation keeps flagging as the one that goes unchecked. *"Nothing has been run"* sounds like caution, and **a cautious-sounding claim has no complainant either.**

**The original sentences are left standing, with dated notes beside them.** What happened in the arms is in [`01-TIMELINE.md` Phase 7](01-TIMELINE.md).

---

## W-15 · REFUTED IN PART: "this class of notice is never written to disk"

**Published in [`06-VENDOR-NOTICES.md`](06-VENDOR-NOTICES.md) (Variant 3, and the *"not applicable"* cell in its comparison table) and in [`SOURCES.md`](SOURCES.md) (*"One of the two notice classes is never written to disk at all"*).**

**Refuted in part.** The same event the Variant 3 capture shows, at 2026-10-01T01:52Z, **also has an on-disk notice record**, and the two differ in four fields (single-source, measured by the specialist that adjudicated the arms). Blocks on the newest tier at 03:26Z and 13:22Z carry on-disk notices with `Details: [cyber]` and a request identifier. The two blocked rows on 2026-10-09 each carry an on-disk notice with a request identifier line (**re-measured here: one line each; values not read into any document**).

**What decides it is timing, not notice class.** Sessions that produced any further record after the stop acquired the on-disk notice. Sessions whose stop was their last record did not. The 2026-10-09 notices landed **86 minutes** after their stops.

**What survives, and it matters as much as the refutation:** **the rendered surface and the on-disk record are two instruments, and neither one is complete.** The screen carries the two-option remedy menu, which the disk lacks. The disk carries the request identifier, the policy URL, the sentence *"Claude Code can't respond to … with \<tier\>"* and the *"Double press esc"* sentence, which the screen lacks. ⇒ **Comparing a rendered capture with an on-disk record compares instruments as well as dates or tiers.** The internal record made exactly that error on a "copy changed in nine days" table, and three of its six rows turned out to be instrument-boundary artifacts with zero time elapsed. The comparison table in `06-VENDOR-NOTICES.md` compares tiers, not dates. **The rows its author re-confirmed on same-instrument evidence are the false-positive enumeration and the programme sentence, and both vary by tier.**

---

## W-16 · AMENDED, NOT WITHDRAWN: W-13's "two tiers"

**[W-13](#w-13--this-repositorys-own-source-summary-overstated-a-tier-count) is correct over the evidence this repository carried, and it stands.** But that evidence had a span (see [W-14](#w-14--stale-at-first-commit-no-probe-has-been-run)), and by 2026-10-01T03:52Z, **three** tiers had blocked the four-word prompt in the project directory: Fable 5.1, Opus 5.5 and Fable 5. That was already true when W-13 was written.

⇒ **The internal summary's *"three"* and this repository's *"two"* were each true of a different span, and neither carried its span.** That is the W-13 lesson, applied to W-13.

**And on 2026-10-09 the count stopped being monotone.** Opus 5.5 *answered* the same four words in the same directory, while both Fable tiers blocked again. ⇒ **A tier count for this condition is not a property. It is an observation with a date, and has to be written as one.**

---

## W-17 · SUPERSEDED: "the newest-tier artifact carries no token accounting"

**Published in [`03-OPEN-QUESTIONS.md § OPEN-1`](03-OPEN-QUESTIONS.md#open-1)** (*"There is no token accounting of any kind in the newest-tier artifact. Seven billing field names each occur zero times."*) and in [`SOURCES.md`](SOURCES.md) (*"no token accounting"*).

**True when it was measured, and no longer true.** The client appended a billing record to that transcript **after** the measurement. **Re-measured here: zero output tokens for the newest tier, 230,727 cache-creation tokens, $1.876.** The three post-login arms acquired billing the same way, and all three read zero output tokens.

⇒ **A negative claim about an artifact is a claim about the artifact at a moment**, because this store appends to files after they look finished. It is [`05-METHOD.md § 3`](05-METHOD.md) applied to time rather than space: a search's span includes *when* you looked.

**What this does to OPEN-1 is less than it looks.** The measurement OPEN-1 asked for has arrived, and it lands on the branch OPEN-1 said stays ambiguous: **zero billed output while the harness string says generation was "stopped."** Either the block is pre-generation, or a cancelled stream is not billed as output. The adjudicating party re-labelled these rows *pre-generation* at **moderate** confidence, not high, for exactly that reason. **This analysis does not raise it.**

---

## W-18 · WITHDRAWN BY ITS AUTHOR, AND NOW MEASURED: "biology beside cyber" as the signature of a subject suite

**[`03-OPEN-QUESTIONS.md § OPEN-7`](03-OPEN-QUESTIONS.md#open-7) gives two supports as decisive for classifying the block as subject-side.** The first is that the vendor lists its false positives as **domains**, *"coding, cybersecurity, and biology"*, and that *biology* sitting beside *cyber* is the mark of a subject-safeguard suite.

**The party that made that argument withdrew it before this repository was first committed**, on the ground that the false-positive list varies by **tier**: it reads *"…and biology"* on Fable 5.1, *"cybersecurity work"* on Opus 4.8, and *"non-cybersecurity work"* on Opus 5.5. **That party then recorded whether the Fable copy had also changed over time as undetermined, because no later Fable notice existed on disk to compare against.**

**One exists now.** Same tier, same instrument (on disk to on disk), first and second date: Fable 5.1 on 2026-09-21 reads *"legitimate coding, cybersecurity, and biology tasks"*. **Fable 5.1 on 2026-10-09 reads *"legitimate coding and cybersecurity tasks."*** Re-measured here. **The word is gone from the same tier's copy.**

⇒ **The first decisive support for OPEN-7 is withdrawn.** The second support, that the prompt is structurally null, is untouched. **This analysis does not re-rate the subject-side classification. It records that the classification now stands on less than OPEN-7 says.**

**Bound:** one tier, one notice per date, and the client version also changed in between (`2.1.278` → `2.1.295`). This is a fact about the copy, not about a classifier.

---

## W-19 · SUPERSEDED: "all unpreserved"

**[`SOURCES.md`](SOURCES.md) marks every primary artifact *"All unpreserved"*, and [`MANIFEST.md § 4`](MANIFEST.md) records preservation as an undecided question.**

**Superseded before the first commit.** On 2026-10-01, after measuring that the store had **lost** files (700 against 718 a day earlier, a net loss despite additions), twelve baseline artifacts were copied **by name** outside any repository, with matching checksums on all twelve (single-source). **The destination is deliberately not recorded in any document**, this one included.

**And one apparent loss that is not one:** the empty-directory transcript cited in `SOURCES.md` does not live under the project's transcript folder. It lives under the folder for the empty directory where it ran. **It was verified present by this analysis**, and its absence from a sweep of the project folder is a fact about the sweep.

---

# Added 2026-10-18

**Five entries, W-20 to W-24, added beside the nineteen above.** None of the nineteen is edited. Four of the five come from the account holder's own written corrections of 2026-10-18, and one records work this repository had described as not done. **Where a corrected sentence sits in this repository's own voice, its dated amendments included, it now reads correctly and carries a dated marker, and the original wording is preserved here. Where it sits in a quotation, or in a record of what was reported at the time, it is left as written and annotated beside it.**

---

## W-20 · CORRECTED: the account holder's verification tier is 2 (defensive), not 1

**Published as *"tier 1"* in fourteen places across six files.** In [`01-TIMELINE.md`](01-TIMELINE.md): Phase 9's report paragraph (*"The account holder was approved for **tier 1**. On the account holder's reading of the vendor's communication, tier 1 lifts restrictions **for defensive work only, on the newer models**"*), all three bullets of Phase 9's *"does not establish"* list that name a tier, and *"Where it stands, 2026-10-15"* (*"The account is now on a tier-1 grant under a new process"*). The README's *"Since first commit"* row (*"under a tier-1 grant the account holder reports"*). [`02-EVIDENCE.md § 9`](02-EVIDENCE.md) (*"tier 1, new process"*). Five lines of [`03-OPEN-QUESTIONS.md`](03-OPEN-QUESTIONS.md): the over-claim table, OPEN-2 twice, OPEN-5 and OPEN-6. [`SOURCES.md`](SOURCES.md), twice.

**Phase 9's report paragraph and SOURCES' record row are left as written, with a dated note beside each, because they record what was reported at the time.** Every other place now reads tier 2 and carries a marker.

**Corrected by the account holder, in writing, on 2026-10-18:** *"I have tier 2 (defensive), which is at least one tier above the tier one standard that non-CVP accounts get. To get above the defensive approval, you need to be part of an organization that has an EIN/TIN and undergoes manual review/verification/approval."* The original was their own misreading, and they say so.

**What the correction changes:** the tier number only. Every statement about what the grant does and does not establish stands, because it never depended on the number. A defensive lift is still a lift that four neutral words do not call on.

---

## W-21 · AMENDED: the new process is public, and it was the account holder's third enrolment, not their first

**Four claims, each amended on the account holder's report of 2026-10-18 and on public coverage:**

1. **"A report, not a document this analysis has read."** The tiered structure is public. Third-party coverage, listed in [`SOURCES.md`](SOURCES.md), describes three verification tiers above the standard level. **The vendor's own announcement is still unread here**, so the structure is now carried as public reporting, not as a vendor statement.
2. **The date.** [`03-OPEN-QUESTIONS.md § OPEN-2`](03-OPEN-QUESTIONS.md#open-2) said the vendor *"introduced"* the process on 2026-10-08. **Coverage dates the announcement to 2026-10-06.** 2026-10-08 is the approval date the account holder reports.
3. **The enrolment history.** Phase 7 records that the account holder *"first applied"* on 2026-09-30. That was the first application to the form of the programme then current. **The account holder reports an enrolment the year before, in an earlier form**, and two approvals in 2026 (2026-09-30 and 2026-10-08). The full sequence is [`01-TIMELINE.md` Phase 10](01-TIMELINE.md#phase-10--three-enrolments-as-the-account-holder-reports-them). ⇒ **The pre-2026-09-30 artifacts are pre-enrolment for the then-current programme only**, and *"unverified-account measurements"* (Phase 7 item 4, OPEN-6) is stronger than the evidence.
4. **"Through an organisation."** Phase 9 and [`REDACTIONS.md § 9`](REDACTIONS.md) item 2 described the pursuit of a higher tier as running through one organisation. **The account holder works with volunteer organisations that have no EIN**, toward a higher tier, and wants to keep a personal account. None is named, and the redaction list is amended to say no more than the timeline does.

---

## W-22 · SOFTENED: "it really is a security framework"

**Published in [`04-FINDING.md`](04-FINDING.md)'s first table** (*"It really is a security framework. Making it look like less of one is a lie about the repository."*), in its bound 7 (*"Any edit that made this framework look less like a security framework would be a lie about the repository"*), in the README (*"The first is its **subject**: it is a security framework, with an offensive-security specialist library and red-team automation packages"*), in [`03-OPEN-QUESTIONS.md § OPEN-6`](03-OPEN-QUESTIONS.md#open-6) (*"This is a security-domain framework"*) and in [`REDACTIONS.md § 6`](REDACTIONS.md) (*"a security-domain multi-agent framework"*).

**The account holder calls the first of these slightly disingenuous**: the framework *"is a lot more than just a security framework (its just that a lot of the work I do involves cybersecurity stuff, and so there is a lot of artifacts about these activities due to my responsible logging, etc)."*

**The supported form:** a general-purpose multi-agent framework that does a lot of security work, documents its controls, and has enforcement mechanisms so that the work is done responsibly. **The account holder's further point sharpens the finding rather than weakening it:** making sure the framework documents those controls and enforces them is, in their words, *"pretty much exactly what caused the framework to stop working."* That is the second harm profile in [`04-FINDING.md`](04-FINDING.md), stated by the person who built it.

**What does not change:** the first profile is still a plausible true positive. The security work is real, and hiding it would still misdescribe the repository.

---

## W-23 · REFRAMED: dollar figures are API-rate equivalents, not spend

**Published as spend:** [`01-TIMELINE.md` Phase 3](01-TIMELINE.md) (*"$4.96 spent"*), Phase 7 item 3 (*"lifetime spend on `what is 2 + 2?` was $8.42"*), [`02-EVIDENCE.md § 9`](02-EVIDENCE.md) (*"Cost, because it is the operator's own billing"*), and [`REDACTIONS.md § 8`](REDACTIONS.md) (*"It is one account's own billing on its own account"*).

**The account is on a subscription plan.** The client records an API-rate cost for every turn, and every dollar figure in this repository comes from that field. The account holder tracks it because it is a useful measure, and called *"spent"* *"a little disingenuous."* **The figures are unchanged. Their meaning is now stated:** each is what the usage would cost at API rates. A convention saying so is added to the README and to [`02-EVIDENCE.md`](02-EVIDENCE.md).

**Not reworded, deliberately:** the internal record's own quoted phrase *"~$2.4 spent"* in Phase 7, because it is a quotation.

---

## W-24 · SUPERSEDED: "nothing in this repository describes that work as built"

**Published in [`01-TIMELINE.md`](01-TIMELINE.md), *"Where it stands, 2026-10-15"*:** the proof of concept that routes a cloud-restricted action to a self-hosted local model *"has not happened. Nothing in this repository describes that work as built, tested, or working."*

**True when written, and no longer true.** Version 1 was built and ran on 2026-10-19 (UTC). The method and the counts are in [`07-LOCAL-ROUTING-POC.md`](07-LOCAL-ROUTING-POC.md), and the short form is [`01-TIMELINE.md` Phase 11](01-TIMELINE.md#phase-11--version-1-of-the-local-routing-proof-of-concept). **Version 1 is human-reviewed and human-executed, with no automation.** An autonomous version is named for later and is **not** built, so the original sentence still holds for that.
