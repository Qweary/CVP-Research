# The vendor's own notice text

**Why this file exists separately, and why it is quoted at length rather than paraphrased.**

Everything else in this corpus is **inferential.** The framework's safety model was reverse-engineered from refusal behaviour; the harm vocabularies were built by the investigating parties themselves; the mechanism diagnosis is derived from billing fields. **These notices are the only place in the entire corpus where the vendor describes its own safeguard in its own words.** A write-up that paraphrased them would be strictly less honest and strictly less useful.

**They are product copy rendered on screen to any user who hits the condition.** They are not internal, not confidential, and not obtained by any privileged means.

**Two redactions apply throughout and are marked inline:** per-event request and message identifiers are stripped, and one absolute path is reduced to its relative form. See [`REDACTIONS.md`](REDACTIONS.md) for why.

**One citation trap inside a publishable quote.** The first notice below says it *"flagged **this message**."* On the occasion it was captured, **the message was four neutral words containing zero domain content**, so *"this message"* cannot literally denote them. **Quote it; do not lean on it.** Citing it as evidence that the typed message was the trigger would be quoting interface copy as an architectural claim: the quote is verbatim, is correct, and supports none of what it appears to support.

---

## Variant 1 · first affected tier, 2026-09-21

Read from the local transcript store. Two occurrences, identical.

> ```
> API Error: Fable 5.1's safeguards flagged this message (https://www.anthropic.com/legal/aup).
> Our intentionally broad safeguards allow us to deliver more capabilities faster, but can
> sometimes flag legitimate coding, cybersecurity, and biology tasks. Claude Code can't
> respond to this message with Fable 5.1.
> Double press esc to edit your last message, or try a different model with /model.
> Send feedback with /feedback or learn more: https://support.claude.com/en/articles/15363606
> Details: `[cyber]`
> ```

---

## Variant 2 · an older tier, 2026-09-26 · **the primary-source evidence for the verification programme**

Read from four separate transcripts, one of which is a sub-context. Identical in all four.

> ```
> API Error: Opus 4.8's safeguards flagged this message. Our intentionally broad safeguards
> allow us to deliver more capabilities faster, but can sometimes flag legitimate
> cybersecurity work. Apply to the Cyber Verification Program to reduce these interruptions.
> Send feedback with /feedback or learn more:
> https://support.claude.com/en/articles/14604842-real-time-cyber-safeguards-on-claude
> Details: `[cyber]`
> Request ID: [redacted]  ·  Message ID: [redacted]
> ```

