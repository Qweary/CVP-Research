# Sources

**The artifacts this evidence rests on are named here. None of them is reproduced in this repository.**

Every decisive measurement in this investigation comes from **local client transcript files** under `~/.claude/projects/<project>/`. **Those files are not in this repository and will not be put in it**, for a reason stated plainly below. What is published here is derived, extracted and redacted: a figure with its provenance, a quoted literal, a census, a table. **Never a capture.**

Anyone who needs to verify a figure in [`02-EVIDENCE.md`](02-EVIDENCE.md) can re-derive it from the predicates in that file's § 8 against their own store. **Whether the originals are preserved, and where, is undecided** — see [`MANIFEST.md § 4`](MANIFEST.md).

---

## Why no transcript is reproduced here, and it is a constraint rather than caution

These files are **client working state**, not a curated export. Each one interleaves the evidence with:

- the account holder's email address — **1,256 occurrences across 576 of 721 files**, and **zero occurrences in the framework's tracked repository**;
- account- and organisation-linked identifier fields;
- vendor per-event request and message identifiers — **32 occurrences across 8 files**;
- absolute filesystem paths carrying a username;
- **and every other piece of work ever run through the same client, some of it involving third parties and their personal information.**

⇒ **Copying any of them into a public or publishable repository would place third-party personal information into a git history, which is permanent.** The framework's own repository is clean on every one of those literals today, and **a write-up is the most likely single route by which that would stop being true** — because the identifiers sit in attachment and environment records *immediately adjacent to* the very material a researcher would want to show.

**A practical note for anyone attempting their own version of this:** a scrub of these files is harder than it looks. The identifiers live **inside structured record fields interleaved with the evidence**, so a field-level filter is required, not a line-level one. A line-oriented redaction will miss them and will look like it worked.

---

## The preservation warning, and it is the only time-sensitive thing here

> ### **Every decisive measurement in this investigation rests on local transcript files that are *not* a managed archive. They are client working state. They may rotate, be pruned, or be lost without notice, and nothing in this repository backs them up.**

**Four facts that make this urgent rather than tidy:**

1. **The entire mechanism diagnosis rests on token accounting that exists only in these files.** Zero output tokens beside a six-figure cache-creation count is the instrument that refuted a whole class of explanations. **It is in no record, no document and no commit — only in the transcripts.** If they go, **the diagnosis becomes a claim about a measurement nobody can re-run.**
2. **One of the two notice classes is never written to disk at all.** It exists on screen and nowhere else. ⇒ **Anyone who does not capture it live has lost it** — which is exactly how this investigation lost its principal evidence for a day. **For that class, a live capture *is* the archive.**
3. **The store demonstrably changes while being measured.** Three sweeps on one day returned **712**, **718** and **721** files. It is live working state, not a record.
4. **The highest-value artifact in the store has never been read by anyone.** See the last section of this file.

---

## The primary artifacts

Cited by 8-character transcript-filename prefix. These are local filename fragments; they address nothing remotely. **All unpreserved.**

| prefix | date (UTC) | what it is | what depends on it |
|---|---|---|---|
| `b58a80db` | 2026-09-21 | **The six-attempt blocked cluster on the first affected tier.** 127 records, 0 assistant records. | **The entire mechanism diagnosis.** The only artifact carrying the decisive token accounting, the six verbatim stimuli, and the shared-parent structure. |
| `6655058f` | 2026-09-21 | **The pre-registered four-word falsifier arm**, in the project directory. | **The only arm in the sequence citable without qualification.** Also carries the first tier's API-error notice verbatim. |
| `8de8d042` | 2026-09-21 | The empty-directory session — three turns, two clean, one blocked. | The refutation of *"it refuses in any directory"*, and the filenames-pass / contents-block ladder. |
| `5829cae7` + its sub-context files | 2026-09-20 | **The clean sub-context arm.** | **The matched control** — the equal-or-greater-dose comparison — and the **originating text of the quotation** whose two copies disagree ([`CORRECTIONS.md § W-2`](CORRECTIONS.md#w-2--withdrawn-sub-contexts-are-a-safe-harbour)). |
| `57a82896` | 2026-09-25 | **The artifact a 712-file sweep reported as nonexistent.** 927 records. | **The predicate-failure finding** — the methodological centrepiece. Carries the only newest-tier billing figures in existence. |
| `b16031d2` | 2026-10-01 | **The three newest-tier four-word attempts, post-verification.** 94 records, 0 assistant records, **no token accounting.** | **The witnessed current-tier block.** Also carries the two harness literals and **an unread assembled-prompt snapshot — see below.** |
| *(the analysing session's own transcript)* | 2026-10-01 | — | Carries **one unexplained stop notice naming the newest tier.** **Its prefix is deliberately not published**, because it has no research value and because that file holds unrelated material. |
| 4 top-level + 4 sub-context transcripts | 2026-09-26 | **A different workload — unrelated offensive-tooling engagements.** | **Only the attribution bound at [`02-EVIDENCE.md § 5`](02-EVIDENCE.md)** — the fact that these must **not** be pooled with the framework-governance events. **Their prefixes are not published.** |

**One sub-context transcript in that last group carries the older tier's notice containing the verification-programme sentence** — the primary-source evidence quoted in [`06-VENDOR-NOTICES.md`](06-VENDOR-NOTICES.md). **It is cited for the vendor's own words only, and for nothing else about that engagement.**

---

## The written records this repository draws on

**All of these are in a private repository and are not reproduced here.** Named by role rather than by filename, because filenames are internal convention and carry nothing a reader needs.

| what it is | its role in this evidence |
|---|---|
| **The framework's refusal-incident log entry**, with nine successive amendments and one recorded human disposition | **The spine.** The thing being amended, and the amendments are the evidence of method. |
| **The four-round diagnostic analysis** by a dedicated specialist — roughly a thousand lines, each round carrying its own citation self-audit | **The richest single artifact.** Source of the instrument-failure taxonomy, the matched control, the pre-registrations and the reversal. |
| **The probe protocol** — the store-wide sweep, the two notice classes, the ordered unexecuted arms | Source of the sweep reconciliation and of the arms named in [`03-OPEN-QUESTIONS.md`](03-OPEN-QUESTIONS.md). |
| **The record of the account holder's own turns, verbatim** | **The authoritative home for every quotation of theirs in this repository.** Quoted from there and nowhere else — a second copy is a second thing that can drift, and this investigation has already paid for that once. |
| **The framework's layered safety-model reference document** | The inferential prior. **Descriptive class — it binds nothing, it dates itself, and every claim in it is inferential.** |
| **The framework's shared-knowledge store** | Where the shell word-splitting hazard is recorded as measured. |

**Two of the most important of those were untracked working-tree files at the time this evidence was compiled, including the authoritative home for the account holder's own words.** Flagged here because **a derived document that defers to a source is only as durable as that source's tracked status**, and a reader auditing this repository later may find that the thing it defers to has moved.

---

## The highest-value unread surface

> **One artifact carries the full assembled system prompt for a blocked turn on the currently affected tier, plus an attachment carrying the auto-loaded carrier's content in full.**

**The exact top-level assembly for an affected tier is on disk and measurable — which four analytic rounds had to *reason about* rather than *read*.**

**Nobody has measured it.** The party that found it **expressly declined**, on the ground that scoring the assembly would be a fifth analysis round on a question that had been closed. **This analysis likewise did not measure it** — it is outside its commission and would be the same defect.

⇒ **It is a separate, high-value piece of work, and it is perishable.** The client may not persist such attachments indefinitely, and **this is the only artifact known to hold one for the currently affected tier.**
