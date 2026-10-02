# Timeline

**Why this is in time order rather than by subject:** the pre-registrations and the reversals are the methodologically load-bearing part of this investigation, and they are only legible in sequence. A reader who wants the figures wants [`02-EVIDENCE.md`](02-EVIDENCE.md); a reader who wants to know whether to believe them wants this file.

**Clock discipline.** Timestamps taken from transcript artifacts are **UTC** and carry a `Z`. Dates taken from written records are **local (UTC−7)**. The two differ by a calendar day for events between 17:00 and midnight local. Where an elapsed span matters, the clock-free span is given instead.

---

## Phase 0 — the prior, and why there was a model at all

| when | what | what it established |
|---|---|---|
| **2026-04 → 2026-05** | An internal reference document on the vendor's safety layers was written, reverse-engineered from the framework's own earlier refusal regression. | A three-signal decomposition — **structure / subject / disposition** — mapped onto three hypothesised layers, each with its own hypothesised lever. **Every claim in it is inferential**, derived from refusal behaviour and never from a vendor statement. The document dates itself and estimates a **two-to-eight-week half-life** on its own specifics. |
| **2026-09-14 → 2026-09-20** | Six consecutive sessions run the framework's identical auto-loaded assembly on one model tier, repeatedly, cleanly. | The baseline the whole investigation was later read against. **See Phase 5: this baseline is not simply true.** |

**Why Phase 0 matters to an outside reader:** the investigation began with a *published, dated, falsifiable* model of its own refusal surface, and a standing instruction to re-measure rather than trust it. Everything that follows is that model being tested — and amended — by execution.

---

## Phase 1 — the event, and four consecutive wrong leading hypotheses

| when | who | act | predicted *before* the data | outcome |
|---|---|---|---|---|
| **2026-09-20** | the account holder | Pastes a 157-line session-kickoff artifact as the opening turn of a fresh top-level session on a new model tier, in the project directory. | — | **Refused. `[cyber]` reported. The verbatim surface was not captured** — filed as the record's principal evidentiary defect. |
| same day | the coordinator | Files the incident. **Declines to categorise it under the existing safety-boundary category**, electing *unknown* instead. | — | **Correct, for a reason it could not yet articulate:** that category *carries a prescribed workaround*, so asserting it would license applying a lever before diagnosis. **A taxonomy label that drags an actuator along with it is a defect in its own right.** |
| same day | the coordinator | Measures that the opening persona line is **byte-identical** across the six clean prior sessions, and that one clean session's kickoff was **longer** (166 lines) than the artifact that failed (157). | — | **Neither the opening line nor the length is the changed variable. The only variable that changed is the model.** |
| same day | a cold sub-context | **Probe 1** — handed the exact 157-line artifact, told *comprehension and planning only*, **not told that a refusal had occurred.** | The coordinator expected the artifact or the loaded context to be implicated. | **Did not refuse.** Volunteered, unprompted, that the work was *"internal framework engineering."* ⇒ promotes a **disposition** reading: the model will analyse what it will not execute. |
| same day | the coordinator, then a specialist | The coordinator discounts probe 1 on two confounds — that a sub-context carries neither the user's memory index nor the offensive tooling inventory. **The specialist challenges both as probably false and checkable.** | the coordinator's confounds | **Both false, measured against the probe's own transcript.** It carried the offensive tooling, the memory index, an injected third-party instruction block, and even the literal string `ignore previous instructions`. |
| same day | a sub-context | **Probe 2** — told it **was** the orchestrating agent, told to **execute**, with only writes blocked. Inverts the one factor probe 1 held fixed. | the disposition reading, now leading | **Did not refuse.** Ran the startup sequence to completion and stopped cleanly at the first write ⇒ **the disposition reading is itself demoted.** |

**What Phase 1 is actually about, and it is not the refusal.** Two leading hypotheses were killed in one session, **both of them the coordinator's own, and both killed by measurements the coordinator itself commissioned.** The record names the class: *characterisations laid over sound measurements, self-uncaught until another party or another instrument spoke.*

