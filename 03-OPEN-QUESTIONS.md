# Open questions

**Read this before any other evidence file.** It bounds what the rest of this repository can be used to claim.

---

## Why this file ranks with the findings

**The research is not concluded.** Every item below is genuinely open on the evidence available, and each is stated with what would settle it — so that a reader can see the shape of the remaining work rather than a hedge.

An honest open question, named as a specific thing to look for with a named consequence, is stronger material than a conclusion. It is the part a reader can act on, and it is what separates research from a complaint. The standing rule this investigation ran on was that *an instrument which cannot render the opposite verdict has not measured anything*; the corollary is that **a question whose answer is already assumed was never a question.**

**And the single largest structural fact about the state of this work: a protocol of ordered, costed, pre-registered arms exists, and not one of them has been run.** Analysis was closed by decision after four rounds, on the explicit ground that *the binding constraint is now data, not analysis.* Data collection is designed and unexecuted. **Everything in this repository is retrospective, over artifacts that already existed.**

---

## OPEN-1

**Input-side or output-side on the newest tier? Two readings survive.**

**What is settled:** on the first affected tier, the block is **input-side and pre-generation**, and it is settled by an instrument that cannot be read two ways — **zero output tokens across six full, billed ingestions**, each billing six figures of cache-creation tokens. A disposition refusal is prose; prose is output tokens; there were none. The model did not decline. It never spoke.

**What is not settled:** whether that diagnosis transfers to the newest tier, where the harness chrome is different.

| evidence | points to |
|---|---|
| The harness's injected text: *"Your response **above** was **stopped** — the **rest of it** was withheld, and tool calls in it that **had not finished** did not run."* | **Mid-stream truncation**, i.e. output-side. A response that was *stopped* is a response that had *begun.* |
| **But that text is the harness's own boilerplate** — byte-invariant across all 19 of its occurrences in the local store, carrying no model name, no category token, and no request identifier. | **It is not a measurement of any particular request.** |
| **The record structure:** every injected stop turn's parent pointer resolves to a record that exists inside the file, and no record anywhere in the chain references an assistant message object at all. The chain is *user prompt → attachments → system notice → injected user turn.* (Re-measured.) | **The same pre-generation block, in newer chrome.** Input-side. |
| **There is no token accounting of any kind in the newest-tier artifact.** Seven billing field names each occur zero times. The one instrument that settled the earlier episode is simply absent. | **Nothing.** |
| The support article linked from one tier's notice is titled *real-time cyber safeguards on Claude.* | **Suggestive of output-side, and suggestive only.** A support-article title is not a mechanism statement. |

**The structure and the notice text point in opposite directions, and nothing in evidence breaks the tie.** The party that ruled on it rated the input-side reading *marginally favoured at low confidence* and said so in those terms.

**What would settle it:** token accounting on a blocked turn at the newest tier. If a stopped stream bills output tokens, output-side is confirmed. If it bills none while the notice says generation began, then either a cancelled stream is not billed as output or the aggregate discards it — **and that ambiguity is itself unresolved.** Do not resolve this from the material in this repository.

---

## OPEN-2

**Whether the Cyber Verification Program is effective at all. The observed block does *not* establish that it fails.**

**The facts, each verified.** The portal reads `approved`. The enrolment followed the vendor's own printed instruction — one tier's notice says, in terms, *"Apply to the Cyber Verification Program to reduce these interruptions."* Afterward, `what is 2 + 2?` — four neutral words, no persona line, no security noun, no confound of any kind — was blocked three times on the newest tier.

**And it establishes nothing about the programme, on a hypothesis the account holder raised unprompted and before any analysis:**

> *"I am not sure if I need to logout and login or reset my terminal or if it is just the way it is."*

**That instinct is the live confound.** A long-running CLI session may be carrying credentials or entitlements minted *before* the grant. A block observed in such a session is **equally consistent** with *the programme does not relieve this condition* and with *the programme was never in force for this request.*

**And nobody knows which.** Whether an entitlement is evaluated server-side per request from the account record, or carried in a token minted at login, is a vendor implementation detail that no artifact available here discloses. The party asked to rule on it declined, in those terms.

**A second, independent reason the status is not a measurement**, drawn by the account holder themselves in the same turn that reported the approval — *"(as long as this is shown to be effective)"*: **a portal field is a declaration about an account. It is not a measurement of classifier behaviour at the inference surface.** `approved` may not be read as `effective` until an arm says so, and no arm has been run.