> **This is the single most consequential fact in this file for understanding the account holder's own actions: the vendor's own notice instructed the reader, in terms, to apply to the Cyber Verification Program.** ⇒ **Enrolling was following a printed vendor instruction, not guessing.**
>
> **And the vendor-recommended remedy then did not prevent a block on the next tier tested.** Stated flatly, without heat, and **with [`03-OPEN-QUESTIONS.md § OPEN-2`](03-OPEN-QUESTIONS.md#open-2) attached, because that framing does not establish that the remedy failed.**

---

## Variant 3 · newest tier, 2026-10-01 · the rendered surface

This class of notice is **never written to disk.** It exists on screen and nowhere else; the copy below is the account holder's own capture at the moment it appeared, and is the authoritative record of it. One path redacted.

> **Amended 2026-10-15. "Never written to disk" is refuted in part** ([`CORRECTIONS.md § W-15`](CORRECTIONS.md#w-15--refuted-in-part-this-class-of-notice-is-never-written-to-disk)). This same event also has an on-disk notice record, and the two differ in four fields. Whether the on-disk record appears depends on whether the session produced anything after the stop. **The capture below is still the only copy of the remedy menu, which the disk does not carry.** The sentence is left as written.


**This block is the rendered screen, including client chrome, and not only the vendor's notice text** (which is what the rest of this file is scoped to). The client build number is kept deliberately: it **dates the capture**, and on a subject whose specifics are estimated to drift on a two-to-eight-week half-life, a dated capture is the whole of what makes it citable later. **The subscription tier has been removed**: it is an account attribute and carries nothing the finding needs.

> ```
>   Claude Code v2.1.286
>   Opus 5.5
>   ~/working/<project>                           ← path redacted
>
> ❯ /model
>   ⎿  Set model to Opus 5.5 and saved as your default for new sessions
>
> ❯ what is 2 + 2?
>
> ● Opus 5.5's safeguards stopped the response above · continuing once with that noted
>
>  Session paused
>
>   Opus 5.5's safeguards flagged this session. You may be seeing this for the first time:
>   Opus 5.5 is more capable and has stronger safeguards as a result, which can sometimes
>   flag non-cybersecurity work. We're improving these safeguards to reduce the amount of
>   incorrectly flagged messages. Edit and retry, or continue with Opus 4.8. Send feedback
>   with /feedback or learn more: https://support.claude.com/en/articles/8106465
>
>   Details: `[cyber]`
>
>   ❯ 1. Switch to Opus 4.8
>     2. Edit prompt and retry with Opus 5.5
> ```

**The typed prompt was 14 characters. The verification portal read `approved` at the time. Three attempts, all blocked, all sharing one parent in the transcript.**

---

## Variant 4 · Fable 5.1 and Fable 5, rendered 2026-10-01 and on disk 2026-10-09 (added 2026-10-15)

**Rendered, 2026-10-01T03:51Z, after a reported re-login.** This is the account holder's capture. Fable 5 rendered the same text with its own tier name. Reproduced with the same two reductions as Variant 3: the path, and the subscription tier.

> ```
>   Claude Code v2.1.286
>   Fable 5.1
>   ~/working/<project>                           ← path redacted
>
> ❯ /model
>   ⎿  Set model to Fable 5.1 and saved as your default for new sessions
>
> ❯ what is 2 + 2?
>
> ● Fable 5.1's safeguards stopped the response above · continuing once with that noted
>
>  Session paused
>
>   Fable 5.1's safeguards flagged this message. Our intentionally broad safeguards allow
>   us to deliver more capabilities faster, but can sometimes flag legitimate coding and
>   cybersecurity tasks. Send feedback with /feedback or learn more:
>   https://support.claude.com/en/articles/15363606
>
>   Details: `[cyber]`
>
>   ❯ 1. Switch to Opus 4.8
>     2. Edit prompt and retry with Fable 5.1
> ```

**On disk, 2026-10-09T00:46Z, the same tier.** Read from the transcript store at this hand. The per-event identifier value is stripped. Fable 5 is identical apart from its tier name.

> ```
> API Error: Fable 5.1's safeguards flagged this message (https://www.anthropic.com/legal/aup).
> Our intentionally broad safeguards allow us to deliver more capabilities faster, but can
> sometimes flag legitimate coding and cybersecurity tasks. Claude Code can't respond to
> this message with Fable 5.1.
> Double press esc to edit your last message, or try a different model with /model.
> Send feedback with /feedback or learn more: https://support.claude.com/en/articles/15363606
> Details: `[cyber]`
> Request ID: [redacted]
> ```

**What this variant adds, and only from comparisons on the same instrument:**

- **On disk to on disk, same tier, 2026-09-21 against 2026-10-09:** *"coding, cybersecurity, **and biology** tasks"* has become *"coding **and** cybersecurity tasks."* Every other sentence in Variant 1 is present in both. ⇒ **The biology enumeration is gone from this tier's copy** ([`CORRECTIONS.md § W-18`](CORRECTIONS.md#w-18--withdrawn-by-its-author-and-now-measured-biology-beside-cyber-as-the-signature-of-a-subject-suite)).
- **Rendered against on disk, which is a comparison of instruments and not of dates:** the policy URL, the *"can't respond"* sentence and the *"Double press esc"* sentence are on disk and missing from the screen, while the remedy menu is on screen and missing from disk. **The same split appears on the Opus 5.5 event of 2026-10-01**, so it is a property of the two instruments, not a change in the vendor's copy.
- **The remedy target is identical on all three tiers blocked on 2026-10-01:** *Switch to Opus 4.8.* A remedy menu is not a statement of mechanism.
- **Scope wording differs by class, as it did before:** Fable *"flagged this **message**"*, Opus 5.5 *"flagged this **session**"*. The [citation trap](#the-vendors-own-notice-text) above applies to both.

---

## The two harness strings, which are **not** vendor product copy

These are emitted by the client, not the service, and they are included because [`03-OPEN-QUESTIONS.md § OPEN-1`](03-OPEN-QUESTIONS.md#open-1) turns on the second one.

**A system notice, three occurrences in one session:**

> `Opus 5.5's safeguards stopped the response above · continuing once with that noted`

**An injected user-role turn, three occurrences, flagged as meta, 224 characters:**

> `Your response above was stopped by a safety classifier — this is not a tool or API error. The rest of it was withheld, and tool calls in it that had not finished did not run. Do not produce that content again, even reworded.`

> **The second string is not a measurement of any particular request.** It is **byte-invariant across all 19 of its occurrences in the local store**, and it carries no model name, no category token and no request identifier. Its wording reads as mid-stream truncation (*"the rest of it was withheld"*), and **that reading cannot be checked, because the artifact carries no token accounting at all.** This is the whole of why the input-side-versus-output-side question is open on the newest tier.

---

## What changed in the vendor's own framing, and what did not

| | first affected tier (09-21) | an older tier (09-26) | newest tier (10-01) |
|---|---|---|---|
| **framing of breadth** | *"**intentionally broad**… deliver more capabilities faster"*: **a declared trade** | same declared trade | *"We're **improving** these safeguards to reduce the amount of **incorrectly flagged** messages"*: **an error being worked on** |
| **false-positive domains named** | coding, cybersecurity, and **biology** | cybersecurity only | *non-cybersecurity work* |
| **verification programme named as remedy** | no | **yes, in terms** | no |
| **category token** | `[cyber]` | `[cyber]` | `[cyber]` |
| **per-event identifiers persisted** | no | **yes** | not applicable: this class is not written to disk |

**Quote all three variants or none.** The variation across them is itself a finding: the false-positive domains named differ, the framing shifts from *"intentionally broad"* to *"we're improving these,"* and **the verification-programme pointer appears on exactly one tier.** Quoting one variant and generalising from it is the single easiest factual error available in this material.

**And on that last point, a self-correction worth carrying.** The absence of the programme pointer from the newest tier's notice was briefly read as the notice being *verification-status-aware*. **It is not.** The pointer **varies by model variant** (present in all four occurrences on one tier, absent in both occurrences on another), which fully explains the pattern. **A status-awareness reading is unsupported.**

> **Amended 2026-10-15.** There are now four variants, and the rule above applies to all four. **The table above compares an on-disk notice (the first two columns) with a rendered one (the third)**, so any row that differs only between those instruments is not evidence of a difference between tiers ([`CORRECTIONS.md § W-15`](CORRECTIONS.md#w-15--refuted-in-part-this-class-of-notice-is-never-written-to-disk)). The rows that do survive on same-instrument evidence are **the false-positive domains and the programme pointer**. Both vary by tier. **The pointer is still absent from every Fable and Opus 5.5 notice observed, before enrolment and after it, including under the tier-1 grant on 2026-10-09.**

---

## Why reproducing this is fair, stated affirmatively

**It is shown to users.** Product copy rendered on screen to anyone who hits the condition.

**It is the primary source, and the rest of the corpus is inferential.** This is the only non-inferential material available.

**It is short, factual, non-creative product copy, quoted for the purpose of analysing the system it describes.**

**And the vendor's own words are an asset here rather than a target.** The notices themselves state that the safeguards are *intentionally broad*, that they *can sometimes flag legitimate* work in named domains, and (on the newest tier) that the vendor is *improving these safeguards to reduce the amount of incorrectly flagged messages.*

⇒ **Nothing in this repository is a disclosure of something the vendor denies.** It is a precise, dated, reproducible instance of a false-positive class **the vendor has named in its own product copy and says it is working on**, with a public support article attached. That is exactly what an over-broad-safeguard programme exists to receive.

**One caution, because it cuts the other way too.** The stated intent to improve is **the single most favourable datum in this corpus** for the question of whether this condition will be relaxed. **It is a statement of intent, not a forecast and not a mechanism. It must not be cited as a prediction, and it does not license waiting instead of reporting.**