**And Phase 1 closed with a stop rule rather than a finding.** Two probes, opposite dispositions, both carrying the full auto-loaded context, both clean ⇒ the artifact and the session context are exonerated **at sub-context scope**, exactly two candidates remain — **(a) the top-level system prompt, which nothing a session can dispatch varies, and (b) stochastic variation** — and **further sub-context probes were forbidden on the express ground that they cannot reach the remaining variable.**

---

## Phase 2 — reaching the variable no session could

| when | act | what it established | what it did **not** establish |
|---|---|---|---|
| **2026-09-20** | The account holder tries *"every which way"* at top level, including a short plain-English request carrying none of the original artifact. | **The refusal reproduces at top level across varied presentations, and survives removal of the entire pasted artifact.** | **The trial count was not recorded and the variants were not enumerated.** The coordinator expressly refused to publish *"every which way"* as a rate or a trial count — correctly. |
| same day | The coordinator characterises the short stimulus as *"one plain sentence… no persona line… no security noun"* and calls it the load-bearing half of the finding. | — | **Wrong in two of three stated properties — see Phase 3.** The string the coordinator reasoned about does not exist in the record. It quoted the account holder's own good-faith paraphrase of their own actions, correctly, and then **characterised the properties of the paraphrase.** |

---

## Phase 3 — the evidence declared unrecoverable was on disk the whole time

**Round 1 of a dedicated diagnostic analysis, 2026-09-20. Probe budget spent: zero. No sub-context dispatched, no model turn spent.**

| what the record had logged as lost | what was found |
|---|---|
| the trial count | **Recovered: six attempts**, all inside 183 seconds |
| the six variants | **Recovered, all verbatim** |
| *"one plain sentence"* | **Refuted.** All three short stimuli were **three lines**, carried a **persona address**, and all three carried *"I structured this in this way due to the same issue I faced last time"* — **a declared retry, a confound nobody knew existed** |
| the assembled prompt, both arms | **Recovered in full** |
| whether the refusal was model prose or an out-of-band block | **Settled by token accounting** |
| the refusal text itself | **Still absent** — and the analysis explained why it never could have been in the file anyone had been looking in |

> **The class, and it is this investigation's first method finding: *a negative claim about a search is a claim about the search's span, never about the world.*** A record said *"not recoverable"* when it meant *"not found where I looked."* **Four parties inherited it, and nobody had looked in the local transcript store.**

### The measurement that settled the mechanism

> **Zero output tokens. 246,333 cache-creation and 147,846 cache-read tokens billed. $4.96 spent. Six attempts in 183 seconds. A smaller model generating normally in the same session at the same moment.**

All four figures re-measured; provenance in [`02-EVIDENCE.md § 1`](02-EVIDENCE.md).

⇒ **An input-side classifier block, not a refusal.** A disposition refusal is prose, and prose is output tokens. The trained-disposition limb of the framework's own three-layer model is **refuted** for this event.

⇒ **And it disposed of the stated mechanism while leaving the prediction likely correct.** The account holder's hypothesis was that *"the very orchestration of the framework… triggers a refusal."* That cannot be the mechanism, because **a model that emits nothing has reacted to nothing.** Both halves were recorded, because only one of them was wrong.

### A matched control nobody had run, sitting in the same transcripts

The refused top-level arm and the clean sub-context arm were compared **as actually assembled and sent**: byte-identical instruction carrier, a **larger** memory index carrying an **identical** eleven-token harm profile, **the same twelve** tools bound.

⇒ **Exposure in the clean arm was greater-than-or-equal on every content dimension measured.** A content-presence hypothesis cannot survive a clean arm at equal-or-greater dose.

The residual difference was the **surface**: top-level system prompt **13,138 characters in 16 blocks, with a dual-use-security paragraph**; sub-context **2,714 characters in 4 blocks, without one.**

