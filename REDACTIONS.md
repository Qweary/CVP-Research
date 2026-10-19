# Redactions

**What is deliberately absent from this repository, and why.**

---

## The sequencing rule this repository was built under

**The scrub was completed before the first commit, not before publication.**

That ordering is the whole point and it is worth stating, because the natural instinct is the other way round: *collect everything now, clean it before going public.* **That does not work.** A git push writes history permanently. Anything committed today survives deletion, survives a later scrub, and **becomes public the instant a repository's visibility changes, because the history changes with it.** A repository that is locally clean is not the same thing as a repository whose *history* is clean, and the only way to measure the difference is to check out a fresh clone.

⇒ **Every file here was written as if it were already public.** Nothing was staged on the understanding that it would be cleaned later.

**The corollary, for anyone doing the same thing:** the second-hardest part is not the redaction, it is the temptation to paste a raw capture *"just to show the structure"* (see § 4).

---

## § 1 · Identity and account identifiers · absent

| class | why absent | measured status in the local store |
|---|---|---|
| **The account holder's email address** | Personal information with no diagnostic value. Explains nothing about the classifier; illustrates nothing about the method. | 1,256 occurrences across 576 of 721 transcript files. **Zero occurrences in the framework's tracked repository**, a hygiene property that already holds and must not be broken by a write-up. |
| **Account- and organisation-linked identifier fields** | Stable account-linked identifiers with **no diagnostic value to a reader**. Pure downside, zero upside. One party examined these fields specifically to see whether verification status could be read from them, and **could not**. The negative result is published; the values are not. | 192 and 4 occurrences respectively across the store. Zero in the tracked repository. |
| **Credential material of any kind** | Self-evident. Any token-shaped string of 30 or more characters is treated as do-not-publish by default, whatever it looks like. | Not quantified, deliberately. Two code-hosting access tokens were pasted into one session's conversation during the period this evidence covers, which is **precisely why the raw-capture rule below is absolute rather than advisory.** |

**Not even a prefix of any identifier value is carried.** A prefix would buy a reader nothing and is not a redaction, it is a shorter identifier.

---

## § 2 · Vendor per-event identifiers · absent, and they are exactly what an upstream report should carry

The notice on one tier persists a **request identifier and a message identifier** per event. **Thirty-two occurrences across 8 transcript files.**

**These are genuinely valuable, and their value is private rather than public.** They turn an upstream report from a complaint into a ticket: a per-event handle the vendor can look up directly. **But they are account-linked event handles**, and publishing them hands any reader a correlation key into one account's usage. **Withholding them is effective against a third-party reader and only partly against the vendor, since the timestamps and token figures published here are themselves a per-event handle to anyone holding service-side logs. That is accepted deliberately: those figures are the decisive instrument and the account is the author's own.**

⇒ **Send them upstream. Do not print them.**

**The publishable form of the finding loses nothing:** *the blocking notice persists a per-event request identifier and message identifier, which means an upstream report can cite specific events rather than describing them.* That is the whole of what a reader needs.

**One of the four was independently confirmed genuine during this work.** The confirmation is published; the value is not.

---

## § 3 · Paths, filenames and session identifiers

| form | status | reason |
|---|---|---|
| **8-character transcript-filename prefix** (`b58a80db`, `57a82896`) | **published** | A local filename fragment. It is not a credential and addresses nothing remotely, and **it is load-bearing for the method**: a reader who cannot see that two different sweeps hit two different artifacts cannot follow the predicate-failure finding at all. |
| **A full session identifier** | **not published** | No concrete exposure identified, but the full form buys nothing the prefix does not. Default to the prefix. |
| **An absolute path to a transcript** | **not published** | Carries a username *and* a project directory name. Published as `~/.claude/projects/<project>/<prefix>….jsonl`. |
| **Absolute paths containing the username** | **not published** | The username is not a secret and sits inside a repository its owner controls (**86 tracked files contain it**). But in a public document it is gratuitous, and a home-directory layout plus a username is soft reconnaissance value for no editorial gain. **The relative structure is what carries meaning**: specifically, that the transcript store sits *outside* the repository, which is the fact that matters for both the method and the privacy story. |
| **The analysing session's own transcript prefix** | **not published** | It has no research value (one unexplained notice, no reading offered), and that file holds unrelated material. Omitting it costs the reader nothing. |
| **Prefixes of the unrelated-workload transcripts** | **not published** | See § 5. Verified by literal sweep over the staged set, predicate and span stated in [`MANIFEST.md § 2`](MANIFEST.md). |

---

## § 4 · Raw captures · absent, absolutely

**No raw transcript record appears anywhere in this repository, whole or truncated.**

**This is the single most likely route by which something would escape**, and it is not a hypothetical: a raw record drags the email address, the account-linked identifier fields, absolute paths, and possibly identifiers that were never in any tracked tree, because **those fields sit in attachment and environment records immediately adjacent to the very structure a researcher wants to show.**