**What would settle it:** fully exit the CLI, re-authenticate, re-run the identical prompt. **And even that is confounded — see [OPEN-5](#open-5).**

> **A sentence of the form "I am CVP-verified and it did not help" is not supported by this evidence.** The supported sentence is narrower: *the portal shows approved, and a block was still observed — in a session that may predate the grant. Whether the verification took effect at the inference surface is untested.*

---

## OPEN-3

**Which content trips it. There is no honest single ranking.**

Two candidate mechanisms were scored with two separately-built harm vocabularies, and the structural result is decisive:

> **Candidate A (offensive tradecraft): 17 offensive-vocabulary hits, 0 evasion-vocabulary hits.**
> **Candidate B (control-evasion documentation): 0 offensive hits, 5 evasion hits.**
>
> **Neither vocabulary detects the other candidate at all. Each scores the other at exactly zero.**

These are therefore **two independent candidate mechanisms, not two points on one scale**, and any single ranked list of suspects is dishonest. The measuring party recorded it plainly: *"had I run only the round-3 instrument I would have reported Candidate B as 0.00 and dismissed it; had I run only the other I would have reported the offensive fossil as 0.00."*

**Four further bounds, none of which may be dropped:**

1. **The one-file-at-a-time arm has never been run.** It is the only design that attributes a trigger without editing any file. It is designed, costed, and unexecuted.
2. **The observed block cannot be attributed to any one file.** Seven things were read in one command. Attributing the flag to whichever one a reader finds most striking is precisely the move this investigation convicted repeatedly.
3. **Command text and returned content are still unseparated.** Both entered the same model call, and a turn structure cannot separate two things that arrive together. On *content volume*, the returned output is overwhelmingly the likelier contributor — **stated as an inference, not as a separation.**
4. **The scoring instruments' own soundness is open.** One is a round old, uncalibrated, and was built against payloads its author had already read. Its author named that as *"precisely the self-built-corpus hazard"* — a corpus its author built is written in its author's own assumptions.

**What would settle it:** read the candidate files one at a time, same command shape each time, in a clean directory — four turns or fewer. **Including the two zero-content controls**, which is what makes it a discriminator rather than a demonstration.

---

## OPEN-4

**Does a fresh clone trip it? A reversed prediction, still untested.**

The arm: materialise the framework's single auto-loaded carrier **alone** into a scratch directory outside the repository, open a session there, type exactly `what is 2 + 2?`.

| round | pre-registered prediction | ground |
|---|---|---|
| 3 | **Clean**, moderate confidence | whole-file token density |
| 4 | **Blocks**, low-to-moderate confidence — **a reversal committed before the data** | absolute token mass at parity with the blocked payload; sliding-window passage maximum at an exact tie |

**The arm has never been run, and its two branches have opposite consequences:**

- **Clean** ⇒ the whole-file density model wins, the shipped entry point is genuinely safe, and exposure is confined to what a session subsequently reads.
- **Blocks** ⇒ **the shipped auto-load carrier alone suffices, every fresh clone is exposed before the user types a character**, and the finding is maximal.

**No verdict about the framework's usability may be published before it runs.** The party that modelled it said so in terms: *"my round-3 verdict was written on the model this measurement overturned."*

---

## OPEN-5

**The confound cannot be eliminated today, and a proposed control was correctly rejected.**

**Nine days separate the one executed control arm from the verification grant.** The programme is not the only factor that changed in that window: the framework's own reference notes estimate that classifier specifics drift on a two-to-eight-week half-life, and any harness change is a live alternative. **A clean run after enrolment would therefore not establish that enrolment caused it.**

**And the proposed fix was rejected on its merits — recorded because a rejected control is evidence of method.** The coordinator proposed routing the identical request through a third-party aggregator, which the reference notes say the programme does not propagate through, as a same-day one-factor separator. The specialist refused it: **routing through an aggregator varies the entire assembled prompt, and the assembly is the operative variable.** A control that changes the thing under test is not a control.

**The honest position: the confound cannot be eliminated with any instrument available today.** The only separator named is a **pre-registered re-run at +2 and +6 weeks** — which costs patience rather than money, and which has been pre-registered precisely so that it cannot be invented after the fact.

---

## OPEN-6

**What an unverified account experiences cannot be measured here at all. This is a hard limit.**

The framework's own reference notes state that the verification programme is tied to the **account and identity**, and does not propagate through an aggregator. ⇒ **The verification does not ship with the framework.** However effective it proves for one account, a prospective user cloning the framework onto an unverified account meets the identical wall.

**And the arm that would measure that experience is not available: the unverified baseline on this account is consumed and unrefreshable.** You cannot un-verify an account to see what an unverified user sees.

⇒ **The experience of an unverified user is unmeasured and unmeasurable by any instrument available here.** Stated flatly, not softened.

**And the hazard runs in the reassuring direction, which is the one to distrust most:**

> **Relief for the verified account would make the defect invisible to the one person best placed to see it, while leaving it fully live for everyone who is not them.**

**And the other half, which must be said with it or neither should be.** A user who binds their own security tooling, or whose own local context accrues security-engagement material exactly as this one's did, **re-creates the dense bundle.** This is a security-domain framework; the users it is *for* are disproportionately the users whose local context is dense in these tokens. So even if a bare clone runs clean, the exposure is real for the actual audience — **it simply arrives later, after the user has made the thing their own, which is a worse first impression than failing on day one, not a better one.**

---

## OPEN-7

**Prompt structure versus prompt subject was never cleanly split.**

The framework's own inferential model distinguishes a **structure** classifier, which no verification tier is thought to relax, from a **subject-content** classifier, which is the only layer the verification programme is thought to touch. The investigation classified the block as subject-side and then **expressly refused to split the two**, because the split needs the refusal *wording*, which no artifact held at the time.

**The wording later arrived**, and the split was then licensed to the subject side at high confidence, on five supports, of which two were called decisive:

1. **The vendor enumerates its false positives as domains, not shapes:** *"coding, cybersecurity, and biology."* A structure classifier's false positives are mis-shaped prompts, not subject areas — and *biology* standing beside *cyber* is the signature of a subject-safeguard suite keyed on domains of concern.
2. **The prompt was structurally null.** `what is 2 + 2?` is about the most shape-innocent prompt available in any language. For a shape detector to have fired there, it would have to be firing on the assembled surrounding context — and it would then plausibly have emitted a *shape* category, not `cyber`.

**The bounds that still hold, and they are large:**

- **This does not confirm that a three-layer architecture exists.** The vendor says *"safeguards"* and returns **one** category token. The A/B/C model is reverse-engineered from refusal behaviour, and every claim in its own reference document is inferential and self-dated.
- **No threshold, score, or margin is observable. Ever, anywhere in this evidence.**
- **A verification-status change was hoped to be the instrument that splits the two without the wording. It is a weak instrument**, and the party that assessed it said so plainly: a block after enrolment is consistent with the structure layer, with a stale credential, with a per-model bound that account enrolment does not move, and with other readings.
- **And the framework's own reference model is measurably incomplete on this point.** It makes the subject layer's threshold depend on **account tier**. But the identical assembly ran clean on one model and blocked on another, **on the same account, on the same bytes** ⇒ it is also **model-conditional**, and the document has no slot for that. Surfaced, not repaired.
- **`[cyber]` has been the category token on every observed block. A second token has never been seen.** That is the named falsifier for the subject-side classification, and it has never fired.

---

## OPEN-8

**The vendor's own recommended remedy has never been tested on this corpus.**

Both affected tiers' notices offer switching to an older tier as remedy option 1. **Nobody has ever tried it on the framework's corpus.**

**And the evidence cuts both ways, which is why this is an open question and not a suggestion:** the recommended fallback tier **itself holds four `[cyber]` block artifacts** in the local store — all in unrelated offensive-tooling work, none on the framework corpus. ⇒ **The vendor's recommended escape hatch is a tier that is itself demonstrably blockable.** Whether it clears this corpus is unknown.

**And neither menu option is neutral for this research.** Option 2 — *edit prompt and retry* — is **the exact act that destroys the comparison**, because a prompt rewritten *because* the treatment refused it is a post-treatment variable, and no increase in sample size repairs it. Option 1 silently swaps the control model. **The product's happy path is this research's prohibited act** — which is a genuinely interesting problem in instrumenting any system whose interface is trying to help you.

---

## OPEN-9

**Are isolated sub-contexts a safe harbour? The reassuring answer has been withdrawn and must not be quoted forward.**

**The claim as it circulated, and it circulated as good news:**

> *"the corpus that blocks at top level runs clean in a sub-context, so the routing architecture the framework has had all along is the shape that survives."*

**It is too broad, and it is broken twice over by independent routes.**

**(a) Its scope is refuted. Stop artifacts do occur inside sub-contexts.** This analysis measures **7 injected-stop artifacts flagged as sub-context, across 4 distinct sub-context transcripts, plus 1 API-error artifact in a sub-context.**

**(b) Its provenance is impeached.** A 42-quotation literal-match sweep over the investigation's own records returned 41 pass and 1 wrong — and the one failure is the sub-context verdict quotation itself, carried in two files **differing on the first character.** Traced to the originating primary artifact, the capital letter is original and one carrier **altered the quotation inside quotation marks.** The alteration changes no meaning — it is a lowercased initial, almost certainly made to fit a host sentence's grammar. **It is recorded anyway, because the altered copy is the one that was propagated forward as the reassurance.**

**Neither limb is sufficient alone and both are recorded.**

**What survives, stated narrowly and with its bound:**

- The **matched-control measurement stands untouched**: the identical corpus, at equal-or-greater dose on every content dimension measured, ran clean in a sub-context on the occasion it was measured — because the two surfaces **do not face the same assembly** (top level 13,138 characters in 16 blocks *with* a dual-use-security paragraph; sub-context 2,714 characters in 4 blocks *without* one).
- **But all eight observed sub-context artifacts are in unrelated offensive-tooling work** — dispatched specialist roles doing offensive work. **None is in the framework-governance case.**

⇒ **"A sub-context is immune" is refuted. "A sub-context faces a smaller assembly and was measured clean on the framework corpus" survives.** The gap between those two sentences is the whole of this open question, and the first one is the one that was circulating.

**And the counts do not agree across parties.** [`02-EVIDENCE.md § 4`](02-EVIDENCE.md) shows how they reconcile — but **one half of that reconciliation is an inference this analysis drew and the authoring party never confirmed**, and in this same investigation another party drew a structurally identical *"an epoch, not an error"* reconciliation, tested it rather than publishing it, and **found it false.** ⇒ **No total may be published. The honest form is `<count> under <predicate> over <N files> at <date>`.**

**What would settle it:** the sub-context arm has never been run on the framework corpus at an affected tier, and the sub-context assembly has never been measured at an affected tier — the 2,714-character figure is from the first episode, on a different model.

---

## OPEN-10

**Smaller open items, each with its consequence.**

| | open question | what would settle it | consequence if left open |
|---|---|---|---|
| **a** | **Is there a detection floor at all?** Everything that has ever *passed* scored **zero** on both harm vocabularies. | Read a file carrying a small **nonzero** dose and no offensive content. | **Until something nonzero passes, every statement about how close this corpus sits to the threshold is unbounded below.** Nothing licenses saying it is *near* anything. A two-sided bracket whose passing side scores zero is not a floor — it is a potency-free control. |
| **b** | **Which of three readings of the clean tier holds** — it has no such safeguard; it has it at a higher threshold; it has it and this assembly passes. | Watch whether a clean-tier session ever surfaces a notice of any kind. | Decides whether the working configuration is **robust** or merely **sub-threshold**. |
| **c** | **Is the observed onset date real?** Zero artifacts exist in the local store before one date. | A longer store, or vendor confirmation. | **A 34-day store cannot establish an onset**, and *persisting these notices to disk* may itself be new harness behaviour. **A trajectory claim would love this datum and must not be handed it.** |
| **d** | **Is the retrospective detector sound?** | — | **No. Measured.** The zero-assistant-record signature has a mundane false-positive class (a session in which nothing was asked) and, worse, **a structural false-negative class that cost five days.** Token accounting restores specificity for one artifact class and **is entirely absent from the other.** |
| **e** | **The vendor's stated intent to improve.** | Nothing in evidence. | The single most favourable datum for the *"will this be relaxed"* question — **and it is a statement of intent, not a forecast and not a mechanism. It must not be cited as a prediction, and it does not license waiting instead of reporting.** |
| **f** | **One stop notice sits in the transcript of the very session that performed this analysis**, at `2026-10-01T00:56:45Z`, flagged as top-level, naming the newest tier. Nobody has explained it. | — | Recorded as observed and unresolved. **No reading is offered.** |
| **g** | **What about other vendors?** | Never tested. | Explicitly named as the measurement that would *confirm* a trajectory claim — and it has not been made. Note also that on a different-premise engine these layers and this programme do not merely drift, **they do not exist**, so the comparison is not a simple one. |

---

## The dated tier-and-outcome table does not exist

The only instrument that could detect a *trajectory* is a dated table of model tier against observed outcome. **No such table exists.**

That is worth its own heading because of how it stayed missing. A review round recommended **`KEEP`**-ing such a table — when none had ever been built. **A maintenance verb applied to a nonexistent object is unfalsifiable by construction**, which is why nine days passed with nothing ever reading as wrong. Nobody can fail to maintain a thing that is not there.

**If anything ever claims that this condition is being tracked over time, the table has to exist first.**
