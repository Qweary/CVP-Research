# Manifest

**Every file staged, its provenance, and the redaction classes it was checked against.**

**Compiled 2026-09-30 by the research-analyst role that built the underlying evidence dossier.** This manifest exists so that the staging set can be verified mechanically before any commit. **A file not listed here was not cleared and should not be pushed.**

**Amended 2026-10-01, after an independent reading of the whole staged set by a second party.** That read found, and this manifest now records rather than quietly repairing: **three claims this manifest made about itself that were false** (the span in § 1 and § 2, one instrument's figure, and a declared do-not-publish class with no row), **a description that breached a do-not-publish bound** (§ 5), and **four sentences that disclosed more than the bound they served.** The amendments are marked where they land. ⇒ ⭐ **The manifest's own § 6 item 2 predicted exactly this: literal sweeps catch literals, and the three hardest findings were invisible to all three instruments.** Every figure below was **re-measured at the amending hand over the true span**, not inherited.

**Round disclosure:** the analysis that produced this staging set held no prior round in its context: **round 1**, and saying so is the disclosure. **The 2026-10-01 amendment pass likewise held no prior round in its own context: round 1 on the remediation, and saying so is the disclosure.**

---

## § 1 · The staged set

**11 files total: 10 content files plus this manifest.** All Markdown; no binaries, no images, no archives, no scripts, no transcript captures.

> **Amended 2026-10-15.** The figures in § 1 and § 2 are the first commit's, and they stand as that commit's record. **The update on branch `delta-2026-10-15` is measured separately in [§ 7](#-7--delta-2026-10-15-measured-separately).** The file count is unchanged. No file was added or removed.
>
> **Amended 2026-10-18.** Delta 2, on branch `delta-2026-10-18`, adds **one content file**, `07-LOCAL-ROUTING-POC.md`. The set is now **12 files: 11 content files plus this manifest.** It is measured separately in [§ 8](#-8--delta-2026-10-18-measured-separately).

**Two spans, because this manifest is part of what it measures.** The 10 content files are **1,662 lines / 167,727 bytes**, measured after the last of the second round of amendments landed, in a pass that opened 2026-10-01 and closed 2026-10-02, local. **The complete-set figure is deliberately not asserted:** it moves with every edit to *this* file, so any number for it would be stale by the time it was written. **Counts in § 2 are each stated against the span they were taken over.** ⭐ **That convention is why the figure above is quotable at all: this manifest is not one of the ten, so amending this manifest cannot move it.**

⛔ **AND THE PREVIOUS FIGURE WAS CORRECTED RATHER THAN UPDATED, WHICH IS A DIFFERENT CLAIM.** The figure first published here was **1,634 lines / 162,278 bytes**, described as *"stable."* **At the moment it was written the true span was 1,654 / 164,485 (short by 20 lines and 2,207 bytes), so it was wrong when written, not stale.** All ten content files and this manifest landed in a single commit, so no edit intervened to make a correct figure go out of date. ⇒ ⭐ **This is the generator this whole repository documents, committed by this file against itself: an instrument that was aimed, whose subject grew underneath it, still returning a plausible number, and nothing re-ran it, because nothing re-runs a number once it is written into prose.**

**All three figures, so the arithmetic is auditable rather than asserted:** `1,634 / 162,278` claimed · `1,654 / 164,485` true at the time of the independent read · `1,662 / 167,185` true after the first round of amendments · `1,662 / 167,727` true after the second round, which a held-out read of the amended set occasioned. ⭐ **The fourth figure is here because landing that read's five named changes moved the byte count and would otherwise have left this section asserting the third one: the same defect, one round later, caught only by re-measuring after the edits rather than after the reasoning.** **Each was re-measured two independent ways (`wc -l -c` over an explicit quoted ten-file list, and a Python pass counting newlines and bytes), and the two agree to the digit at every step.**

| file | what it is | provenance |
|---|---|---|
| `README.md` | Outside-reader framing: what the research is, what it is not, the open ratio, reading order, number conventions, terminology. | Written for this repository. Derived from an internal evidence dossier's index and publication-safety classification; **de-jargoned and re-aimed at a reader with no knowledge of the framework.** |
| `01-TIMELINE.md` | The dated arc in six phases: every arm, what was predicted *before* the data, what each established and refuted. | Derived from the internal chronology, which is itself a projection over a refusal-incident log entry and a four-round diagnostic analysis. Figures within it are re-measured; see `02-EVIDENCE.md`. |
| `02-EVIDENCE.md` | Every hard figure with its provenance, marked `RE-MEASURED` or `SINGLE-SOURCE`; the three sweep predicates and their results; the attribution bound; the six-point repository hygiene measurement. | **Figures re-executed against the primary local transcript artifacts, predicates stated.** `SINGLE-SOURCE` figures are read at one party's primary text and carry that party's own confidence marker. |
| `03-OPEN-QUESTIONS.md` | Ten numbered open questions, each with what would settle it; plus the nonexistent tier table. | Derived from the internal open-questions file. **This is the file that protects the author and it is listed second in the README's reading order deliberately.** |
| `04-FINDING.md` | The two-harm-profiles finding with all seven bounds, and the quotation decision left explicitly to the author. | Derived from the internal central-finding file. **The passage at its centre is described rather than quoted**; see § 4 below. |
| `05-METHOD.md` | Eleven transferable practices, each with the recorded failure that paid for it. | Derived from the internal method file. **Nothing in it is repository-specific or identifies any third party.** |
| `06-VENDOR-NOTICES.md` | Three verbatim vendor notice variants, the two harness strings, what changed across tiers, and the fair-use grounds. | **Read from the local transcript store at this hand, plus one authoritative human capture for the class that is never written to disk.** Per-event identifiers stripped; one path reduced. |
| `CORRECTIONS.md` | **Thirteen** claims this investigation published and then withdrew or refuted, preserved beside their refutations. | Derived from the refusal log's ninth amendment and from the diagnostic analysis's own round-by-round self-audits. **Carries every withdrawal that postdates the internal dossier**, including **`W-13`, which is a correction to the internal dossier itself**, caught by reading this repository's headline against its own body before publishing: the source summary said a block on *"three separate model tiers"* and the four-word prompt supports **two**. The error ran in the flattering direction. |
| `SOURCES.md` | The off-repo artifacts named, not reproduced; the preservation warning; the highest-value unread surface. | Derived from the internal source manifest, **with every absolute path removed**; the internal version is classified do-not-publish as a whole file precisely because it carries them. |
| `REDACTIONS.md` | What is absent and why, in eight sections, including the before-first-commit sequencing rule. | Derived from the internal publication-safety classification, **plus two classes that postdate it** (see § 3). |
| `MANIFEST.md` | This file. | Written for this repository. |

---

## § 2 · Redaction classes checked, with counts

**Instrument 1: a script that reads each file as UTF-8 and counts literal occurrences.** Driven over an explicit file list; **no unquoted shell expansion anywhere**, because on this shell an unquoted expansion used as a file list silently collapses to one argument and returns a well-formed integer that is wrong.

**Span: all 10 content files, 1,662 lines, 167,727 bytes, re-driven after the second round of amendments, in a pass that opened 2026-10-01 and closed 2026-10-02, local.** ⚠ **The window is given rather than a single date because the clock crossed midnight during that pass, and a one-day epoch label on a measurement taken across the boundary is exactly the defect this section exists to document.** Counts below are occurrences, not lines.

⚠ **THE EPOCH OF THESE COUNTS, STATED ON THE FACE OF THIS SECTION BECAUSE ITS ABSENCE WAS THE DEFECT.** The three instruments were first run on 2026-09-30 and their results were published against a span of **1,634 lines / 162,278 bytes**, which was **never** this set's span. **Every value-bearing class below has been re-driven on 2026-10-01, after the amendments landed, over the span stated immediately above.** ⇒ ⛔ **A count whose run date and span are not both stated cannot be told apart from a count taken over a different object, and that is exactly what happened here, for twenty-one classes at once.**

| class checked | occurrences | files |
|---|---|---|
| The account holder's email address | **0** | 0 |
| Code-hosting personal access tokens, both current prefix forms | **0** | 0 |
| The organisation identifier value | **0** | 0 |
| Absolute home-directory path | **0** | 0 |
| The bare username, in any context | **0** | 0 |
| The account-linked identifier field name | **0** | 0 |
| The organisation-linked identifier field name | **0** | 0 |
| Vendor per-event request identifier values | **0** | 0 |
| Vendor per-event message identifier values | **0** | 0 |
| Session scratchpad absolute path | **0** | 0 |
| The analysing session's own transcript prefix | **0** | 0 |
| **Prefixes of the unrelated-workload transcripts (four checked individually)** | **0** | 0 |
| The framework's repository directory name | **0** | 0 |
| The sealed archive's filename stem | **0** | 0 |
| The sealed archive's do-not-extract marker | **0** | 0 |
| Internal agent role names (five checked individually) | **0** | 0 |
| Internal improvement-queue identifier form | **0** | 0 |
| Internal refusal-log identifier form | **0** | 0 |
| Internal coordination-directory reference | **0** | 0 |
| Full UUIDs in canonical 8-4-4-4-12 form | **0** | 0 |
| Any email-shaped string | **0** | 0 |
| **The phrase *"Request ID"*** (benign, expected nonzero) | **1** | 1 |

**The one nonzero is accounted for:** it is the redaction marker in `06-VENDOR-NOTICES.md`, where the vendor's own label is retained and **the value is replaced with `[redacted]`.** That is the intended state.

⛔⛔ **ONE ROW IS NEW AND ITS ZERO IS NOT THE SAME KIND OF ZERO AS THE OTHERS. SAID PLAINLY, BECAUSE A ROW READING `0` BESIDE NINETEEN OTHER ROWS READING `0` LOOKS EXACTLY LIKE A CLASS THAT WAS ALWAYS CLEAN.** The unrelated-workload-prefix row did not exist in the first version of this table, **although [`REDACTIONS.md § 3`](REDACTIONS.md) declared that class do-not-publish.** When it was first driven, on 2026-10-01, **it measured one occurrence of each of four prefixes: four in total, all in [`02-EVIDENCE.md § 5`](02-EVIDENCE.md) and none anywhere else**, while `REDACTIONS § 3` and [`SOURCES.md`](SOURCES.md) both stated they were not published. ⇒ **The declaration was false and no instrument could have caught it, because no instrument covered the class.** The prefixes were then replaced with the neutral labels `session A`–`session D`, and **the `0` above is the measurement after that change.** ⭐ **The repair that generalises is at § 6 item 5: a class a redaction document declares absent must have a row here or be marked unmeasured, because a declared class with no instrument reads exactly like a cleared one.**

> **And re-running the identical sweep over the complete set including this manifest returns `3`, not `1`, because this section's table row names it and so does § 3's discussion of this same effect.** Recorded rather than quietly updated, because it is a complete, small instance of the observer effect this research documents: **by writing down that a string occurs once, this manifest made it occur twice, and by writing *that* down it made it occur three times, a figure this file published as `2` and nothing re-ran until a third reading of the set, and a later reader re-running the check would be measuring this manifest rather than the body.** ⇒ **Any sweep for a literal that this repository discusses must state whether `MANIFEST.md` and `REDACTIONS.md` are inside its span.**

### Positive controls on the same command shape

**A zero is worthless without one.** Two were run.

**(a) A present-literal control.** `safeguards`, under the identical command shape: **24 occurrences across 5 files over the 10 content files; 27 across 6 once this manifest is included** (re-driven 2026-10-01; the complete-set figure was **26** before this manifest's own amendments, and the three added occurrences are this manifest's). The instrument reads the files.

**(b) A fabricated-hit control, which is the one that matters.** A probe file containing one deliberately fabricated instance of each of the first ten classes above was placed in the staging directory and the identical sweep re-run.

> **All ten classes returned `1`. The instrument fires on every shape it claims to detect.** The probe file was then removed; the directory is back to its listed contents.

**That is the control that a null control cannot give you.** It demonstrates that each predicate is *aimed*, not merely that the instrument *runs*.

**(c) ⭐⭐ A TWO-CORPUS AIMED-PREDICATE CONTROL, ADDED 2026-10-01, AND IT IS STRONGER THAN EITHER OF THE ABOVE FOR THIS PURPOSE.** The identical predicate was driven over **two** corpora: this staged set, and the **internal evidence dossier this set derives from, where each literal is known to be present.** A literal returning `0` on the dossier proves the predicate is **not aimed** and makes the `0` beside it worthless; a nonzero there **validates** it.

**Twenty-eight literal classes were driven this way. Every one returned nonzero on the internal dossier and zero on the staged set**: the verbatim private-repository passage (two fragments, 2 hits each on the dossier), the username (4), an absolute home path (1), the auto-loaded carrier's filename (13), three internal role names (2 / 38 / 13), the framework's short and long names (25 / 4), its repository directory name (1), two account-linked field names (5 / 2), a vendor per-event identifier value prefix (2), an internal ticket-identifier form (1), an internal record filename (6), two internal directory references (9 / 4), two named tradecraft tools (2 / 1), two internal file paths (1 / 3), a working path (2), the analysing session's prefix (4), an other-lane sub-context prefix (3), a parent-pointer value (7), and the four unrelated-workload prefixes (2 each). **All twenty-eight proven aimed; all twenty-eight zero here.**

⛔⛔ **AND THE CONTROL EARNED ITS KEEP BY FAILING TWICE, WHICH IS WHY IT IS REPORTED RATHER THAN SUMMARISED.** Two further role-name predicates were driven and **returned zero on the dossier as well** ⇒ **not aimed, and their zeros on this set prove nothing and are not claimed.** Separately, the **email-shaped regex returns zero on the dossier too** (the dossier deliberately contains no email address) ⇒ **the dossier cannot aim that predicate at all.** It was instead aimed by a **fabricated-hit probe held outside this repository**, carrying one invented instance of each regex class: **email-shaped, full UUID, absolute `/home/…` path, 30+ plain token run and 30+ hyphen token run each fired on the probe, and each returns `0` over both spans here.**

⭐ **AND THE TWO UNAIMED ROLE-NAME PREDICATES HAVE SINCE BEEN AIMED, BY CHANGING THE CORPUS RATHER THAN THE PREDICATE.** Nine further internal role names were driven against a third corpus: the framework's own tracked files, where those names certainly occur. **All nine returned nonzero there and zero here.** ⇒ ⭐ **Those classes are now measured rather than merely unclaimed, and the general lesson is the useful part: an unaimed predicate is usually the wrong *corpus* before it is the wrong *predicate*.**

⇒ ⭐ **The honest general statement: a present-literal control proves an instrument runs, a fabricated-hit control proves a predicate fires, and only a second corpus where the thing is really there proves a predicate is aimed at the thing it names.** **Three of the classes above would have passed a present-literal control while being unaimed.**

### Instrument 2 · an independent cross-check

The same nine value-bearing classes re-counted with `grep`, explicit file list, `-c` so that something renders:

> **All nine: `0`. Positive control `safeguards`: `21`.**

**The two instruments disagree on the control (24 versus 21), and that is correct, not a defect.** Instrument 1 counts *occurrences*; `grep -c` counts *lines containing*. **Two different predicates, two different true numbers.** It is recorded because it is a live, small instance of the discipline this repository is about: **a bare total hides which predicate was run.**

### Instrument 3 · token-shape detection

**Any run of 30 or more token characters (letters, digits, underscore): 0** over both spans, re-driven 2026-10-01.

⛔ **THE HYPHEN-ALLOWING VARIANT IS CORRECTED FROM `8` TO `10`, AND THE CORRECTION MATTERS MORE THAN THE NUMBER.** The figure first published here was **8**, *"all of them accounted for: 7 anchors + 1 slug."* **Re-measured over the true span: 10, and the enumeration that accompanied the 8 did not cover them, which is the defect. An accounted-for count whose enumeration is short by two is a count nobody can audit.**

**Enumerated in full, every one of the ten, so that the next reader checks a list rather than a total:**

| # | file | the hit | class |
|---|---|---|---|
| 1 | `README.md` | `w-13--…-overstated-a-tier-count` | anchor |
| 2 | `01-TIMELINE.md` | `w-4--…-as-the-mechanism` | anchor |
| 3 | `01-TIMELINE.md` | `w-3--withdrawn-the-control-tier-runs-clean` | anchor |
| 4 | `02-EVIDENCE.md` | `w-8--…-found-by-re-measurement` | anchor |
| 5 | `02-EVIDENCE.md` | `w-1--withdrawn-zero-artifacts-exist-on-the-newest-tier` | anchor |
| 6 | `02-EVIDENCE.md` | `w-9--…-withdrawn-by-its-own-author` | anchor |
| 7 | `05-METHOD.md` | `re-measure-rather-than-inherit` | **ordinary prose, neither an anchor nor a slug** |
| 8 | `06-VENDOR-NOTICES.md` | `14604842-real-time-cyber-safeguards-on-claude` | public vendor support-article slug |
| 9 | `CORRECTIONS.md` | `w-1--withdrawn-zero-artifacts-exist-on-the-newest-tier` | anchor |
| 10 | `SOURCES.md` | `w-2--withdrawn-sub-contexts-are-a-safe-harbour` | anchor |

⛔⛔ **AND THE SPAN LABEL ON THAT `10` IS LOAD-BEARING, BECAUSE WRITING THE ENUMERATION DOWN CHANGED THE ANSWER. THIS IS THE SECOND MEASURED INSTANCE OF THE OBSERVER EFFECT IN THIS SECTION AND IT IS REPORTED RATHER THAN QUIETLY ABSORBED.** The hyphen-variant count is **10 over the 10 content files** and **16 over the complete set including this manifest**, because **the table above reproduces six of the hits in full**, and a reproduced hit is a hit. ⇒ ⛔ **A later reader re-running the hyphen check must state whether `MANIFEST.md` is inside the span: `10` and `16` are both correct, of different spans, and neither is wrong.** ⭐ **By enumerating a class in order to make it auditable, this file enlarged the class, which is the same trade `Request ID` made above, and it is worth making both times.**

⇒ **The true composition over the 10 content files is 8 anchors + 1 slug + 1 ordinary prose phrase, not 7 + 1.** ⭐ **Where the two unaccounted hits came from, offered as a reading and not as a fact: the eighth anchor is `#1`, the cross-reference to `W-13` in `README.md`, and `W-13` is the withdrawal this repository added last, after the instruments had been run.** The tenth is a hyphenated phrase in `05-METHOD.md` that no earlier version of the enumeration contemplated. **Neither is an identifier, neither is a token, and the detector's verdict is unchanged, but the enumeration was wrong and is now the enumeration rather than a summary of one.**

**A bound on this instrument, recorded because it was measured rather than assumed.** The first version of the token detector required a string to contain **both** a digit and a letter. **Under the fabricated-hit control, that version missed one of the fabricated tokens**, because the fabrication happened to be all-alphabetic after its prefix. **The literal prefix checks caught it; the shape check did not.** ⇒ **Shape detection is a backstop here, not the primary control, and it is not claimed to be exhaustive.** A token whose shape nobody anticipated is a token the shape check silently excludes.

---

## § 3 · Two redaction classes that postdate the internal classification

**Recorded explicitly because the internal classification does not contain them and a reader comparing the two would otherwise see an unexplained divergence.**

1. **Code-hosting personal access tokens.** Two tokens were pasted into one session's conversation during the period this evidence covers. **Both prefix forms are now a named do-not-publish class, and any token-shaped string of 30 or more characters is do-not-publish by default**, whatever it resembles. **This is the single strongest reason the no-raw-capture rule in `REDACTIONS.md § 4` is absolute rather than advisory.**
2. **The analysing session's own transcript prefix.** Omitted. It has no research value (one unexplained notice with no reading offered), and that file holds unrelated material. **The internal classification treats 8-character prefixes as publishable in general, and that remains the rule; this is a specific exception taken on its own facts.**

---

## § 4 · Decisions deliberately left open, and where they are recorded

| decision | where | status |
|---|---|---|
| **Whether to quote the two short fragments at the centre of the central finding** | `04-FINDING.md`, in a marked block | **Not taken.** The weaker option (describing the passage's *kind* and giving the measurement) is what is staged. The grounds on both sides are set out for the author. **No verbatim private-repository text from that passage is in the staged bytes.** |
| **Whether to name the framework** | throughout | **Not taken, and the conservative form is staged.** The framework's name is already public; **its repository is private.** The staged text refers to *"the framework"* and reduces one path in the vendor capture. Naming it would be a one-line edit and is the author's call. |
| **Whether to preserve the local transcript store, and where** | `SOURCES.md` | **Not taken.** The destination is the author's choice and **it should not be a repository.** |
| **Whether to measure the unread assembled-prompt snapshot** | `SOURCES.md` | **Not taken and not scheduled.** It is a separate, high-value, perishable piece of work. |

---

## § 5 · Scope discipline observed

- **The one sealed object in the framework's repository was not extracted, listed, read, or copied**, no history command was run against any retired path for it, and **it does not appear in the staged set as a subject.** Its filename stem and its do-not-extract marker both measure **0 occurrences** in the staged set. ⛔ **That claim rests on two literal checks, which cannot detect a description; it is a claim about strings and not about prose.** ⚠ **AND THE DISTINCTION IS NOT HYPOTHETICAL: IT BIT HERE.** The first version of this bullet cited those two zeros in support of the broader claim, **while [`REDACTIONS.md § 5`](REDACTIONS.md) carried a clause describing the material's nature**, which the governing classification this set derives from expressly bars, and which **both literals returned `0` on, exactly as designed.** The clause was removed on 2026-10-01. ⇒ ⭐ **A control that reports compliance while the controlled condition is breached is worse than no control, because the next item in that class also passes unnoticed.** The two zeros are kept; the inference drawn from them is now bounded.
- **No whole-tree copy was made.** No recursive copy of either repository, no archive of a root, no local clone, no copy of any version-control directory, no worktree. **Only the paths the work needed were read, named explicitly.**
- **Nothing in the framework's repository was modified.** The entire write set of this work is the staging directory. **No commit, no remote, no push.**
- **No raw transcript record was copied into the staging set, whole or truncated.** Every figure was transcribed field-by-field by hand from a script's output.

---

## § 6 · What this manifest does **not** establish

**Six items, enumerated because a list of four looks exactly like a complete list of four, and this list was four until an independent read supplied the fifth and the sixth. That is the point of the sentence, demonstrated against the sentence.**

1. **It does not establish that the staged set is free of information the author would not want published.** It establishes that **21 named classes return zero under three instruments, with a fabricated-hit control proving ten of them fire.** A class nobody named is a class nothing checked.
2. **It does not establish that the derived prose contains no inadvertent disclosure.** Literal sweeps catch literals. **They cannot catch a sentence that discloses something by implication**, and the staged set does, by design, disclose that a security framework's governance prose scores highly on a harm-token instrument. That disclosure is intended; a *different* one, unnoticed, would not be caught by any check run here.
3. **It does not establish that the `SINGLE-SOURCE` figures are correct.** They were read at one party's primary text and **not re-run.** Each carries that party's own confidence marker and the reason it was not re-executed.
4. **It does not clear the repository for public visibility.** It clears the staged bytes for **a commit**, which, under the sequencing rule in `REDACTIONS.md`, is the same standard, because a commit is permanent. **Whether and when to flip visibility is the author's decision and nothing here anticipates it.**
5. ⛔⛔ **It does not establish that this set's own statements about what it omits are true**, and this is the item that would have surfaced every one of the 2026-10-01 corrections. `REDACTIONS.md` names classes as absent that § 2 had no row for; **one of them was published four times, and one statement of absence in `README.md` was simply false as written.** ⇒ ⭐ **A claim of absence with no instrument behind it is an assertion, not a measurement. Any class `REDACTIONS.md` declares must have a row in § 2 or be marked unmeasured, so that a declared class without an instrument is visible as a gap rather than reading as a clearance.**
6. ⚠ **It does not establish that a published piece drawing on this set has made every disclosure that piece may owe.** This set is an evidence repository; **obligations that attach to a byline (the author's own interests, relationships and standing in the subject matter) are the author's, are outside this set's scope, and are not assessed anywhere in it.** ⛔ **No instrument here looks for them, and the absence of a finding is not a finding of absence.**


---

## § 7 · Delta 2026-10-15, measured separately

**Why a new section rather than edits to § 1 and § 2:** those sections are the first commit's attestation. **Rewriting them would destroy the record of what was cleared, and when.** This section attests to the update only.

**Round disclosure:** the analysis that produced this delta held no prior round in its own context. **This is round 1, and saying so is the disclosure.**

### 7.1 · What changed

| file | change | primary source |
|---|---|---|
| `01-TIMELINE.md` | Phase 6 retitled and marked beside its original; **Phases 7, 8 and 9 added**, plus *"Where it stands, 2026-10-15"* | the refusal-incident log's tenth to sixteenth amendments; two adjudications by the safety-layer specialist; the account holder's verbatim turns; **the 2026-10-09 transcripts, re-measured at this hand** |
| `02-EVIDENCE.md` | **§ 9 added**: the control-stimulus table (13 rows), predicates P7 and P8 | **re-measured from transcripts**, with a positive control that reproduces seven previously published rows exactly |
| `03-OPEN-QUESTIONS.md` | dated amendments under the opening paragraph, OPEN-1, OPEN-2, OPEN-5, OPEN-6, OPEN-7, OPEN-8, and the tier-table heading. Every original sentence is kept | as above |
| `06-VENDOR-NOTICES.md` | a note beside Variant 3's *"never written to disk"*; **Variant 4 added**; a note beside the comparison table | the account holder's verbatim capture (rendered); the 2026-10-09 transcript (on disk, re-measured; identifier stripped) |
| `CORRECTIONS.md` | **W-14 to W-19 added.** W-1 to W-13 untouched | as above |
| `SOURCES.md` | notes beside the preservation warning; new artifact rows; new record rows | as above |
| `REDACTIONS.md` | **§ 9 added**, which declares six classes | the account holder's decision on engagement material, plus this analysis |
| `README.md` | status date; a dated note beside *"No probe has been run"*; a *"Since first commit"* table; one reading-table description | as above |
| `04-FINDING.md`, `05-METHOD.md` | **unchanged.** Their bounds still hold: the fresh-clone arm is still unrun, and nothing in the delta reaches the scoring instruments | none |

### 7.2 · Span

**The 10 content files measure 2,026 lines and 221,793 bytes after every edit in this delta, including the held-out-read edits E1–E10**, measured two ways (`wc -l -c` over an explicit ten-file list, and a Python pass) that agree to the digit. **This manifest is not one of the ten, so amending it cannot move that figure.** For comparison, the first commit's figure was 1,662 lines and 167,727 bytes.

### 7.3 · Redaction classes, re-driven over the new span

**Instrument 1** (the same occurrence-counting script shape as § 2) was driven over **44 classes**. Every class in § 2 is included. **Added:** the persona name, nine further internal role names, the engaged tooling's name, the engagement's name and one further engagement term, three internal identifier forms, the internal amendment label, two internal path prefixes, the lane name, the subscription tier, the screenshot filename and folder, the preservation directory marker, **five offensive-workload transcript prefixes**, **three live-engagement transcript prefixes**, and this analysis's own session prefix.

> **All 43 value classes: `0` occurrences across the 10 content files. Present-literal control `safeguards`: 29 occurrences across 5 files.**

**Aimed-corpus control, as in § 2(c):** the identical script was driven over a 16-file corpus where the literals really occur. That corpus is the framework's refusal-incident log, the two adjudications, two verbatim-turn records, the internal dossier, the auto-loaded carrier, and **a fabricated-hit probe held outside this repository**. The probe carries one invented instance of each class the real corpus cannot aim (the account holder's email, a request and message identifier value, this session's prefix, a token prefix, and a full UUID). ⭐ **All 44 classes returned nonzero there.** ⇒ **Every zero above comes from an aimed predicate.**

**Instrument 2** (`grep -c`, explicit list, case-insensitive) covered nine value classes (email, username, home path, two identifier field names, request-identifier prefix, repository directory name, tooling name, engagement name). **All nine: `0`. Control `safeguards`: 25 lines.** (Occurrences and lines differ for the reason § 2 gives.)

**Instrument 3:** the plain 30-plus token run returns **`0`**. The hyphen-allowing variant returns **30**, made up of 28 cross-reference anchors (all `w-N--…` or `phase-7--…`), the public vendor support-article slug, and the prose phrase `re-measure-rather-than-inherit`. **No identifier and no token.**

**Intra-repository anchor links:** every `file#anchor` link in the set was checked against the headings it targets. **Zero unresolved.**

### 7.4 · Scope discipline in this delta

- **The one sealed object in the framework's repository was not extracted, listed, read or copied, and no history command was run against any retired path.** ⛔ **This is a statement about acts, not a sweep result.**
- **Transcripts were read field by field.** Model identifier, timestamps, client version, record types, billing fields, the byte length of two carrier attachments, and, for two blocked rows only, the vendor's notice string with its identifier value stripped by the script before anything was printed. **No transcript record was copied into this repository, whole or truncated. No typed content beyond the stimulus was read, and no model response text was read.**
- **Engagement material: none read for this delta beyond the framework's own adjudication of it.** None is reproduced.
- **Nothing in the framework's repository was modified.** No whole-tree copy was made. **This delta is one local commit on one local branch, and nothing was pushed.**

### 7.5 · What this section does **not** establish

1. **It does not establish that the delta is free of disclosure by implication.** Literal sweeps catch literals. ⛔⛔ **The rule this repository was built under (an independent held-out read by someone other than the author, before any push) applies to this delta in full, and that read has not happened.** The author's list of candidate sentences for that reader is outside this repository, in the delta report delivered with this branch.
2. **It does not establish the account holder's report of the new verification process.** That process and its tier structure are carried as a report. **No vendor document about them was read by this analysis.**
3. **It does not establish that the `SINGLE-SOURCE` figures in the delta are correct.** Those are the engagement's tier counts, the timing rule, the store-shrinkage count, the preservation checksums, and the 13-second switch.

---

## § 8 · Delta 2026-10-18, measured separately

**Same rule as § 7: the earlier sections are earlier attestations and are not rewritten.** This section attests to delta 2 only.

**Round disclosure:** the analysis that produced this delta held no prior round in its own context. **This is round 1, and saying so is the disclosure.**

### 8.1 · What changed

| file | change | primary source |
|---|---|---|
| `07-LOCAL-ROUTING-POC.md` | **New.** The local-routing proof of concept, Version 1: method in full, results as counts only, the bounds | the build's evidence record, its reviewed runbooks and its run log (counts and record types only; no probe, reply or verdict text read) |
| `01-TIMELINE.md` | a dated amendment beside Phase 9's report paragraph; the tier corrected in Phase 9's list and in *"Where it stands, 2026-10-15"*, with markers; the PoC bullet marked superseded; **Phases 10 and 11 added**, plus *"Where it stands, 2026-10-18"*; two cost phrases reworded with markers | the account holder's written answers of 2026-10-18; public coverage of the tiered programme |
| `02-EVIDENCE.md` | a dollar-figure convention; the tier corrected in § 9's table; the cost sentence reframed; a re-authentication note | as above |
| `03-OPEN-QUESTIONS.md` | the tier corrected in five lines with markers; a 2026-10-18 amendment under OPEN-2; OPEN-6's characterisation softened and its *"unverified"* bounded | as above |
| `04-FINDING.md` | the subject cell of the finding table softened; the account holder's point added under the table; a note beside bound 7's quotation; the upstream report recorded | as above |
| `05-METHOD.md` | one cost figure marked as an API-rate equivalent | as above |
| `CORRECTIONS.md` | **W-20 to W-24 added.** W-1 to W-19 untouched | as above |
| `SOURCES.md` | the tier corrected in one row; two record rows; a public-coverage subsection | as above |
| `REDACTIONS.md` | § 6 row softened; § 8 cost line reframed; § 9 item 2 made plural and generic; **§ 10 added**, which declares four classes | the account holder's decisions D1 to D3 of 2026-10-18 |
| `README.md` | status date; the tier corrected; the first profile reworded; a *"Since 2026-10-15"* table; a fourth number convention; the reading table; one scope note | as above |

### 8.2 · Span

**The 11 content files measure 2,373 lines and 264,536 bytes after every edit in this delta**, measured two ways (`wc -l -c` over an explicit eleven-file list, and a Python pass) that agree to the digit. `07-LOCAL-ROUTING-POC.md` alone is 13,949 bytes. For comparison, § 7.2's figure for the ten content files was 2,026 lines and 221,793 bytes. **This manifest is not one of the eleven.**

### 8.3 · Redaction classes, driven over the new span

**Driven 2026-10-18 over the 12 files, this manifest included, as an explicit list, counting occurrences.** Every class below returned **`0`**:

- the framework's name, its short form as a whole word, and the internal role names of the agents that built and ran the proof of concept (six checked individually, as whole words, case-sensitive);
- the lane's internal prefix, the local re-tag, the original community publisher's handle, the two host account names, the router's make and model, the host's interface names;
- four further engagement-related terms, and the engaged tooling's name;
- the account holder's username and email, any email-shaped string, any MAC-shaped string, any key-fingerprint prefix, and any plain run of 30 or more token characters;
- **any dotted-quad IPv4 address**, and the two private-range prefixes most likely here.

**Positive controls on the same command shapes:** `safeguards` returns 29 occurrences over the 11 content files, and 35 with this manifest included. The IPv4 pattern fires on a fabricated dotted-quad address held outside this repository. The role-name and framework-name predicates fire on the framework's own instruction file, and the lane prefix fires 32 times on the build's evidence record. ⇒ **Every zero above comes from an aimed predicate.**

**One expected non-zero, accounted for:** the string `/home/` occurs once, in § 2(c) of this manifest, where it describes a fabricated probe class. No path is carried.

**Em-dashes.** This repository held **403** across the 12 files before this delta, every one in text older than it. **At the account holder's request, a punctuation pass replaced 394 of them** with commas, colons, parentheses, sentence breaks or light rewording, and empty table cells marked with a dash now say what they mean (*none*, *n/a*, *not recorded here*). Headings took ` · ` in place of the dash, which leaves every anchor unchanged. **No claim, figure, date, marker, link or quotation changed.** **Nine remain, deliberately**, each inside a verbatim quotation: the harness's own stop string (three copies, in 02, 03 and 06) and six quoted sentences of parties to the investigation (01, 02 twice, 04 twice, 05). **Rendered after the pass: 9.**

**Intra-repository anchor links:** 103 checked against the headings they target. **Zero unresolved.** (104 before round two; the one removed was the link in a redaction class that round two deleted.)

### 8.4 · Decisions taken since § 4

- **Whether to name the framework:** taken by the account holder on 2026-10-18. **It is not named.** It is described as a general-purpose multi-agent framework.
- **Whether to keep the portal requirements** ([`REDACTIONS.md § 9`](REDACTIONS.md)): taken. **Kept.** Phase 8's sentence *"No artifact states whether that run was on the enrolled account"* is kept with them.
- **How much of the proof of concept's network to show:** taken. Everything except the identifiers in [`REDACTIONS.md § 10`](REDACTIONS.md) item 1, and no open hardening item on that network is described.

### 8.5 · Scope discipline in this delta

- **The one sealed object in the framework's repository was not extracted, listed, read or copied, and no history command was run against any retired path.** ⛔ **A statement about acts, not a sweep result.**
- **No transcript was read for this delta.** The proof of concept's run log was read by record type and count fields only. **No probe text, rubric text, reply text or per-probe verdict was read.**
- **Nothing in the framework's repository was modified.** No whole-tree copy was made. **This delta is one local commit on one local branch, and nothing was pushed.**

### 8.5b · Round two of this delta, 2026-10-18

On the account holder's answers: the previous year's enrolment is described as *for their security work*, with nothing more specific said about it, and the redaction class that described it is removed from [`REDACTIONS.md § 10`](REDACTIONS.md) (four classes now). The 2026-10-08 approval date is confirmed by the account holder. The feedback reports began **before** the 2026-09-30 enrolment, while the account holder believed the previous year's enrolment still applied, and Phase 10 is re-ordered to say so. `07-LOCAL-ROUTING-POC.md` gains a pointer to `examples/`. **The em-dash pass above.** ⚠ **The span in § 8.2 is the round-one figure and is now stale** (the punctuation pass moved the byte count). It is re-measured once `examples/` lands, so that one measurement covers both.

### 8.6 · What this section does **not** establish

1. **It does not establish that the delta is free of disclosure by implication.** The held-out read this repository's rule requires has not happened for delta 2. The candidate sentences are listed in the delta report delivered with this branch, outside the repository.
2. **It does not establish the account holder's reports.** The tier, the enrolment history, the re-authentication and the feedback reports are carried as reports. The tiered structure is carried from third-party coverage; the vendor's own announcement was not read.
3. **It does not establish the proof of concept's counts independently.** They are transcribed from the build's evidence record and cross-checked only for the send total, which the run log's per-block counts reproduce (104).

### 8.7 · Held-out read 2, `examples/`, and the re-measure (2026-10-18, round three)

**Base:** branch `delta-2026-10-18` at `de2bb21`, which carries `examples/` (commits `8907d9f` and `de2bb21`, written by a separate role and not edited here). This section and the edits below land in the commit after `de2bb21`.

**Round disclosure:** round three on this objective, by the same analysis as § 8.

**A second independent held-out read** of this branch and of the post it supports returned **CLEAR-WITH-EDITS**. Applied here, each old string verified to match exactly once:

- **R-1 to R-6:** Phase 8 de-linked from any named tooling or dated week. Two sentences reworded, one paragraph moved into Phase 10's table (R-3, R-4), and the redaction descriptions in `REDACTIONS.md § 9` and § 7.3 / § 8.3 of this manifest made generic. One further mention in `REDACTIONS.md § 9` item 1 was made generic in the same way. The account holder's decision: **keep Phase 8**, with these edits.
- **R-7:** two sentences removed from `07-LOCAL-ROUTING-POC.md § 2`.
- **R-8:** the INCOMPLETE bound in 07 § 9 corrected ([`CORRECTIONS.md § W-25`](CORRECTIONS.md#w-25--refuted-before-publication-incomplete-is-not-a-soft-fail)).
- **R-10:** the two flag counts added to 07 § 7.2.
- **Recommended r-1 to r-3:** applied (Phase 11's INCOMPLETE note, video-memory figures, `examples/` in the README's reading table).
- **Also:** OPEN-4 now states the scope of the one adjacent arm (Fable 5.1, empty directory, September), so a scoped sentence elsewhere reads consistently with this repository.

**Span, measured two ways (`wc -l -c` over an explicit list, and a Python pass), agreeing to the digit:**

| set | files | lines | bytes |
|---|---|---|---|
| content Markdown (the eleven, this manifest excluded) | 11 | 2,384 | 267,519 |
| `examples/` (`README.md`, `local_ollama_mcp.py`, `tunnel.sh`) | 3 | 544 | 19,443 |
| **everything tracked except this manifest** | **14** | **2,928** | **286,962** |

**This manifest is excluded** for the reason § 1 gives: it moves with every edit to itself. § 8.2's figure is the round-one figure and stays as that round's record.

**Sweeps over all 15 tracked files, this manifest included:**

| class | count |
|---|---|
| the framework's name; its acronym as a whole word; ten internal role names (whole word, case-sensitive) | **0** |
| four event- and tooling-related terms, any case (not spelled here, so that this table does not supply them) | **0** |
| the lane prefix, the bridge's internal name, the account holder's handle, a key-fingerprint prefix, the router's model | **0** |
| the two private-range prefixes most likely on a home network | **0 / 0** |
| dotted-quad IPv4 addresses **other than the loopback address** | **0** |
| the loopback address (expected: the workstation end of the tunnel) | 33 outside this manifest: 2 in 07 § 3, 31 in `examples/` |
| em-dashes | **9**, all inside verbatim quotations, as listed in § 8.3 |
| spaced en-dashes | 0 |

**Positive controls:** the IPv4 pattern fires on a fabricated address; the role-name, acronym and framework-name predicates fire on the framework's own instruction file; `Ollama` returns 30 across the tree outside this manifest.

**Links:** 106 intra-repository anchor links (this section adds one), **0 unresolved**; every relative file link, `examples/` included, resolves.

**Corrections count:** 25 entries, W-1 to W-25.

**Still owed before public visibility, and not this repository's to settle:** an end-to-end run of `examples/` on the model host (the account holder's decision OD-4), and the merge to `main`.

### 8.8 · Round four of this delta, 2026-10-19

**Base:** branch `delta-2026-10-18` at `e7b3f52`. **Round disclosure:** round four on this objective, by the same analysis as § 8. This round is new, scoped work on two of the account holder's rulings of 2026-10-19, not a redo of rounds one to three.

| file | change |
|---|---|
| `CORRECTIONS.md` | **W-26 added**, under a new *"Added 2026-10-19"* heading: the two network claims removed in round three (R-7 in § 8.7) now have an entry, with their wording and the reason withheld under the account holder's publication-safety ruling. W-1 to W-25 untouched |
| `07-LOCAL-ROUTING-POC.md` | a dated marker in § 2 pointing to W-26; § 10 restated to the new disclosure standard, the original wording kept beside it |
| `REDACTIONS.md` | § 10 item 1 restated, the original wording kept beside it; **the disclosure standard for network values** added to § 10 |
| `README.md` | the status date only |

**The new standard, in one line:** a network value is withheld if someone outside the account holder's network could use it. The public IP address and every secret are never published; internal-only values are publishable; the loopback address is printed. **No internal address other than loopback was added in this round.** The full statement is [`REDACTIONS.md § 10`](REDACTIONS.md#-10--classes-added-2026-10-18).

**Span, after every edit in this round, measured two ways (`wc -l -c` over an explicit list, and a Python pass), agreeing to the digit:**

| set | files | lines | bytes |
|---|---|---|---|
| content Markdown (the eleven, this manifest excluded) | 11 | 2,415 | 271,272 |
| `examples/` (unchanged since `de2bb21`) | 3 | 544 | 19,443 |
| **everything tracked except this manifest** | **14** | **2,959** | **290,715** |

**The four files changed in this round:** `07-LOCAL-ROUTING-POC.md` 186 lines / 15,758 bytes · `CORRECTIONS.md` 348 / 36,148 · `README.md` 139 / 19,976 · `REDACTIONS.md` 171 / 19,591. § 8.7's figures are round three's and stay as that round's record.

**Sweeps over all 15 tracked files, this manifest included, after this section was written:**

| class | count |
|---|---|
| em-dashes | **9**, the same nine verbatim quotations as § 8.3 |
| dotted-quad IPv4 addresses that are publicly routable | **0** |
| dotted-quad IPv4 addresses of any kind other than loopback | **0** |
| the framework's name and its acronym as a whole word | **0** |
| the lane prefix, any case | **0** |

**Positive control:** the same script, run on a fabricated line held outside this repository that carries one em-dash, one public address, one private address, the lane prefix, the framework's name and its acronym, returns 1 for each class. **Links:** every intra-repository anchor link resolves, 0 unresolved.

**Corrections count:** 26 entries, W-1 to W-26.

**Still owed before public visibility, unchanged:** the end-to-end run of `examples/` on the model host, and the merge to `main`.


### 8.9 · End-to-end run of `examples/` on the model host, 2026-10-19

**Base:** branch `delta-2026-10-18` at `a6cd2e4`. **Round disclosure:** round five on this objective, by the same analysis as § 8. **This analysis did not run anything on the model host.** The account holder ran the run at the machine on 2026-10-19, following a capture runbook kept outside this repository, and the results below are their report, recorded as counts. This section closes the end-to-end line that § 8.7 and § 8.8 list as still owed; those sections are not edited and stay as their rounds' record.

**No address other than the loopback address is recorded in this section**, and no hostname, account name, key, fingerprint, prompt or reply.

| field | result |
|---|---|
| run date | 2026-10-19. The UTC window is not recorded here |
| `examples/` code tested | the three files as at `de2bb21`, unchanged through `a6cd2e4`. No local modification before the run was reported |
| Ollama version on the host | not recorded here. The host ran Ollama with its default settings |
| host firewall, on-link positive control | **PASS.** Logged blocks before: 0 / 0. The deliberate blocked attempt ended at its timeout (rc=124). Logged blocks after: 3 / 3. A TCP SYN that is dropped is retried until the timeout, so one attempt logs more than one block; the verdict rests on the log count rising from zero, not on its being exactly one |
| host: listeners on 11434 not on `127.0.0.1` | **0.** Ollama listens on `127.0.0.1:11434` only |
| tunnel account | created as the README says: no login shell, password locked, key only. The key line carries the README's restrictions (`restrict,port-forwarding,permitopen="127.0.0.1:11434",command="/bin/false"`) plus a `from=` restriction |
| `sshd` | the README's `Match` block added. `sshd -t` rc=0 |
| `sshd -T` values matching the README's five expected values | **5 of 5** (`allowtcpforwarding local`, `permitopen 127.0.0.1:11434`, `permitlisten none`, `forcecommand /bin/false`, `permittty no`) |
| `sshd -T` with an address in the connection spec | run twice; the two outputs were identical, compared by hash |
| `tunnel.sh open`, `status`, `close` | pass, pass, pass. Whether the PID file was removed after `close` is not recorded here |
| `health` with the tunnel open | reachable; listed the host's models. The number listed is not recorded here |
| `generate` calls | 1 sent, against a stock model; 1 returned text; 0 returned an error |
| no-fallback check 1 (tunnel open, `health` returns the host's models) | **pass** |
| no-fallback check 2 (host Ollama stopped) | **not run.** It was optional in the runbook |
| no-fallback check 3 (tunnel closed) | `health`: **pass**, it returned the no-fallback error. `generate`: not recorded here. Whether an Ollama instance was running on the workstation's own 11434 at the time is not recorded here |
| refusal controls on the workstation (`LOCAL_PORT=11434` refused by `tunnel.sh`; 11434 and a non-loopback `OLLAMA_TUNNEL_HOST` refused by the server) | not part of the reported run. Re-run in this round on the workstation, loopback only and with no tunnel opened: all three refused, rc=2 each |
| deviations from `examples/README.md` needed to make it work | **2.** (1) The host's `sshd_config` already had an `AllowUsers` list, and the tunnel account had to be added to it before sshd would accept the key. (2) The first `tunnel.sh open` failed with `Permission denied (publickey)`, because the key had a passphrase and `tunnel.sh` runs ssh in batch mode; loading the key into `ssh-agent` fixed it |
| edits to `examples/` as a result | **1 commit, this one.** The README now names both points: `AllowUsers` / `AllowGroups` in the sshd notes, and a key that is passphrase-less or loaded into `ssh-agent` |

**Also in this commit, separately from the run:**

| file | change |
|---|---|
| `examples/mcp_call.py` | **New.** A small terminal client for trying the server and for the no-fallback check without an agent client. It prints the reply and never runs it, and prints control and format characters as visible escapes. It is new code written for this repository, like the rest of `examples/` |
| `examples/README.md` | the two deviations above; `mcp_call.py` in the file table, the prerequisites and the no-fallback check; a short *"The author's setup"* note giving two internal addresses beside the placeholders, which stay as the generic instructions |
| `REDACTIONS.md` | § 10: the never-published values spelled out (public address forms and its /24, the home IPv6 prefix, dynamic DNS names, SSH host key fingerprints, SSID and BSSID, MAC addresses, hardware serials, UUIDs and WWNs, router firmware, any description of the router's NAT behaviour); the account holder's rulings of 2026-10-19 recorded; the *"Not added yet"* line and item 1 amended beside their original wording |
| `07-LOCAL-ROUTING-POC.md` | one dated sentence in § 4 pointing here |

**`mcp_call.py`, tested on the workstation, loopback only, against a stand-in server on `127.0.0.1` (no tunnel, no model host):** usage error rc=2; missing server rc=2; `health` rc=0; `generate` rc=0; listener stopped rc=1 with the no-fallback error; port 11434 rc=2 refused; non-loopback host rc=2 refused. The stand-in returned control and format characters in both a model name and the reply: **0** raw control characters reached the output, against **4** in the stand-in's raw reply (the positive control).

**Span, after every edit in this round, measured two ways (`wc -l -c` over an explicit list, and a Python pass), agreeing to the digit:**

| set | files | lines | bytes |
|---|---|---|---|
| content Markdown (the eleven, this manifest excluded) | 11 | 2,433 | 273,777 |
| `examples/` (`README.md`, `local_ollama_mcp.py`, `mcp_call.py`, `tunnel.sh`) | 4 | 669 | 24,958 |
| **everything tracked except this manifest** | **15** | **3,102** | **298,735** |

**The four files changed in this round, besides this manifest:** `07-LOCAL-ROUTING-POC.md` 186 lines / 16,051 bytes · `REDACTIONS.md` 189 / 21,803 · `examples/README.md` 314 / 11,334 · `examples/mcp_call.py` 96 / 3,949. `local_ollama_mcp.py` and `tunnel.sh` are unchanged. § 8.8's figures are round four's and stay as that round's record.

**Sweeps over all 16 tracked files, this manifest included, after this section was written:**

| class | count |
|---|---|
| em-dashes | **9**, the same nine verbatim quotations as § 8.3 |
| every disclosure class of the publication sweep (public address and its /24, global IPv4 and IPv6, obfuscated addresses, MAC, SSH host fingerprint, keys and tokens, dynamic DNS names, hidden characters, the framework's name and acronym, internal role names, the lane prefix, router firmware, UUIDs) | **0** each |
| dotted-quad IPv4 addresses other than loopback | **2**, the two in *"The author's setup"* in `examples/README.md`, added on the account holder's ruling. Neither is publicly routable |
| the router's model | 0. It is publishable, and this repository has no reason to print it |
| the loopback address, as a whole dotted quad | 39 (40 as a plain substring: one occurrence ends a sentence and its full stop defeats the whole-address match) |

**The publication sweep over git history** (`--all`, before this commit): every disclosure class 0; em-dashes 815, all in text older than the § 8.3 punctuation pass. **Positive controls:** the publication sweep's own positive fixture returns a hit in every class it can fire without the public address set; the address count fires on a fabricated line held outside this repository. The sweep ran without the real public address loaded, so the public-address classes are 0 by construction here; the account holder's re-run with it loaded is still owed before visibility. **Links:** 112 intra-repository anchor links, 0 unresolved.

**Corrections count:** 26 entries, W-1 to W-26. No entry was added: nothing published was found to be wrong.

**Still owed before public visibility:** the merge to `main`, and the account holder's sweep with the public address loaded. The optional no-fallback check 2 was not run.