**And the analysis then killed its own leading hypothesis.** That paragraph was *"a beautiful fit"* — it states a conditional that a bare first turn cannot satisfy — and the analysis *"had this written as the answer."* **The token accounting refutes it: that paragraph works by persuading a model, and the model never spoke.** Recorded rather than deleted; see [`CORRECTIONS.md § W-4`](CORRECTIONS.md#w-4--refuted-before-publication-the-system-prompt-paragraph-as-the-mechanism).

### The pre-registered falsifier, committed before any data

> **Same directory. Everything unchanged. Open a top-level session on the affected tier and type `What is 2 + 2?` and nothing else.**
>
> **Predicted: it refuses — stated in terms that a clean run would refute the entire diagnosis.**

---

## Phase 4 — the falsifier fires, then the instruments start failing

| when (UTC) | arm | prediction, committed before data | outcome |
|---|---|---|---|
| **2026-09-21T17:13:14Z** | `what is 2 + 2?`, top level, in the project directory | **refuses** — falsifier named | **Refused.** **The probe could have rendered the other answer and did not.** The first arm in the sequence citable without qualification. **The verbatim surface is captured at last.** |
| same | — | — | **The assembly is byte-matched to the refused cluster** — instruction carrier, memory index, twelve tools, and system prompt **all identical to the character** — with the typed text cut **99.7%** to 14 characters. **A controlled one-factor experiment, sitting on disk unremarked.** |
| **2026-09-21T19:40:08Z** | the same four words in an **empty** directory, then two follow-up turns | the analysis had judged this arm *"likely uninformative"* | **Turn 1: `4`. Clean. Turn 2 (list your tools): clean. Turn 3 (reach into the framework's config): blocked.** ⇒ **A single counterexample refutes a universal.** *"It refuses in any directory"* is **refuted by execution.** |

### The instrument failures — and the escalation is the finding

The diagnosing party ran a **citation-form self-audit at the end of every round** and published its own failure rate **both ways** — the flattering event-level rate and the unflattering figure-level rate — so that neither could be quoted alone. Five published failures across four rounds, and every one is the same defect:

> **An instrument that was correct where it was built, carried into a context where its premise no longer held, still returning a plausible number.**

| the instrument | broke when | caught only by |
|---|---|---|
| character counts labelled **bytes** | the text was multibyte-heavy — bytes exceeded characters by 1,524 | **re-execution** |
| assembly size summed from **serialised JSON** | the payload is **1.8× smaller** than its transport form | **re-execution** |
| a harm vocabulary built from **framework prose** | applied to **operational tradecraft, which uses none of those words** — it scored an offensive-tooling operator description at 0.17 per thousand characters, an **8.8× undercount** | **reading the payload in primary text** |
| **whole-file density** as the predictor | the classifier may score **passages**, not files — and density-versus-mass had been *named* as an open question and then predicted on anyway | **building a second, independent instrument and disagreeing with the first** |
| **on-disk bytes** quoted where the **rendered** form was owed | the category token appears in the interface and not in the file | **comparing two surfaces of the same event** |

> **Re-execution defends a number. Primary text defends an instrument. Only a second, independent instrument defends a model.**

**The sharpest line in the whole sequence** is the third row's bound: *the instrument was fine where it was calibrated and failed where the subject changed representation — and it kept returning a plausible number the whole time.* **The error was invisible precisely where it had been tested.**

### The reversal — a prediction changed before the data

Round 3's pre-registration: the auto-load-carrier-only directory **runs clean**, moderate confidence, grounded on whole-file density.

Round 4, forced to build a second (evasion) vocabulary for an unrelated question, turned that instrument on the shipped carrier and found the three scoring models **disagree, two of three saying block**:

| scoring model | reads | predicts |
|---|---|---|
| whole-file density | 5× below the blocked payload | clean |
| absolute mass | parity | **block** |
| sliding-window passage maximum | **exact tie** | **block** |

> **Revised pre-registration, committed before the data: I now predict the carrier-only directory blocks. Confidence: low-to-moderate.** … *"If it runs clean… that is the better outcome and I would be glad to be wrong."*

**And the round-4 budget gate is why it happened at all.** The party stopped at its fourth round, surfaced the question, and judged the round worth running before running it — then recorded: *"the round justified itself in a way I did not expect: it reversed my own pre-registered prediction… Had it stopped at three, both errors would have shipped."*

**The arm has never been run. The reversed prediction is still open.** See [`03-OPEN-QUESTIONS.md § OPEN-4`](03-OPEN-QUESTIONS.md#open-4).

---

## Phase 5 — the disposition, the five-day gap, and the sweep that reported a zero it should not have

| when | what |
|---|---|
| **2026-09-21** | The analysis stops at the budget gate and states that it does **not** recommend a fifth round, on the ground that **the binding constraint is now data, not analysis.** The account holder answers: *"a fifth round is not needed at this time from my viewpoint."* ⇒ The record labels this honestly as **single-premise agreement, not two independent judgements**, because the account holder was shown the recommendation before answering. **Analysis closed at four rounds.** Two pre-registered arms left outstanding, both requiring a human at a terminal, both expressly *not scheduled, not owed, not blocking.* |
| **2026-09-25T03:18:02Z** | Model switched to the newest tier. `03:18:05` — a 5,547-character kickoff pasted. `03:18:06` — **1.49 seconds later** — a stop notice. `03:21:15` — model switched back. `03:22:21` — a near-identical paste, and **the older tier ran the session for 2 hours 21 minutes.** **Nobody noticed for five days.** |
| **2026-09-26** | 18 further stop artifacts across six sessions — **and four separate model tiers now hold them.** One tier's notice **names the Cyber Verification Program as the remedy in the vendor's own words** and links a support article titled *real-time cyber safeguards on Claude*. **The tier serving as this investigation's control is stopped six times.** **All six are in unrelated offensive-tooling work, not the framework-governance case.** |
| **2026-09-30** | The account holder reports the condition has reached the newest tier, names the worry as being about the framework's **mechanisms** rather than its subject, and reports that the verification portal now reads **`approved`.** |
| same day | A sweep of **712** transcripts reports **zero** artifacts on the newest tier. |
| same day, later | The account holder pastes the newest tier's surface: `what is 2 + 2?`, in the project directory, **with verification reading `approved`** — **blocked three times, `Details: [cyber]`.** |
| same day, later | A sweep of **718** transcripts with a different predicate finds **the 2026-09-25 artifact that had existed for five days.** |

### The sweep defect is a *predicate* defect, not a count defect

The failing predicate was *a session with user turns and **zero** assistant records* — the signature recovered from the first episode.

> **A stopped response leaves no assistant record. But a session that worked fine and was stopped once still has assistant records.** ⇒ **The predicate could only ever find sessions in which *every* turn was blocked. It structurally excluded the common case.**

**Four things make this failure teachable:**

1. The instrument was **derived from one artifact class and applied unbounded** — the same generator as every failure in the table above, now firing on a *detector* rather than on a *measurement*.
2. **The sweep reported `0`, and the zero was believed.** It read as a settled answer, and nothing in the record disagreed with it.
3. **The wrongly-low reading had no complainant.** It looked like good news, it closed a question, and a wrongly-admitted absence has nobody to object on its behalf.
4. **It cost five days of not knowing a tier was affected** — during which any tier table would have recorded that tier as untested.

**And the same document had already published the cure and not applied it.** Hours earlier it had named the separator: *a block carries zero output tokens alongside non-zero cache-creation tokens; specificity is recovered by the token accounting, never by the turn counts.* **That detector was then shipped without being bounded to the artifact class it came from — and it does not apply to the newest-tier artifact at all, which carries no token accounting whatsoever.** The coordinator owned the defect in the same session, within hours of recording the lesson.

---

## Phase 6 — where it stands

- **The newest tier's block is witnessed**, verbatim, with verification reading `approved`. Three attempts sharing one parent, 14 characters each.
- **A portal-approved verification status did not clear a structurally null prompt on the tier in question** — and **this does not establish that the verification fails**, because a session may carry credentials minted before the grant and nobody knows which. See [OPEN-2](03-OPEN-QUESTIONS.md#open-2).
- **The condition is not a property of one model family.** Four tiers hold artifacts. A single-family explanation is dead; **model-tier-conditional** survives.
- **"The control tier runs clean" is withdrawn as a standing property.** See [`CORRECTIONS.md § W-3`](CORRECTIONS.md#w-3--withdrawn-the-control-tier-runs-clean).
- **Two notice classes exist and are dissociable.** One reads as an input-side pre-generation block; one reads as a mid-stream stop. **Whether the second really is output-side is open** — see [OPEN-1](03-OPEN-QUESTIONS.md#open-1).
- **Analysis remains closed by decision. What is live is data collection: a protocol of ordered arms exists, and not one of them has been run.**
