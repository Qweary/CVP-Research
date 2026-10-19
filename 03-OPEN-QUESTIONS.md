# Open questions

**Read this before any other evidence file.** It bounds what the rest of this repository can be used to claim.

---

## Why this file ranks with the findings

**The research is not concluded.** Every item below is genuinely open on the evidence available, and each is stated with what would settle it — so that a reader can see the shape of the remaining work rather than a hedge.

An honest open question, named as a specific thing to look for with a named consequence, is stronger material than a conclusion. It is the part a reader can act on, and it is what separates research from a complaint. The standing rule this investigation ran on was that *an instrument which cannot render the opposite verdict has not measured anything*; the corollary is that **a question whose answer is already assumed was never a question.**

**And the single largest structural fact about the state of this work: a protocol of ordered, costed, pre-registered arms exists, and not one of them has been run.** Analysis was closed by decision after four rounds, on the explicit ground that *the binding constraint is now data, not analysis.* Data collection is designed and unexecuted. **Everything in this repository is retrospective, over artifacts that already existed.**

> **Amended 2026-10-15. The paragraph above was already false when this repository was first committed** ([`CORRECTIONS.md § W-14`](CORRECTIONS.md#w-14--stale-at-first-commit-no-probe-has-been-run)). Arms 0, 0b, 0c and 1 ran on 2026-09-30/10-01, the control tier was witnessed on 2026-10-02, and the account holder re-ran the stimulus on four tiers on 2026-10-09 under a new verification grant. **The arms are in [`01-TIMELINE.md` Phases 7–9](01-TIMELINE.md), and every item below now carries a dated amendment where they bear on it.** The items are not closed by this. **Most are more open than before, because the arms answered questions about outcomes and the open questions are about treatment and mechanism.**
>
> **Three sentences this update invites, each unsupported, with the version the evidence does support:**
>
> | the tempting sentence | why it is unsupported | the supported version |
> |---|---|---|
> | *"Tier 2 fixed Opus 5.5."* *(tier corrected 2026-10-18)* | At least five factors changed between the last block and the first clean run, and it is one run | *"On 2026-10-09, under a tier-2 grant, Opus 5.5 answered the four words once. It had blocked on them eight days earlier. What changed in between is not separable."* |
> | *"I re-authenticated after enrolling and it still blocked, so the programme doesn't work."* | The cell was pre-registered as uninterpretable, and the re-authentication left no trace on disk | *"A block after a reported re-authentication lands in a cell I committed in advance to not interpreting. Whether the grant reached the inference path is unmeasured."* |
> | *"Opus 4.7 / Opus 5 / Mythos 5.1 works with the framework."* | Each is one observation, and two of those tiers are observed blocked on other content | *"`<tier>` answered `<stimulus>` in `<directory>` on `<date>`, client `<version>`. The same tier is observed blocked on `<other content>`."* |

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

> **Amended 2026-10-15.** The settling measurement OPEN-1 names has arrived, and it lands on the branch this item said stays ambiguous. The newest-tier artifact gained a billing record **after** it was measured: **zero output tokens, 230,727 cache-creation tokens** (re-measured; see [`CORRECTIONS.md § W-17`](CORRECTIONS.md#w-17--superseded-the-newest-tier-artifact-carries-no-token-accounting)). Every later block in this evidence reads zero output tokens too: the three post-login arms, two more newest-tier blocks, and the two Fable blocks of 2026-10-09. **Each of those also shows the harness string saying the response was "stopped."** ⇒ **Either the block is pre-generation, or a cancelled stream is not billed as output.** The adjudicating party re-labelled the rows *pre-generation* at moderate confidence. **This item stays open, and the instrument that could close it is now known not to be this one.**

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

> **Amended 2026-10-15. The arm named above was run, and it did not settle this item. It made it harder.**
>
> - **Run:** on 2026-10-01T03:51Z, after a reported logout and login, the four words blocked on Opus 5.5, on Fable 5.1, and on an unregistered Fable 5 row. **That is the cell the protocol named in advance as having no interpretation**, so none is offered.
> - **A second reason it cannot be read:** the only credential-adjacent field in any artifact is **byte-identical before and after the logout/login.** Nothing on this client marks a credential epoch, so **the treatment is unwitnessed in principle, not just in this instance.**
> - **What the programme *is* changed under the investigation.** The portal, read on 2026-09-30, lists two requirements: **30-day organisational data retention, and usage monitoring and safety classifiers enabled.** ⇒ **Enrolment is a status that depends on classification running, not an exemption from it.** That makes *"enrolment will stop the flag"* possibly a category error rather than a false hypothesis.
> - **Then the process itself changed.** On the account holder's report, the vendor introduced a four-tier verification process on 2026-10-08 and approved them for tier 2 *(corrected 2026-10-18 from "tier 1"; [W-20](CORRECTIONS.md#w-20--corrected-the-account-holders-verification-tier-is-2-defensive-not-1))*, which they read as a defensive-only lift on newer models. No vendor document about it was read for this repository. *(Amended 2026-10-18: the structure is public and was announced on 2026-10-06 by third-party coverage; 2026-10-08 is the approval date the account holder reports. The vendor's own page is still unread; [W-21](CORRECTIONS.md#w-21--amended-the-new-process-is-public-and-it-was-the-account-holders-third-enrolment-not-their-first).)* On 2026-10-09 Opus 5.5 **answered** the four words once while both Fable tiers blocked ([`01-TIMELINE.md` Phase 9](01-TIMELINE.md)). **That neither establishes nor refutes the grant's effect on any tier.**
>
> **The supported sentence, as of this date** *(tier corrected 2026-10-18)*: *"I enrolled, re-authenticated, and the four words still blocked on three tiers, in a cell I had committed in advance to not interpreting. Under a later tier-2 grant, one of those tiers answered once. I cannot separate the grant from everything else that changed."*

> **Amended 2026-10-18. Two reports from the account holder bear on this item, and neither closes it.**
>
> - **Re-authentication.** The account holder reports fully logging out and back in during and throughout testing, the 2026-10-09 run included. If that holds, the 2026-10-09 Fable blocks did not run on a pre-grant credential, and **the stale-credential reading above does not explain them.** It remains a report: nothing on disk marks a credential epoch.
> - **The enrolment history.** The account holder reports three enrolments and two approvals: an earlier form of the programme the year before, the then-current form on 2026-09-30 (portal `active`, minimal improvement, none on the newest models), and the tiered form on 2026-10-08 at tier 2 (defensive). See [`01-TIMELINE.md` Phase 10](01-TIMELINE.md#phase-10--three-enrolments-as-the-account-holder-reports-them).
>
> **The supported sentence, as of 2026-10-18:** *"I was enrolled three times and approved twice, and I logged out and back in throughout. The four words still blocked on two tiers after the latest approval, on a lift meant for defensive work. Whether any grant reached the inference path, I cannot measure from here."*

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

> **Amended 2026-10-15.** **The confound this item describes no longer exists in the form stated.** The grant turned out to be same-day (2026-09-30), not nine days after the control, so time drift between enrolment and the blocked arms is about zero. ⚠ **That does not help.** Removing an alternative explanation for an effect that did not happen explains nothing. **The +2-week re-run date (around 2026-10-14) has passed without a run as pre-registered.** The account holder's 2026-10-09 runs came early and now sit on the far side of a new tier-2 grant *(corrected 2026-10-18 from "tier-1")*, so they cannot stand in for it. **The +6-week date (around 2026-11-11) is still open, and the verification grant now sits inside its window as a second confound.**

---

## OPEN-6

**What an unverified account experiences cannot be measured here at all. This is a hard limit.**

The framework's own reference notes state that the verification programme is tied to the **account and identity**, and does not propagate through an aggregator. ⇒ **The verification does not ship with the framework.** However effective it proves for one account, a prospective user cloning the framework onto an unverified account meets the identical wall.

**And the arm that would measure that experience is not available: the unverified baseline on this account is consumed and unrefreshable.** You cannot un-verify an account to see what an unverified user sees.

⇒ **The experience of an unverified user is unmeasured and unmeasurable by any instrument available here.** Stated flatly, not softened.

**And the hazard runs in the reassuring direction, which is the one to distrust most:**

> **Relief for the verified account would make the defect invisible to the one person best placed to see it, while leaving it fully live for everyone who is not them.**

**And the other half, which must be said with it or neither should be.** A user who binds their own security tooling, or whose own local context accrues security-engagement material exactly as this one's did, **re-creates the dense bundle.** Much of the work this framework is used for is security work, and its likely users are disproportionately the users whose local context is dense in these tokens. *(Reworded 2026-10-18 from "This is a security-domain framework; the users it is* for *are…"; [W-22](CORRECTIONS.md#w-22--softened-it-really-is-a-security-framework).)* So even if a bare clone runs clean, the exposure is real for the actual audience — **it simply arrives later, after the user has made the thing their own, which is a worse first impression than failing on day one, not a better one.**

> **Amended 2026-10-15. The hazard above was briefly inverted, and it may now be live again.** After the 2026-10-01 arms blocked on an enrolled account, the adjudicating party recorded that the account holder and a prospective unverified user were, for once, **on the same side of the wall**: the condition was *observable* to the one person best placed to see it, though not *solved*. **On 2026-10-09, under a tier-2 grant *(corrected 2026-10-18 from "tier 1"; [W-20](CORRECTIONS.md#w-20--corrected-the-account-holders-verification-tier-is-2-defensive-not-1))*, Opus 5.5 answered.** If the grant is what changed that, the account holder has moved back to the side this item warns about, and **nothing available here can tell.** The unverified baseline is still unrefreshable. **Twelve pre-enrolment artifacts are now preserved outside any repository** ([`CORRECTIONS.md § W-19`](CORRECTIONS.md#w-19--superseded-all-unpreserved)), and they remain the only unverified measurements this framework will ever hold of its own corpus.
>
> **Amended 2026-10-18.** *"Unverified"* above is stronger than the evidence. On the account holder's report, the account held an enrolment in an earlier form of the programme the year before. The twelve artifacts are **pre-enrolment for the programme then current**, and whether the earlier enrolment had any effect in September 2026 is unknown. See [`CORRECTIONS.md § W-21`](CORRECTIONS.md#w-21--amended-the-new-process-is-public-and-it-was-the-account-holders-third-enrolment-not-their-first).

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

> **Amended 2026-10-15.** **The first of the two decisive supports above is withdrawn** ([`CORRECTIONS.md § W-18`](CORRECTIONS.md#w-18--withdrawn-by-its-author-and-now-measured-biology-beside-cyber-as-the-signature-of-a-subject-suite)). The false-positive list varies by tier, and on the same tier, measured on the same instrument, *"biology"* is gone from the Fable 5.1 copy by 2026-10-09. The second support, structural nullity, stands. **`[cyber]` is still the only category token observed**, now across seven blocks on three tiers that this repository did not previously carry. The named falsifier has still not fired. **No re-rating is offered.**

---

## OPEN-8

**The vendor's own recommended remedy has never been tested on this corpus.**

Both affected tiers' notices offer switching to an older tier as remedy option 1. **Nobody has ever tried it on the framework's corpus.**

**And the evidence cuts both ways, which is why this is an open question and not a suggestion:** the recommended fallback tier **itself holds four `[cyber]` block artifacts** in the local store — all in unrelated offensive-tooling work, none on the framework corpus. ⇒ **The vendor's recommended escape hatch is a tier that is itself demonstrably blockable.** Whether it clears this corpus is unknown.

**And neither menu option is neutral for this research.** Option 2 — *edit prompt and retry* — is **the exact act that destroys the comparison**, because a prompt rewritten *because* the treatment refused it is a post-treatment variable, and no increase in sample size repairs it. Option 1 silently swaps the control model. **The product's happy path is this research's prohibited act** — which is a genuinely interesting problem in instrumenting any system whose interface is trying to help you.

> **Amended 2026-10-15. Still untested on the framework corpus.** The remedy menu on all three tiers blocked on 2026-10-01 offered the same fallback tier, and it is still the one row in the internal tier table that nobody has filled. **One adjacent datum, which must not fill it:** in a separate live offensive engagement ([`01-TIMELINE.md` Phase 8](01-TIMELINE.md)), an older Opus tier **still tripped**, six times out of twelve block events. That is a different tier, a different workload and a different stimulus, and it says only that a fallback tier is a frequency, not an exemption.

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

> **Amended 2026-10-15. It exists.** It was built on 2026-09-30 inside the framework's private records: 18 witnessed rows, six rows marked empty on purpose, and every row carrying an artifact pointer or marked unwitnessed. It reached 21 rows by 2026-10-02. **A projection of it, restricted to the four-word control stimulus in the project directory and extended with the 2026-10-09 rows, is published at [`02-EVIDENCE.md § 9`](02-EVIDENCE.md).** [`CORRECTIONS.md § W-12`](CORRECTIONS.md#w-12--a-maintenance-verb-applied-to-a-nonexistent-object) stays as recorded. **The table existing does not make a trajectory claim available.** Its rows reverse within eight days on one tier, and a table cannot separate the reasons.
