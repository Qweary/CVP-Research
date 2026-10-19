# The finding with the widest interest

**Stated with its bounds attached. The bounds are not decoration — there are seven of them and every one travels with the finding or the finding is overstated.**

**The figures in this file are `SINGLE-SOURCE` and were not re-measured.** See [`02-EVIDENCE.md § 7`](02-EVIDENCE.md) for why — re-running them means rebuilding an instrument whose own aim is one of the open questions — and for each figure's own confidence marker as stated by the party that produced it.

---

## The finding

> **The framework has two distinct harm profiles, and they resist repair for opposite reasons.**

| | what it is | plausible classifier verdict | why it cannot be honestly cured |
|---|---|---|---|
| **1 · Subject** | Security work, which is much of what the framework is used for: offensive-security specialist templates, red-team automation packages, a shipped portfolio of them, and the carefully logged artifacts of that work. | **A true positive.** | **Much of the framework's work is security work, and its records show it. Hiding that would misdescribe the repository.** *(Reworded 2026-10-18; [W-22](CORRECTIONS.md#w-22--softened-it-really-is-a-security-framework).)* |
| **2 · Governance** | The machinery for *constraining* its own agents — gates, deny-predicates, seals, overrides, hooks — **and the prose that documents them.** | **Plausibly a false positive.** | **Curing it means documenting your own safety controls *less* — which makes the framework both less safe and less honest.** |

⇒ **The more carefully the framework documents its own guardrails, the more it reads like a guardrail-defeat manual.**

**A framework that wrote nothing about its gates would score lower and be worse.**

**Added 2026-10-18, in the account holder's terms.** The framework is a general-purpose multi-agent framework, not only a security framework. It does a lot of security work, and it documents its controls and has enforcement mechanisms so that the work is done responsibly. **That documentation of responsible-research controls appears to be exactly what scores.** See [`CORRECTIONS.md § W-22`](CORRECTIONS.md#w-22--softened-it-really-is-a-security-framework).

---

## The measurement that produced the second profile, and why it is the sharp one

The second profile was not reasoned to. It arrived because a party was **forced to build a second, independent harm vocabulary for an unrelated question**, and then turned that instrument on the framework's shipped entry point.

The file in question is **the single auto-loaded carrier every user of the framework receives** — the one file a fresh clone delivers to the model before the user types a character.

| | offensive-vocabulary hits | evasion-vocabulary hits | control nouns |
|---|---|---|---|
| **the payload that actually blocked** (11,975 chars) | 18 | 13 | 80 |
| **the shipped auto-loaded carrier** (49,699 chars) | 14 | 12 | **84 — higher** |

⇒ **On absolute mass it is nearly indistinguishable from the payload that blocked, and it is higher on control nouns.**

**And at passage scale it does not merely approach — it ties.** Sliding-window maxima, window sized to the blocked payload's highest-scoring segment:

| window | the carrier's maximum | the benchmark it is measured against |
|---|---|---|
| 686 characters | **7.29 evasion hits per thousand characters** | **7.29 — an exact tie** |
| 3,250 characters | 1.54 offensive hits per thousand | 5.23 |

Its densest 686-character *offensive* window, at 5.83 per thousand, also **exceeds** the stale untracked file's 5.23.

### And the top-scoring passage is the framework's own safety-governance prose

**The highest-scoring passage in the entire auto-load surface is that file's own prose about the conditions under which its enforcement machinery does and does not actually fire.**

⇒ **Prose whose entire purpose is to bind the framework's own agents scores as the most evasion-dense passage the framework ships.** A framework is penalised, on this instrument, for documenting its safety machinery.