⇒ **The rule: never paste a raw record. Transcribe the fields you need, by name, by hand.** Every census, token figure and timestamp in [`02-EVIDENCE.md`](02-EVIDENCE.md) was produced that way.

**Two adjacent routes, named because they are the likely ones:**

- **A screenshot.** A terminal screenshot of a notice carries the prompt line (**username, hostname, absolute path**) and possibly adjacent scrollback from unrelated work. **This repository contains no screenshot and recommends none. Prefer a transcribed code block.**
- **A quotation that grew.** A citation that starts as one sentence and ends as a section crosses the line in § 6 without anyone deciding to. **Fix a quotation's length when you choose it, not after the draft reads thin.**

---

## § 5 · Other work on the same machine · absent

The machine and client this evidence comes from have been used for **unrelated engagements, some of which involve third parties. One class of that work, authorised offensive-security tooling, is named below, and only because a bound in the evidence turns on it; the others are not characterised here at all.**

**That work was encountered incidentally during store-wide sweeps.** What was read from its transcripts for the attribution bound is stated as a predicate on the face of [`02-EVIDENCE.md § 5`](02-EVIDENCE.md) (each session's working directory and its first non-meta user turn), and four of them were additionally read for the vendor's own notice text quoted in [`06-VENDOR-NOTICES.md`](06-VENDOR-NOTICES.md). It is named in this repository **only to the minimum needed to state one bound**: that a substantial share of the stop artifacts fall in an offensive-tooling workload and therefore **must not be pooled** with the framework-governance ones. See [`02-EVIDENCE.md § 5`](02-EVIDENCE.md).

**That bound is load-bearing and is stated in the publishable form:**

> *A majority of the stop events in this local store are from unrelated offensive-security work, where a stop is plausibly correct. Only a small number are from the framework-governance case, and those are the whole of what this evidence says about the framework itself.*

⇒ **That sentence is not a concession. It is the sentence that makes the rest credible.** A write-up that pooled them would be claiming a false-positive rate nobody has measured, and **that is the most likely single factual error this material invites.**

**One further class is absent entirely.** The framework seals one class of material for measurement-integrity reasons. **That material is not a subject of this research, was not read, listed, extracted or copied, and nothing about it appears here.** This paragraph is the whole of what is said about it, and it goes no further.

---

## § 6 · Verbatim text from a private repository · where the line falls

**The distinction is between *citing* a private repository and *publishing* it.**

> **A quotation is a CITATION when a reader needs those exact words to evaluate a claim, and the excerpt could not substitute for access to the source. It becomes PUBLISHING when the excerpt delivers the source's content as content**: enough that a reader gains the material rather than the evidence.

**The operational line used here:**

- **A sentence or two, quoted because a claim turns on its exact wording: citation.** Carried.
- **A full section, a complete file, a long contiguous block, or a quotation long enough to be independently useful: publishing.** Not carried.

**What this means in practice for this repository:**

| class | treatment |
|---|---|
| **The framework's name, structure, file layout, and the fact that it is a general-purpose multi-agent framework that does a great deal of security work, with an offensive-security specialist library** *(reworded 2026-10-18; [W-22](CORRECTIONS.md#w-22--softened-it-really-is-a-security-framework))* | **Carried by description; the name itself is not.** The framework is described, not named (see [`MANIFEST.md § 4`](MANIFEST.md)), **and the description must be given, because the true-positive half of the central finding is unintelligible without it.** |
| **Short lines from internal analysis carrying a method finding** | **Carried.** These are citations and they are the best material in the corpus. |
| **The single passage at the centre of [`04-FINDING.md`](04-FINDING.md)** | **Described, not quoted.** The two short fragments that constitute it are not reproduced. The decision to quote them is explicitly left to the repository's author, with the grounds on both sides set out in that file. **This is the one place where the weaker option was chosen deliberately rather than by default.** |
| **Internal role names, ticket identifiers, record filenames** | **Removed throughout.** They expose nothing, but using them makes a write-up read as internal documentation to a reader who has no key for them. Parties are attributed by role instead, which is also clearer, and which preserves the part that *is* evidence: **who reached a conclusion, because in several cases a party's leading hypothesis was killed by a measurement that same party commissioned.** |
| **Operational tradecraft strings quoted in the internal records** | **Not carried.** The records quote fragments of stale agent descriptions naming specific tooling and attack techniques, because scoring them was how one instrument's 8.8× undercount was discovered. **The methodological point survives completely without them and is actually cleaner:** *a vocabulary built from framework prose scored an offensive-tooling operator description at near zero, because operational tradecraft uses none of the words framework prose uses.* **The finding is about the instrument, not about the payload.** |
| **The account holder's own words** | **Carried, from one source only.** They are their author's to publish. Quoted from the single authoritative record of them and nowhere else. |

---

## § 7 · Figures that are redacted *for accuracy* rather than for privacy

**This class is easy to miss and is the more dangerous of the two in a document published under a researcher's name.**

**The density figures** (the `7.29`, the `5.23`, the 94-file count, the `15.99`) are carried **only with their own author's confidence markers attached.** Publishing `7.29` without that author's own sentence that *"the score is not the finding"* and that it is *"the weakest part of my case"* would misrepresent a **single-source, uncalibrated, self-built instrument** as a settled measurement.

**And any single total for the artifact count is absent entirely.** Three parties measured the same store and produced three different, individually defensible totals, because they ran different predicates at different moments while the store was growing. **A bare number would be wrong under at least two of the three.** The only form carried here is `<count> under <predicate> over <N files> at <date>`, which is also the better story.

---

## § 8 · What was *not* redacted, and why that matters too

**Over-redaction defeats this research in its original direction.** The point of the work is a measured, dated, reproducible instance of a false-positive class, and an instance stripped of its measurements is a complaint.

So the following are carried in full, deliberately:

- **All token accounting**, including dollar amounts, which are API-rate equivalents rather than charges (the account is on a subscription plan; amended 2026-10-18, [W-23](CORRECTIONS.md#w-23--reframed-dollar-figures-are-api-rate-equivalents-not-spend)). It is one account's own usage accounting, it is **the decisive instrument in the entire corpus**, and it exposes nothing.
- **All three variants of the vendor's notice text**, with per-event identifiers stripped and nothing else. See [`06-VENDOR-NOTICES.md`](06-VENDOR-NOTICES.md) for why reproducing them is fair.
- **Every structural measurement**: assembly sizes, the 16-block-versus-4-block system-prompt difference, the shared-parent retry structure, record-type censuses.
- **The whole method, the pre-registrations, the reversals, and every self-audit.** Free of hazard and the most interesting material in the corpus.
- **Every open question.** Not merely publishable: **protective.** Publishing the findings without them is the actual risk.

---

## § 9 · Classes added 2026-10-15

**Each class declared here has a row in [`MANIFEST.md § 7`](MANIFEST.md).** That is the rule `MANIFEST § 6` item 5 set after a declared class turned out to have no instrument behind it.

1. **The live engagement in [`01-TIMELINE.md` Phase 8](01-TIMELINE.md): everything except the distilled lesson.** That means the engagement's identity and date, every party to it, the names of the tools involved, its transcripts and their prefixes, its operational content, and every task shape that work's own report names. **The account holder decided that only the distilled lesson enters this repository.** The lesson is stated by class: tier is a frequency axis, not an exemption axis.
2. **The volunteer organisations the account holder works with toward a higher verification tier.** None is named. They are third parties, and the facts that matter (higher tiers need an organisation with an EIN/TIN, these organisations have none, and the outcome is undetermined) do not need names. *(Amended 2026-10-18: first written as one organisation; [W-21](CORRECTIONS.md#w-21--amended-the-new-process-is-public-and-it-was-the-account-holders-third-enrolment-not-their-first).)*
3. **The subscription tier**, again. It appears in the captured surfaces and is removed from Variant 4, exactly as from Variant 3.
4. **The framework's persona name.** Phase 9 records that one tier answered in the persona the carrier configures. The name itself is internal convention and carries nothing a reader needs.
5. **Transcript prefixes from the live engagement**, and the analysing session's own prefix, for the same reasons as § 3.
6. **The destination of the twelve-artifact preservation copy.** It is a path on the account holder's machine, and it appears in no document anywhere.

**Two things a careful reader might expect to be redacted, and are not:**

- **Tier names.** They are public product names, already printed in the vendor's own notice text. From 2026-10-15 they are needed to tell four tiers apart on one stimulus.
- **The two portal requirements.** They are the conditions the vendor's portal displays for the programme, and they change what the programme *is*. ⚠ They also imply a fact about the account holder's own organisation: that 30-day data retention is enabled on it. **That implication is flagged for the account holder rather than decided here.**

---

## § 10 · Classes added 2026-10-18

**Each class declared here has a row in [`MANIFEST.md § 8`](MANIFEST.md).**

1. **The proof of concept's network identifiers.** Every IP address, hostname, username, key and key fingerprint, the forwarded port's host-side details, and the router's make, model and firmware. [`07-LOCAL-ROUTING-POC.md`](07-LOCAL-ROUTING-POC.md) uses placeholders such as `<host-b>` and `<tunnel-user>`. **The method itself is shown in full**, on the account holder's decision: show everything, blank the identifiers.
2. **The bridge's source and the framework's run tooling.** Described by pattern, not published. The framework is the account holder's own work.
3. **The probe text, the rubric text, every model reply, and every per-probe verdict.** The result is published as counts only.
4. **The internal names of the agent roles that built and ran the proof of concept**, under the same rule as § 6.

**Not redacted, deliberately:** the model names, the Ollama version and its default port, the tunnel's restrictions, the host's hardware and OS, the acceptance checks, and the fact that the account is on a subscription plan. The subscription **tier** stays redacted as in § 9 item 3; the plan type is stated because the cost convention needs it.
