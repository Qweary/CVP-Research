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

## Phase 6 — where it stood when this evidence was compiled

> **Amended 2026-10-15, beside the original rather than over it.** This phase was written as *"where it stands"* and is left as written below, because the record of what was believed is the evidence. **Its last bullet was already false when this repository was first committed:** the arms it calls unrun had run more than fifteen hours earlier. See [Phase 7](#phase-7--the-arms-ran-before-this-repository-was-first-committed) and [`CORRECTIONS.md § W-14`](CORRECTIONS.md#w-14--stale-at-first-commit-no-probe-has-been-run).

- **The newest tier's block is witnessed**, verbatim, with verification reading `approved`. Three attempts sharing one parent, 14 characters each.
- **A portal-approved verification status did not clear a structurally null prompt on the tier in question** — and **this does not establish that the verification fails**, because a session may carry credentials minted before the grant and nobody knows which. See [OPEN-2](03-OPEN-QUESTIONS.md#open-2).
- **The condition is not a property of one model family.** Four tiers hold artifacts. A single-family explanation is dead; **model-tier-conditional** survives.
- **"The control tier runs clean" is withdrawn as a standing property.** See [`CORRECTIONS.md § W-3`](CORRECTIONS.md#w-3--withdrawn-the-control-tier-runs-clean).
- **Two notice classes exist and are dissociable.** One reads as an input-side pre-generation block; one reads as a mid-stream stop. **Whether the second really is output-side is open** — see [OPEN-1](03-OPEN-QUESTIONS.md#open-1).
- **Analysis remains closed by decision. What is live is data collection: a protocol of ordered arms exists, and not one of them has been run.**

---

## Phase 7 — the arms ran, before this repository was first committed

**Added 2026-10-15.** Everything in Phases 0–6 was compiled from records that stopped growing on 2026-10-01. The record kept growing. The arms below ran between 2026-09-30 (local) and 2026-10-02T05:36Z, and this repository was first committed at 2026-10-02T19:15Z. **The evidence existed and the repository did not carry it.** That is the same defect [`MANIFEST.md § 1`](MANIFEST.md) records against its own byte count: an instrument that was aimed, whose subject grew underneath it, still returning a plausible answer.

**Tier names are used from here on**, because by this phase four tiers have observations on the same four words and *"the newest tier"* no longer picks out one model. Throughout, *the first affected tier* is Fable 5.1, *the newest tier* is Opus 5.5, *the control tier* is Opus 5, and *the older tier* whose notice names the verification programme is Opus 4.8. These are public product names, already printed in the vendor's notice text in [`06-VENDOR-NOTICES.md`](06-VENDOR-NOTICES.md).

| when | arm | prediction, committed before the data | outcome |
|---|---|---|---|
| **2026-09-30** (local) | **Arm 0: the verification portal**, read by the account holder | approval date 2026-09-29 or later, moderate confidence. Named refuter: a date on or before 2026-09-26 | **No date shown.** The account holder states they first applied that day. The status reads `active`. **The page names no models and no surfaces.** It lists exactly two requirements: **30-day data retention enabled for the organisation**, and **usage monitoring and safety classifiers enabled.** The refuter did not fire. |
| same | **Arm 0b: the client's own status screen** | it says nothing about the programme, moderate-to-high | **Confirmed.** No verification line, no entitlement line, no safeguard-tier line. ⇒ **This surface cannot tell a fresh credential from a stale one in either direction**, so the stale-credential question can only be settled by executing an arm. |
| **2026-10-01T03:51:17Z** | **Arm 0c: Opus 5.5**, after a full logout and login, `what is 2 + 2?` in the project directory | **blocks**, low confidence | **Blocked.** Confirmed. |
| **03:51:23Z** | **Arm 1: Fable 5.1**, same surface, same login | **runs clean**, moderate. **This was the protocol's highest-confidence prediction** | **Blocked. Refuted by execution.** |
| **03:52:08Z** | **Fable 5**, never pre-registered | none | **Blocked.** A new row, **not** Arm 1's, because folding an unregistered tier into a registered arm is the thing pre-registration exists to prevent. |

**Three separate sessions, three independent tests of *tier*, after one login.** The adjudicating party measured the window as 75 seconds (single-source). The three stimuli themselves fall within 51 seconds (re-measured). ⇒ **One test of *credential state*, not three.** The party that adjudicated these arms had convicted itself one round earlier of counting along an axis the stimulus never varied, and it applied that conviction here, in the unflattering direction.

### The cell nobody may interpret

The protocol tabled all four outcome cells for the pair (0c, Arm 1) **before any of them was observed**, and named one of them in advance as having **no interpretation**: *0c blocks and Arm 1 blocks.* A block on both is equally consistent with *the programme does not reach this surface* and *the programme never arrived on this surface at all*, because the portal names no surface. **That is the cell that landed.** The pre-registration is only worth anything if it is honoured when it bites, so no reading of it is offered here.

**And it got worse, not better, when the full artifacts were examined.** The only credential-adjacent field in any of these transcripts is **byte-identical in all three post-login arms *and* in the pre-login artifact of 2026-10-01T01:52Z.** ⇒ **Nothing on disk marks a credential epoch.** The re-authentication that is the entire point of Arm 0c is witnessed by no instrument available here and rests wholly on the account holder's report. The adjudicating party put it the right way round: *the defect is in the instruments, not in the account.* The report was predicted in advance by an earlier record, and the account holder's reports have been accurate every time they have been checked. **But a portal field was not allowed to count as a measurement, and a reported logout cannot be allowed to count as one either.**

**The durable this bought, and it is the most portable thing in the phase:** Arm 1's prediction rested on one ground, which was that *the vendor names the programme as the remedy for this exact notice class, in the notice itself.* ⇒ **A vendor's statement that X is the remedy for a condition is not evidence that X relieves that condition on a given surface.** The party had already ruled that *a remedy menu is not a statement of mechanism*, and then treated a remedy *sentence* as different in kind from a remedy *menu*. **It is the same object, written as prose.**

### The baseline, witnessed for the first time, and the row that made it mean something

| when (UTC) | tier | outcome | re-measured here |
|---|---|---|---|
| **2026-10-01T03:26:31Z** | Opus 5.5 | **blocked**, zero output tokens, 84,643 cache-creation tokens billed | yes |
| **2026-10-01T13:22:44Z** | Opus 5.5 | **blocked**, zero output tokens, 85,643 cache-creation tokens billed. **The account holder switched to the control tier thirteen seconds later.** | yes, except the 13-second figure, which is single-source |
| **2026-10-02T05:36:34Z** | **Opus 5 (the control tier)** | ⭐ **answered `4.`**, 4 output tokens, 2.5 seconds, client `2.1.287` | yes |

**The control tier had never been observed on the control stimulus in this directory before this row.** The account holder had reached it twice and submitted nothing either time. Every comparison in Phases 3–6 was read against a baseline that, on this stimulus, had never been witnessed.

**The second row is worth more than the third.** It is a block on the identical 14-byte stimulus, in the same directory, against a byte-identical auto-loaded carrier, **sixteen hours before the clean control.** ⇒ **The reading *"the condition went away in the interval"* is refuted by an artifact rather than by a caution.** What it does not do is make the contrast controlled: tier, client version, sixteen hours, and a memory index that grew 749 bytes all still differ.

**What the clean row does not establish, each stated because it is the reading a reader will reach for:** it says nothing about the programme (it is on a tier that never blocked this stimulus); it supplies no upper bound on how close the framework sits to any threshold (a clean run on a non-firing tier bounds nothing about a firing tier); and **nobody may write *"the framework works on Opus 5"*.** The unit is an observation, not a tier, and that tier is observed stopped six times on offensive-tooling content ([`CORRECTIONS.md § W-3`](CORRECTIONS.md#w-3--withdrawn-the-control-tier-runs-clean)).

### Four smaller things the same work turned up

1. **The notice *is* written to disk, on a timing rule.** Every session that produced any further record after its stop notice acquired an on-disk notice carrying `Details: [cyber]` and a per-event request identifier. Every session whose stop notice was its last record did not. **3 for 3 in both directions** (single-source). ⇒ **On a block, capture the screen *and* leave the session open for about thirty seconds.** Neither instrument is sufficient: the screen carries the remedy menu the disk lacks, and the disk carries the request identifier and three sentences the screen lacks. See [`CORRECTIONS.md § W-15`](CORRECTIONS.md#w-15--refuted-in-part-this-class-of-notice-is-never-written-to-disk).
2. **Billing arrived after the measurement, for every blocked artifact here.** The newest-tier artifact that [`03-OPEN-QUESTIONS.md § OPEN-1`](03-OPEN-QUESTIONS.md#open-1) describes as carrying *"no token accounting of any kind"* now carries it: **zero output tokens, 230,727 cache-creation tokens, $1.876.** See [`CORRECTIONS.md § W-17`](CORRECTIONS.md#w-17--superseded-the-newest-tier-artifact-carries-no-token-accounting).
3. **The four words were not cheap.** The three post-login arms billed **$4.277206** (re-measured here, including the small title-generation model), against an internal protocol budget of about $3 that had been published as *"~$2.4 spent."* The per-probe cost on the first affected tier had roughly doubled in nine days, from $0.88 to $1.79, with cache-creation tokens rising from 43,678 to 88,649. **At that date, lifetime spend on `what is 2 + 2?` was $8.42 across seven sessions** (single-source).
4. **The transcript store was shrinking.** 700 files on 2026-10-01 against 718 the day before, a net loss despite additions. **Twelve baseline artifacts were then copied, by name, outside any repository** (single-source; the destination is deliberately not recorded anywhere). This matters more than any probe, because the artifacts from before enrolment are **the only unverified-account measurements this framework will ever hold of its own corpus.** Nobody un-enrols.

### The framework's own disclosure ruling changed

The specialist that adjudicated these arms ruled that **the framework may no longer recommend *"enrol in the verification programme"* as a remedy at all, on the evidence it holds.** It was careful about what that is not. It is **not** *"the programme does not work"*. It is the weaker, fully supported statement that **enrolment is not established as sufficient**, and a product recommendation needs sufficiency, not possibility. Any disclosure the framework ships must carry four clauses together: the prerequisite is an *account* property the framework cannot supply; its measurements were taken on an *enrolled* account; enrolment carries **both** the retention and the classifier-enabled preconditions; and **enrolment did not suffice in the one case measured.** ⚠ The retention precondition falls hardest on the security-obligated users a security framework is built for. **Whether the account holder accepts it for their own account is theirs alone, and this repository offers no view.**

---

## Phase 8 — a different workload, distilled (2026-10-03)

**Added 2026-10-15. This phase is deliberately thin, by the account holder's own decision.** The underlying material is a live, authorised offensive-security engagement involving third parties. Only the lesson is published here, not the engagement.

A separately deployed security swarm, not the framework itself, ran a live engagement and hit the same `[cyber]` category repeatedly, on both specialist sub-contexts and the parent session. A specialist pinned the tier **at primary text**: Opus 4.7 on 441 of 441 assistant records in one transcript and 686 of 690 in the other (the remaining four are client-synthetic records, not a tier). **The block-mirror events split six on Opus 4.7 and six on a Sonnet tier.** The account holder found Opus 4.7 the most consistent tier for the authorised work, and the engagement went well on it.

⇒ **The lesson, and it is the whole of what may be drawn: tier is a *frequency* axis, not an *exemption* axis.** Both tiers tripped. The swarm's own report says the classifier tripped *"regardless of model"* on some task shapes, which were resolved by routing the work to a different specialist rather than by switching tier.

**Bounds that travel with it.** This is the **unrelated offensive-tooling workload class** of [`02-EVIDENCE.md § 5`](02-EVIDENCE.md), where a stop is plausibly *correct*, and it must not be pooled with the framework-governance events. No artifact states whether that run was on the enrolled account, so **it says nothing about the verification programme.** It is not *"the framework works on Opus 4.7"*, and it is not a recommendation of that tier.

**And one report from the same week, carried as a report.** On 2026-10-02 the account holder said, in a separate session, that they could not do work that had been possible at the end of the previous year, despite an active verification status. **That is a second independent report of the same shape, from a different workload.** It is not an arm.

---

## Phase 9 — a new verification process, and the same four words on four tiers (2026-10-08 local)

**Added 2026-10-15.**

**What the account holder reports, and it is a report, not a document this analysis has read.** The vendor released a new verification process with enrolment and a **four-tier** structure. The account holder was approved for **tier 1**. On the account holder's reading of the vendor's communication, tier 1 lifts restrictions **for defensive work only, on the newer models**, and permissions the account held before continue unaffected. They are pursuing a higher tier through an organisation; the outcome is undetermined.

**Then they ran the control stimulus on four tiers, one fresh session each, two minutes in all.** Each session is: open, switch model, type `what is 2 + 2?`. **Every figure below is re-measured at this hand from the transcripts**, field by field, with the tier taken from the on-disk model record rather than from the banner:

| time (UTC, 2026-10-09) | tier | client | outcome | output tokens | cache-creation billed | cost |
|---|---|---|---|---|---|---|
| **00:45:20Z** | **Opus 5.5** | `2.1.292` | ⭐ **answered** | 35 | 46,705 | $0.379 |
| **00:46:01Z** | **Fable 5.1** | `2.1.295` | ⛔ **blocked, `[cyber]`** | **0** | 97,101 | $1.956 |
| **00:46:35Z** | **Mythos 5.1** | `2.1.295` | ⭐ **answered** | 137 | 48,294 | $0.979 |
| **00:47:20Z** | **Fable 5** | `2.1.295` | ⛔ **blocked, `[cyber]`** | **0** | 95,683 | $1.966 |

**The auto-loaded carrier and the memory index are byte-identical across all four sessions** (57,634 and 25,920 bytes; re-measured here, with a positive control that reproduces the earlier 56,846 / 20,938 figures exactly).

### What this establishes, stated narrowly

1. **With the loaded context byte-matched, two tiers answered and two blocked, on the same account, inside two minutes.** The outcome is tier-conditional once again, with a cleaner hold on content than any earlier pair had. **⚠ One factor is not held: the Opus 5.5 row ran on client `2.1.292` and the other three on `2.1.295`.**
2. **This is the first observation of Opus 5.5 answering the control stimulus in this directory.** Row 20 blocked on it eight days earlier.
3. **The stimulus is null, so these four rows measure *loaded context × tier*, not a tier's willingness to do any task.** The account holder's reading is that the framework's own auto-loaded context is what trips the two blocked tiers. That is consistent with the 2026-09-21 empty-directory arm, where the first affected tier answered the same four words cleanly. **It is a reading, not a separation.**
4. **Mythos 5.1 is a tier this evidence had never observed.** It answered. On the account holder's report, it answered in the persona the framework's carrier configures.
5. **Both blocked tiers again billed zero output tokens**, with about twice the cache-creation volume of the two tiers that answered. **That ratio is one observation, and no mechanism is drawn from it.**
6. **Two textual facts, from the same instrument on the same tier:** the on-disk notice for Fable 5.1 on 2026-10-09 lists false positives as *"legitimate coding and cybersecurity tasks"*, where the on-disk notice for the same tier on 2026-09-21 read *"coding, cybersecurity, and biology tasks."* And the on-disk notice landed 86 minutes after the stop, which is consistent with the timing rule in Phase 7. See [`CORRECTIONS.md § W-18`](CORRECTIONS.md#w-18--withdrawn-by-its-author-and-now-measured-biology-beside-cyber-as-the-signature-of-a-subject-suite).

### What it does not establish. This is the longer list, and it is meant to be.

- ⛔ **It does not show that tier 1 relieved Opus 5.5.** At least five things changed between row 20 (blocked, 2026-10-01) and this row: **the verification grant, the client version (`2.1.286` → `2.1.292`), eight days of elapsed time inside the vendor's estimated drift half-life, an auto-loaded carrier 788 bytes larger, and a memory index 5,731 bytes larger.** It is also `n = 1`.
- ⛔ **It does not show that tier 1 fails to reach the Fable tiers.** Tier 1 is described as a lift for *defensive* work, and four neutral words are neither defensive nor offensive. **Nothing here shows whether the grant is in force on any surface.** The epoch problem from Phase 7 still applies: nothing on disk marks it.
- ⛔ **It says nothing about a fresh clone** ([OPEN-4](03-OPEN-QUESTIONS.md#open-4)) **or about an unverified account** ([OPEN-6](03-OPEN-QUESTIONS.md#open-6)). An answer on a tier-1 account is exactly the case OPEN-6 warns about: relief for the account holder hides the condition from the one person best placed to see it.
- ⛔ **It is not the pre-registered +2-week re-run.** That was due around 2026-10-14. This ran early, and the verification grant now sits between it and the baseline, so it cannot serve that purpose.
- ⛔ **No trial count.** The harness line *"continuing once with that noted"* appears on both blocked rows, which may mean one automatic retry per submission.

---

## Where it stands, 2026-10-15

- **Three tiers have blocked the four-word prompt in the project directory on at least one occasion:** Fable 5.1, Opus 5.5, and Fable 5, all on or before 2026-10-01. Opus 5 answered it on 2026-10-02. On 2026-10-09, **Opus 5.5 and Mythos 5.1 answered and both Fable tiers blocked.** Every one of those statements carries its date, because the Opus 5.5 row reversed in eight days for reasons nobody can separate.
- **The re-authentication arm has run.** It landed in the cell pre-registered as uninterpretable, and the cell is now uninterpretable for a second reason that is unobservable on this client: nothing on disk marks a credential epoch.
- **The account is now on a tier-1 grant under a new process.** Whether that grant is in force on any surface, or explains anything above, is unmeasured.
- **Still unrun:** the fresh-clone arm ([OPEN-4](03-OPEN-QUESTIONS.md#open-4)), the one-file-at-a-time arm ([OPEN-3](03-OPEN-QUESTIONS.md#open-3)), the vendor's recommended fallback tier on the framework corpus ([OPEN-8](03-OPEN-QUESTIONS.md#open-8)), the reduced-assembly arm, and the +6-week re-run (around 2026-11-11).
- **Planned next, and not done:** the account holder's intended close for this line of work is a **proof of concept that routes an action a cloud model restricts to a self-hosted local model** on a consumer GPU. The hardware session has not happened. **Nothing in this repository describes that work as built, tested, or working.**