> **A decision deliberately left to the author of this repository, and not taken here.**
>
> The two short fragments that constitute that passage are **not quoted in this repository.** Quoting them would strengthen the claim materially — the whole point is *what kind of prose* scored highest, and a reader who cannot see it is taking the characterisation on trust. Against that: they are verbatim text from a private repository, and they disclose a specific property of a specific enforcement control.
>
> **The grounds in favour, if the author elects to quote them:** the claim is hard to evaluate without them; they are two fragments rather than a section, describing a control's existence in the abstract rather than constituting a runbook or an exploitable detail; and **they disclose a weakness against the framework's own interest**, which is the honest direction and the kind of disclosure that makes a security write-up credible rather than promotional.
>
> **The grounds against:** the repository is private, and its author may simply not want any of its text published regardless of length; and the specific sentence is the one a hostile reader would most enjoy.
>
> **The research value is high and the decision is not this analysis's to make.** The form used above — describing the passage's *kind* and giving the measurement — is the weaker option and is sufficient.

---

## The bounds. Every one travels with the finding.

### 1 · The score is not the finding, and the party that measured it said so first

> *"And for this candidate the score is not the finding. A token count cannot capture what that payload **is**… The semantics are the salient property and no vocabulary scores semantics. I report 7.29 and simultaneously say it is the weakest part of my case."*

That party published its headline number and immediately named it as the weakest part of its own argument. **Anyone quoting the 7.29 without that sentence is quoting half of it.**

### 2 · The instrument is one round old, uncalibrated, and was built against its author's own corpus

Its author's own open question: *"Is the evasion instrument itself sound? It is one round old and uncalibrated. I built it today, against payloads I had already read — **which is precisely the self-built-corpus hazard.**"*

**The named test is whether the vocabulary fires on an unrelated, clearly-benign codebase's configuration documentation. That test has not been run.** If it does fire there, the instrument's discriminating power is lower than these numbers imply.

**And the general form of that hazard is worth stating, because it is the most under-appreciated item in this whole corpus:** a corpus its author built is written in its author's own assumptions, and a gate has been defeated nine separate ways by an adversary who did not build it. **An upper bound has to be tested by construction, never inferred from a finding ledger** — because the wrongly-admitted case has no complainant, so a rule repaired only from its own findings can only get wider.

### 3 · The shipped entry point has never been put in front of an affected tier

