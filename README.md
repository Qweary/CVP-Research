# CVP-Research

**Field notes on a safety classifier that cannot be observed or reasoned with — and the one channel that does exist is a report, not an appeal.**

Status: **open investigation. Not concluded.** Last updated 2026-10-15. First committed 2026-10-02.

---

## What this is

In September 2026, a multi-agent agent-orchestration framework stopped being runnable on the newest Claude model tiers inside its own working directory. The block reproduces on a four-word arithmetic prompt — `what is 2 + 2?` — typed as the first turn of a fresh session. It carries the category token `[cyber]`.

This repository is the evidence behind that observation: a dated chronology, every figure with its provenance and whether it was re-measured, the vendor's own notice text verbatim across three model tiers, and — at the same weight as the findings — **the list of things that are still unknown.**

It is published because the investigation produced two things worth more than the complaint: a measurement that identifies *where* in the pipeline the block occurs, and a method for reasoning about an opaque system that caught its own investigators being wrong five separate times in the same specific way.

## What this is not

**It is not a conclusion about whether the Cyber Verification Program works.** The account holder is enrolled and the portal reads `approved`. A block was still observed afterward. Those two facts do not combine into "CVP does not work," for a reason set out in [`03-OPEN-QUESTIONS.md`](03-OPEN-QUESTIONS.md#open-2) and raised first by the account holder themselves: a running CLI session may be carrying credentials minted before the grant. **The arm that would separate those readings — fully exit, re-authenticate, re-run the identical prompt — has not been run.**

**It is not a measured false-positive rate.** Most of the stop events in the local transcript store come from unrelated offensive-security work, where a stop is plausibly *correct*. Only a small number are from the framework-governance case, and those are the whole of what this evidence says about the framework. Pooling them would claim a rate nobody has measured. See [`02-EVIDENCE.md § 5`](02-EVIDENCE.md).

**It is not a live measurement of current classifier behaviour.** Every figure here is retrospective, derived from local transcript artifacts that already existed. **No probe has been run.** A protocol of ordered, costed, pre-registered arms exists and not one of its arms has been executed. Anything here describes what specific model tiers did on specific dates.

> **Amended 2026-10-15: the two sentences above about probes were false when this repository was first committed** ([`CORRECTIONS.md § W-14`](CORRECTIONS.md#w-14--stale-at-first-commit-no-probe-has-been-run)). The re-authentication arm, its paired arm on a second tier, and a clean witness of the control tier had all run more than thirteen hours earlier. The material this repository was derived from had stopped on 2026-10-01. The arms are now in [`01-TIMELINE.md` Phases 7–9](01-TIMELINE.md), and the tier table is in [`02-EVIDENCE.md § 9`](02-EVIDENCE.md). **Every figure is still retrospective** in the sense that matters: it was measured from artifacts after the fact, never steered while running.

**It is not a finished story.** The honest summary of where it stands is one short ratio:

| | |
|---|---|
| **Established** | A pre-generation classifier blocked a structurally null four-word prompt in one directory, on **two** separate model tiers, reproducibly, across two days and two independent occasions, measured against byte-matched assemblies — and on the one arm where billing data exists, **the model emitted zero output tokens**, so no model ever formed a view about anything. (Stop artifacts of *some* kind exist on four tiers, but across two distinct workloads that must not be pooled — see [`02-EVIDENCE.md § 5`](02-EVIDENCE.md). **Two** is the figure the four-word prompt supports, and the internal summary this repository was derived from said three; see [`CORRECTIONS.md § W-13`](CORRECTIONS.md#w-13--this-repositorys-own-source-summary-overstated-a-tier-count).) |
| **Not established** | The mechanism on the newest tier · whether CVP is effective · which content triggers it · whether a fresh clone of the framework triggers it · what an unverified account experiences · whether the trigger is prompt *structure* or prompt *subject* · whether the vendor's own recommended remedy works · whether isolated sub-contexts are a safe harbour · where the detection floor is · whether there is an onset date. |

That ratio is the state of the research. It is not a reason to say less; it is the reason the parts that *are* measured can be trusted.

**Since first commit (added 2026-10-15), one row each:**

| | |
|---|---|
| **Now established** | **The re-authentication arm was run, and the four words still blocked on Opus 5.5, Fable 5.1 and Fable 5**, in the outcome cell pre-registered *before the data* as uninterpretable. · **The control tier answers the four words** in the project directory, witnessed for the first time on 2026-10-02. · **The vendor's portal conditions verification on safety classifiers being enabled**, so verification is not an exemption from classification. · **On 2026-10-09, under a new tier-1 grant, Opus 5.5 and a tier never seen before answered the four words, while both Fable tiers blocked**, with the auto-loaded context byte-matched across all four. · **One tier's notice no longer lists "biology"**, on same-instrument evidence. |
| **Still not established, and now harder** | Whether any grant reached the inference path. **Nothing on disk marks a credential epoch, so the re-authentication is unwitnessed in principle.** Why Opus 5.5 changed between 2026-10-01 and 2026-10-09: at least five factors moved and it is one run. And everything in the row above that was not touched: mechanism, trigger content, fresh clone, unverified account, remedy tier, onset. |

---

## The one finding with the widest interest

Stated with its bounds attached, and the bounds are not decoration — see [`04-FINDING.md`](04-FINDING.md) for all seven of them.

> **The framework has two distinct harm profiles, and they resist repair for opposite reasons.**
>
> The first is its **subject**: it is a security framework, with an offensive-security specialist library and red-team automation packages. A classifier flagging that is **plausibly correct**, and no honest edit makes it less true.
>
> The second is its **governance machinery**: the gates, deny-predicates, override paths, seals and hooks that constrain its own agents — and, critically, **the prose that documents them.** On one scoring model, the single most "evasion-dense" passage in the file every user of the framework auto-loads is that file's own prose about when its enforcement gate does and does not fire.
>
> ⇒ **The more carefully the framework documents its own guardrails, the more it reads like a guardrail-defeat manual.** A framework that wrote nothing about its gates would score lower and be worse.

**Three bounds that travel with that, or it is overstated.** The scoring instrument is one round old, uncalibrated, and was built by the same party against payloads they had already read. Its author published the headline number and in the same breath called it *"the weakest part of my case,"* on the ground that no token vocabulary scores semantics. And the arm that would test whether a fresh clone of the framework actually trips the classifier **has never been run** — two of three scoring models predict it does, one predicts it does not, and the party who modelled it reversed its own pre-registered prediction before the data and still rates it low-to-moderate confidence.

---

## Probably the real contribution: the method

The subject is one vendor's classifier on a handful of dates, and the framework's own reference notes estimate that such specifics drift on a two-to-eight-week half-life. **The method does not drift.** It generalises to any opaque system a researcher has to reason about from outside — a classifier, a rate limiter, a fraud model, a ranking system, a moderation pipeline.

Every practice in [`05-METHOD.md`](05-METHOD.md) was paid for by a specific recorded failure *in this investigation*. None is an aspiration. The short form:

- **Write the prediction and its falsifier down before you look.** An instrument that cannot render the opposite verdict has not measured anything.
- **State the span *and* the predicate with every count.** A bare total hides which predicate was run, and the predicate is where the bug lives. One sweep here stated its span scrupulously — *712 files, every transcript, parsed as JSON, not grepped* — and reported **zero** artifacts on an affected tier. The predicate could only ever have found sessions in which *every* turn was blocked. An artifact had been on disk for five days.
- **The wrongly-low reading has no complainant.** It looks like good news, it closes a question, and nothing disagrees with it. A rule repaired only from its own findings can therefore only get wider; an upper bound has to be tested by construction.
- **Re-execution defends a number. Primary text defends an instrument. Only a second, independent instrument defends a model.** The definitive proof of the third clause arrived by accident: two harm vocabularies built for different questions score *each other's* top finding at exactly zero.
- **Amend, never rewrite** — because the record of what you believed is the only evidence that can show you a pattern across your own mistakes. A tidied record is a destroyed instrument. This repository's [`CORRECTIONS.md`](CORRECTIONS.md) exists for that reason and is not an appendix.
- **Treat the harness as part of the instrument, and end every check with something that renders.** On the shell used here, an unquoted expansion used as a file list silently collapses to one argument and returns a well-formed integer that is wrong — and that `0` is byte-identical to the `0` that means *this genuinely does not occur*.

---

## Reading order

Read these two first. The first bounds what can be claimed; the second records what has already been withdrawn.

1. **[`03-OPEN-QUESTIONS.md`](03-OPEN-QUESTIONS.md)** — what is not settled, and what would settle each item.
2. **[`CORRECTIONS.md`](CORRECTIONS.md)** — claims this investigation published and then refuted, preserved beside their refutations.

Then, in any order:

| file | what it holds |
|---|---|
| [`04-FINDING.md`](04-FINDING.md) | the two-harm-profiles finding, with all seven bounds |
| [`05-METHOD.md`](05-METHOD.md) | the transferable practice, and the failure that paid for each item |
| [`01-TIMELINE.md`](01-TIMELINE.md) | the dated arc — every arm, what was predicted *before* the data, what it established and what it refuted |
| [`02-EVIDENCE.md`](02-EVIDENCE.md) | every figure, with its provenance and its re-measurement status |
| [`06-VENDOR-NOTICES.md`](06-VENDOR-NOTICES.md) | the vendor's own notice text, verbatim, across three model tiers, plus a fourth variant added 2026-10-15. The only non-inferential material in the corpus |
| [`SOURCES.md`](SOURCES.md) | the off-repo artifacts the evidence rests on, named but not reproduced |
| [`REDACTIONS.md`](REDACTIONS.md) | what is deliberately absent from this repository, and why |
| [`MANIFEST.md`](MANIFEST.md) | every file, its provenance, and the redaction classes it was checked against |

---

## How to read the numbers here

**Three conventions, each adopted because ignoring it produced an error in this investigation.**

**1. Every count carries its predicate, its span, and its date.** The form is `<count> under <predicate> over <N units> at <date>`. There is deliberately **no single headline total** for how many stop events exist. Three separate parties measured the same local store on the same day and reported different totals — 712, 718 and 721 files, and three different event counts — all defensible, because they ran different predicates at different moments while the store was growing underneath them. A bare number would be wrong under at least two of the three.

**2. Figures are marked either re-measured or single-source.** A figure marked **re-measured** was executed against the primary artifact with its predicate stated. A figure marked **single-source** was read in one party's report and not re-run, and is carried with that party's own confidence marker attached. The distinction is load-bearing: two separate figure defects in this investigation survived a full review round *because nothing re-runs a number once it is written into prose*, and one of them — character counts labelled as bytes — had already been corrected once and then drifted back into the records.

**3. Characters and bytes are not interchangeable, and both are stated where it matters.** In one stimulus set, two structurally distinct prompts have different character counts and *identical* byte counts, so in bytes they collapse into one figure.

---

## Terminology

This repository is written for a reader who has never seen the framework. Three terms are unavoidable:

- **Sub-context** (a "subagent"): an isolated agent instance that the main session spawns with its own instructions and its own, much smaller, system prompt. It matters here because the two surfaces differ measurably — top level received a 13,138-character, 16-block system prompt containing a dual-use-security paragraph; the sub-context received 2,714 characters in 4 blocks with no such paragraph.
- **Auto-loaded carrier**: the one instruction file a fresh clone of the framework delivers to the model before the user types anything. It is the only part of the framework that reaches a model without a user action, which is why its score matters separately from the rest of the repository's.
- **The framework's own A/B/C safety model**: an internal, dated, explicitly *inferential* model that distinguishes a prompt-**structure** classifier, a prompt-**subject** classifier, and a trained **disposition**. It was reverse-engineered from refusal behaviour, never from any vendor statement, and this investigation refuted one of its three limbs and found it silent on a fourth variable. It is referenced here as one party's falsifiable prior, not as a description of the vendor's architecture.

Internal role names, ticket identifiers and record filenames have been removed throughout. Where a judgement belongs to a particular party, it is attributed by role — *the coordinator*, *the diagnosing specialist*, *this analysis* — because who reached a conclusion is part of the evidence, and in several cases a party's leading hypothesis was killed by a measurement that same party commissioned.

## Scope and provenance

All observations are from **one account, one machine, one framework, in September 2026.** The framework's repository is private; this repository carries derived and redacted evidence only, never captures of source material. The vendor's notice text is product copy rendered on screen to any user who hits the condition, quoted here because it is the only place in the whole corpus where the vendor describes its own safeguard in its own words.

**On that point, and it is not a concession:** the notice text *itself* states that the safeguards are *"intentionally broad,"* that they *"can sometimes flag legitimate coding, cybersecurity, and biology tasks,"* and — on the newest tier — that *"We're improving these safeguards to reduce the amount of incorrectly flagged messages."* One tier's notice instructs the reader, in terms, to apply to the Cyber Verification Program. **Nothing here is a disclosure of something the vendor denies.** It is a precise, dated, reproducible instance of a false-positive class the vendor has named and says it is working on.

**What is not in this repository, and the reasons are in [`REDACTIONS.md`](REDACTIONS.md):** no raw transcript captures, no account or organisation identifiers, no per-event vendor request identifiers, no absolute filesystem paths, and no verbatim framework source beyond short citation length. The scrub was performed **before the first commit**, not before publication, because a git history preserves whatever was ever committed to it.

**And one statement of absence that has to be made precisely, because the loose form of it was wrong.** This repository does say *something* about other work on the same machine, and it has to: the attribution bound in [`02-EVIDENCE.md § 5`](02-EVIDENCE.md) — that most of the stop events come from unrelated offensive-security work and must not be pooled with the framework-governance ones — **is the sentence that makes every other count in here credible, and it cannot be stated without naming that one workload class.** What is absent is everything beyond it: **no party to any other engagement is named, no engagement's subject matter is described beyond the single workload class the bound requires, and no session of any other workload is cited by any identifier that means anything outside this repository.** See [`REDACTIONS.md § 5`](REDACTIONS.md).