The three scoring models **disagree**, and the party that modelled it **reversed its own pre-registered prediction before the data** on the strength of this measurement. **The arm has not been run.** See [`03-OPEN-QUESTIONS.md § OPEN-4`](03-OPEN-QUESTIONS.md#open-4). ⇒ **No verdict about whether the framework is usable by a new user may be drawn from this finding.**

### 4 · The 94-file density figure is a proxy, not a refusal rate

Ninety-four tracked files at or above the stale file's density, topping out at 3.1× it, **is a property of the corpus, not of the classifier.** **Not one of those files has ever been put in front of an affected tier at top level.**

What it *does* establish is sharp and limited: **the classifier is not confused about what this repository is.**

### 5 · The second profile is *plausibly* a false positive. It has not been shown to be one.

**`[cyber]` is the only category token ever observed.** If the governance profile were the mechanism, `cyber` is a strange label for it — which the measuring party names as *"a puzzle rather than a confirmation."* **A second category token would be worth more than another round of analysis.**

### 6 · One striking match, offered as a hypothesis and immediately killed by its author

The top-level system prompt's own refusal list names *"detection evasion"* verbatim, and the top-scoring passage is documentation about a detection-and-blocking gate. **The party recorded the match and then refused it:** the block is input-side, so the system prompt is not the actuator. It claimed only that a classifier and a system prompt plausibly share a taxonomy, and labelled that unproven.

### 7 · The first profile is a true positive, and that is not a complaint

> **You cannot honestly cure a true positive on subject by making the subject less visible. Any edit that made this framework look less like a security framework would be a lie about the repository.**
>
> *Amended 2026-10-18.* The account holder calls the second sentence slightly disingenuous: the framework is a general-purpose framework that does a lot of security work, not only a security framework. **The supported form:** *an edit that hid how much security work the framework does, or how carefully it documents the controls on that work, would misdescribe the repository.* [W-22](CORRECTIONS.md#w-22--softened-it-really-is-a-security-framework).

**The safeguard is over-broad about the *consequence*, not mistaken about the *domain*.** This is why the framework recorded, and kept, a rule forbidding itself from editing any file in order to score lower — not out of deference, but because **obfuscation is the wrong answer to a correct classification.**

---

## Why this sharpens the stated hypothesis rather than correcting it

Before any of this was measured, the account holder wrote:

> *"the mechanisms used by [the framework] to improve the quality and work in the way we have found produces the best quality artifacts are going to start being flagged as "cyber" aka adversarial"*

**They said *how it works* — not *what it is about*. And the measurement came down on their side, against the measuring party's own earlier framing.** That party recorded it in those terms: *"the intuition is better targeted than my own round-2 'true positive on subject' framing was. It is not only the security subject. It is the architecture."*

**And the part of the claim that is wrong makes it worse, not better.** The same turn said that frontier models *"may start viewing how [the framework] works as adversarial."*

> **No model ever viewed anything. No model formed a view at all.**

On the arm where billing exists, the model emitted **zero output tokens** — and the models that *did* read this corpus judged it benign, one volunteering unprompted that *"Nothing in the subject matter, and nothing asked of me, is unethical or improper — it is internal framework engineering."*

⇒ **The models are not the problem. A pre-generation classifier is, and it never consults a model's judgment. That is worse for three measured reasons:**

1. **A classifier cannot be reasoned with.** The entire persuasion toolkit — context, authorisation framing, stated defensive purpose — **has no purchase whatsoever.** Every lever the framework's own reference model prescribes for a disposition refusal is **inapplicable here**, and applying one would have *"failed silently while looking exactly like diligence."*
2. **It fires before the capable judgment that would help.** **The better a model gets at judging this fairly, the less that improvement helps, because it never runs.**
3. **It is nearly invisible.** For one of the two notice classes, **nothing durable reaches disk at all.** A user who hits it has no artifact, no error code, and nothing to report.

⇒ **There is no version of this framework that is both honest about what it is and guaranteed to clear an arbitrary future classifier.** Both roads are closed, for opposite reasons.

---

## The one piece of good news, and it is now qualified

**The response the framework arrived at contains no fix, and the absence of a fix is itself the finding.** What it contains is: *measure it · disclose it with a date · report it upstream · apply for verification · and keep the architecture you already had.*

The last one is the interesting one, and **it was not a reaction to any of this — it predates the refusal by months.** The framework already routes domain work into isolated sub-contexts as a binding rule, for entirely unrelated reasons of work quality. And a sub-context faces a **materially smaller assembly** — measured at **2,714 characters in 4 blocks without a dual-use-security paragraph**, against top level's **13,138 in 16 with one** — and ran the identical corpus clean on the occasion it was measured.

> **Read [`03-OPEN-QUESTIONS.md § OPEN-9`](03-OPEN-QUESTIONS.md#open-9) before repeating this.** The claim *"the corpus that blocks at top level runs clean in a sub-context, so the routing architecture is the shape that survives"* **was quoted forward as reassurance and has since been withdrawn by its own author as too broad: stop artifacts do occur inside sub-contexts, and the quotation the reassurance rested on had been altered.**
>
> **What survives is narrower and still real:** *a sub-context faces a smaller assembly and was measured clean on this corpus on the occasion it was measured.* **What does not survive is *a sub-context is immune.*** All eight observed sub-context artifacts are in a different workload entirely.

**And it makes an upstream report unusually strong.** This is a **precise, dated, reproducible instance of a specific false-positive class — an agent framework flagged for documenting its own safety controls** — stated with measurements rather than complaints, and the notices persist **per-event request identifiers**, which turns a report into a ticket rather than an anecdote. Those identifiers are deliberately not published here; see [`REDACTIONS.md`](REDACTIONS.md).

**Added 2026-10-18: the upstream report was made.** The account holder sent many `/feedback` reports, several a day for one to two weeks, about stops under an `active` verification status and about the framework not working on the newest models ([`01-TIMELINE.md` Phase 10](01-TIMELINE.md#phase-10--three-enrolments-as-the-account-holder-reports-them)).
