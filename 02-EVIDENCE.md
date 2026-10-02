# Evidence ledger

**Every figure, with its provenance and its re-measurement status.**

**The rule this file is built on.** Every figure below is marked either:

- **`RE-MEASURED`** — executed against the primary artifact, with the predicate stated; or
- **`SINGLE-SOURCE`** — read in one party's report and **not** re-run, carried with that party's own confidence marker attached.

**No figure here is inherited from a relay or a summary.** That distinction exists because this investigation convicted relayed figures repeatedly, and because **nothing re-runs a number once it is written into prose** — one figure defect here had already been corrected in an earlier round and then drifted *back* into the records. See [`CORRECTIONS.md § W-8`](CORRECTIONS.md#w-8--three-figure-defects-found-by-re-measurement).

**Measurement precaution.** Every sweep below was driven from a script that parses JSON lines, **not** from a shell pipeline with an unquoted expansion. On the shell used here, an unquoted expansion used as a file list **silently collapses to one argument and returns a well-formed integer that is wrong.** Where a count is `0`, a **positive control on the same command shape** is reported beside it — because a positive control fires on the failing idiom too, where a null control cannot.

**Artifacts are cited by 8-character transcript-filename prefix.** These are local filename fragments; they address nothing remotely. Full paths are deliberately not published — see [`REDACTIONS.md`](REDACTIONS.md).

---

## 1 · The first episode — six blocked attempts, one model tier (`b58a80db`)

**Predicate:** file parsed line-by-line as JSON; 127 records, 0 unparseable; token figures read from the billing records' per-model usage map.

| figure | value | status |
|---|---|---|
| **`outputTokens`** | **0** | `RE-MEASURED` |
| `inputTokens` | 49 | `RE-MEASURED` |
| `cacheCreationInputTokens` | **246,333** | `RE-MEASURED` |
| `cacheReadInputTokens` | **147,846** | `RE-MEASURED` |
| cost | **$4.9641115** | `RE-MEASURED` — the raw JSON parses to `4.9641115000000005`; the shorter form is a faithful rendering of that float and is what the records publish. Stated so nobody "corrects" it later. |
| a smaller model in the same session, same moment | `inputTokens 2,680` · **`outputTokens 15`** · cost `$0.002755` | `RE-MEASURED` |
| `assistant` records in the whole file | **0** | `RE-MEASURED` |
| `system` records in the whole file | **0** | `RE-MEASURED` |

> **This is the decisive instrument in the entire corpus.** Six full ingestions were billed — a quarter of a million cache-creation tokens — and **not one output token was produced**, while a different model generated normally in the same session at the same moment. A disposition refusal is prose; prose is output tokens. **The model never spoke.**

### The six stimuli — and a unit-label defect found by re-measurement

The records and every summary derived from them state the six stimuli as *"three of 4741 B and three of 233/151/153 B."* **Measured: those are character counts, not bytes.**

| # | timestamp (UTC) | characters | **bytes** |
|---|---|---|---|
| 1 | `04:40:01.329Z` | 4,741 | **4,910** |
| 2 | `04:40:15.626Z` | 4,741 | **4,910** |
| 3 | `04:40:47.181Z` | 4,741 | **4,910** |
| 4 | `04:41:51.116Z` | 233 | **237** |
| 5 | `04:42:21.212Z` | 151 | **153** |
| 6 | `04:43:04.946Z` | 153 | **153** |

**All six share one parent pointer** ⇒ each was a genuine first turn off the session root; no assistant turn ever intervened. **Span: 183.617 seconds.** Both `RE-MEASURED`.

> **Why the unit label is not pedantry: in bytes, stimuli 5 and 6 both read `153` and become indistinguishable.** Two structurally distinct prompts collapse into one figure.

---

## 2 · The newest-tier episode — three blocked attempts, post-verification (`b16031d2`)

**Predicate:** parsed line-by-line as JSON; 94 records.

| figure | value | status |
|---|---|---|
| record-type census | `user 10 · attachment 53 · mode 5 · permission-mode 5 · latch 5 · file-history-snapshot 5 · last-prompt 4 · title 4 · system 3` | `RE-MEASURED` |
| `assistant` records | **0** | `RE-MEASURED` |
| **token accounting of any kind** | **Absent.** Literal occurrence counts over the whole file: `outputTokens` **0** · `cacheCreationInputTokens` **0** · `cacheReadInputTokens` **0** · `costUSD` **0** · `inputTokens` **0** · `modelUsage` **0** · billing-record type **0** | `RE-MEASURED` |

**The one instrument that settled § 1 is simply not present in this artifact.** That is the whole of why [`OPEN-1`](03-OPEN-QUESTIONS.md#open-1) is open.

### The four `what is 2 + 2?` turns — three on the newest tier, one before the switch

| # | timestamp (UTC) | chars / bytes | parent | model attached | stop notice |
|---|---|---|---|---|---|
| 0 | `01:52:35.885Z` | 14 / 14 | **none (session root)** | previous tier, May-2026 cutoff | **none** |
| — | `01:52:47.771Z` | — | — | model switched to the newest tier | — |
| 1 | `01:52:52.073Z` | 14 / 14 | shared | newest tier, June-2026 cutoff | yes, `01:52:53.321Z` |
| 2 | `01:53:11.450Z` | 14 / 14 | shared | newest tier | yes, `01:53:12.643Z` |
| 3 | `01:54:21.796Z` | 14 / 14 | shared | newest tier | yes, `01:54:23.100Z` |

**All three attempts share one parent** ⇒ three genuine retries from one point, not a conversation. **Each stop notice follows its stimulus by ~1.25–1.3 seconds.** Both `RE-MEASURED`.

> **A timestamp misattribution found by re-measurement.** The records state the three prompts are at `01:52:53.321Z / 01:53:12.643Z / 01:54:23.100Z`. **Those are the timestamps of the three harness-injected stop turns.** The prompts are ~1.3 s earlier. Immaterial to every conclusion; recorded because **a prompt timestamp and a response timestamp are different objects, and the gap between them is itself a datum nobody can see if the two are conflated.**

**One turn this ledger will not guess at.** Turn 0 carries the previous tier's attachment, **no assistant entry and no stop notice.** Whether it was answered, abandoned, or cut off by the model switch **is not determinable from the artifact**, and no reading of it is offered.

### The two harness strings, verbatim from disk

**The system notice, ×3** — type `system`, subtype `informational`, level `notice`:

> `Opus 5.5's safeguards stopped the response above · continuing once with that noted`

**The harness-injected user-role turn, ×3** — flagged as meta, 224 characters / 226 bytes:

> `Your response above was stopped by a safety classifier — this is not a tool or API error. The rest of it was withheld, and tool calls in it that had not finished did not run. Do not produce that content again, even reworded.`

Both `RE-MEASURED` from disk.

> **And the second string is not a measurement of this request.** It is the harness's own boilerplate, **byte-invariant across all 19 of its occurrences in the local store** (§ 4), carrying no model name, no category token and no request identifier. ⇒ **Its wording cannot be cited as evidence about what happened on this particular request**, which is the crux of [`OPEN-1`](03-OPEN-QUESTIONS.md#open-1).

### One structural measurement that cuts against the seductive reading

This analysis hypothesised that each injected stop turn's parent pointer might resolve to a **withheld** assistant object — which would have *proved* that generation began.

**Measured: all three parents resolve to records that exist inside the file. No record anywhere in the chain references an assistant message object at all.** The chain is `user prompt → attachments → system notice → injected user turn`. `RE-MEASURED`.

⇒ **A structural witness for the output-side reading was formed and killed by execution before being written down.** It does not settle the question — it removes one argument for one side.

### The account was not blocked

A session-titling model fired **four times** in this session. **Bound stated:** the title *text* is not retrievable from the field parsed here — four parses returned null. The records state the titles read *"Basic arithmetic question"*; **that string could not be confirmed at this hand and is marked `UNVERIFIED`.** What *is* confirmed is that four titling records exist, **which is congruent with a titling model having run. Congruent, not confirming.**

---

## 3 · The artifact a 712-file sweep reported as nonexistent (`57a82896`)

**It had been on disk for five days.** This is the methodological centrepiece; see [`CORRECTIONS.md § W-1`](CORRECTIONS.md#w-1--withdrawn-zero-artifacts-exist-on-the-newest-tier).

**Predicate:** parsed line-by-line as JSON; 927 records; billing read from the per-model usage map.

| figure | value | status |
|---|---|---|
| newest tier `inputTokens` | 4 | `RE-MEASURED` |
| newest tier **`outputTokens`** | **0** | `RE-MEASURED` |
| newest tier `cacheCreationInputTokens` | **84,593** | `RE-MEASURED` |
| newest tier `cacheReadInputTokens` | **49,524** | `RE-MEASURED` |
| newest tier cost | **$0.6866648** | `RE-MEASURED` |
| the older tier, same session | `inputTokens 419,849` · **`outputTokens 987,873`** · cost `$113.739…` | `RE-MEASURED` |

**The sequence, timestamps re-measured:**

| time (UTC) | event |
|---|---|
| `03:18:02.005Z` | model set to the newest tier |
| `03:18:05.239Z` | kickoff pasted — **5,547 characters / 5,677 bytes** |
| `03:18:06.733Z` | **stop notice, naming the newest tier — 1.49 s after the paste** |
| `03:21:15.332Z` | model set back to the older tier |
| `03:22:21.296Z` | the kickoff re-pasted — **5,676 characters / 5,806 bytes** |
| → 2 h 21 m | **the older tier ran the session to completion** |

> **A figure checked and found differing from the record.** The record describes the second paste as *"the identical kickoff re-pasted."* **Measured: 5,547 versus 5,676 characters — a 129-character difference.** Both carry the same paste identifier, so it is **the same source document, not a byte-identical paste.** The 129 characters are uninvestigated, and no claim is made that the difference matters — but it **weakens the one-factor framing**, because the run that *succeeded* did not face byte-identical input. A one-factor claim is only as good as its held-constant side, and nothing else in the record checked this one.

---

## 4 · The store-wide sweep — stated predicates, stated counts

**Span, stated before the result:** every transcript file under the local session store, recursive, **721 files**, parsed line-by-line as JSON (not grepped). Run 2026-09-30 local / 2026-10-01 UTC.

> **The file count drifts between sweeps and the drift is real, not error.** Three parties measured 712, 718 and **721** on the same day. **The store is growing while being measured** — the analysing session's own sub-contexts were writing into it. ⇒ **Any count over this store is epoch-bearing and must carry its own file count.**

### The first predicate was contaminated, and it is reported rather than only its replacement

A naive predicate — *the notice literal appears anywhere in a record* — returned a badly inflated count, because **it matched records that merely *discussed* the notice**, including the analysing session's own transcript and **concurrently-running sibling sub-contexts that were analysing those exact literals at that moment.**

> **A party sweeping for a string it is simultaneously writing is measuring itself.**

The strict predicates below require the record's **own message text to *begin* the notice.**

### Result A — the system stop-notice record

**Predicate:** record type `system` **and** its own content contains `'s safeguards stopped the response above` **and** ends `with that noted`.

> **12 artifacts across 7 sessions.**

| model named in the notice | events | dates (UTC) |
|---|---|---|
| the investigation's **control tier** | **6** | 2026-09-26 |
| the **newest** tier | 5 | 2026-09-25 (×1), 2026-10-01 (×4) |
| one **older** tier | 1 | 2026-09-26 |

**Sub-context flag on all 12: false. Transcript filenames in the sub-context naming convention: zero.** ⇒ **This notice class is a top-level artifact. It does not appear in sub-context transcripts at all** — so it detects *and attributes*, but only at top level.

### Result B — the harness-injected stop turn

**Predicate:** a record whose **own message text begins** `Your response above was stopped by a safety classifier`.

> **19 artifacts across 11 sessions. Sub-context flag false on 12; true on 7**, spread across **4 distinct sub-context transcripts**, all dated 2026-09-26.

### Result C — the API-error notice

**Predicate:** a record whose own text **begins** `API Error:` **and** contains `safeguards flagged this message`.

> **6 artifacts across 5 sessions.** All carry a synthetic model label. **One is in a sub-context.**

| timestamp (UTC) | tier | verification-programme sentence present? | support article |
|---|---|---|---|
| `2026-09-21T17:34:49Z` | first affected tier | **no** | article A |
| `2026-09-21T19:40:08Z` | first affected tier | **no** | article A |
| `2026-09-26` *(sub-context)* | an older tier | **YES** | article B — *real-time cyber safeguards on Claude* |
| `2026-09-26` | an older tier | **YES** | same |
| `2026-09-26` | an older tier | **YES** | same |
| `2026-09-26` | an older tier | **YES** | same |

**Two notes on the form of that table.** The four `2026-09-26` rows are four distinct events on one date; **their times of day are deliberately reduced to the date**, because the finding is that the verification-programme pointer varies by model variant and **the date carries that while the time of day carries nothing** — see [`REDACTIONS.md § 5`](REDACTIONS.md). The two 2026-09-21 rows keep their times because those events are the framework-governance case, which is this repository's own subject.

`RE-MEASURED`. ⇒ **The verification-programme pointer appears in all four notices on one tier and in neither notice on the other.** This confirms a self-correction the diagnosing party made: **the pointer varies by model variant, which fully explains the pattern, so its absence is *not* evidence that the notice is verification-status-aware.** A status-awareness reading is unsupported.

### The reconciliation — three parties, one subject, different totals

| reported | by | predicate |
|---|---|---|
| **22 artifacts / 12 sessions / 4 tiers / 2 notice classes**, of which **class A = 6**, **class B = 16**, and **8 inside sub-contexts** | the diagnosing specialist, 718 files | own message text *begins* a notice, split into two classes |
| **12 artifacts / 7 sessions, 0 in sub-contexts** | the coordinator, 721 files | system-record notice literal only |
| **12 (system) · 19 (class B) · 6 (class A)**, with **7 class-B + 1 class-A in sub-contexts** | this analysis, 721 files | the three strict predicates above, stated individually |

**The reconciliation, shown rather than asserted:**

- **Class A: 6 = 6.** Exact agreement. **Settled.**
- **Sub-contexts: the specialist's 8 = 7 class-B-in-sidechain + 1 class-A-in-sidechain.** Its own event table lists the 2026-09-26 class-A events as *"3 top-level sessions **+ 1 sub-context**"*, which supplies the missing 1. **Settled arithmetically.**
- **The coordinator's 12 versus the others** is a **different object**: that notice class is top-level-only, so it can never see the 7 sub-context events. **Settled structurally.**
- **Class B: the specialist's 16 versus this analysis's 19.** The 2026-09-26 class-B count is **exactly 14**, matching its table row; plus the 2026-09-25 artifact (1) and the analysing session's (1) = **exactly its 16**, with the remaining 3 being the newest-tier artifacts that arrived while that document was being written. ⚠ **This limb invokes an *epoch* explanation, and it is marked PLAUSIBLE, NOT SETTLED.**

> **Why that last limb is downgraded, and it is not a formality.** It is an inference this analysis drew; **the authoring party never stated its decomposition that way and has not confirmed it.** And in this same investigation another party drew a structurally identical *"an epoch, not an error"* reconciliation, **tested it instead of publishing it, and found it false** — one occurrence was attributable where five had been claimed. The durable from that episode is exact: ***a reconciliation that fits is not a reconciliation that holds, and "an epoch, not an error" is a template so available that it will be reached for whether or not it is true.*** See [`CORRECTIONS.md § W-9`](CORRECTIONS.md#w-9--a-false-reconciliation-drawn-and-then-withdrawn-by-its-own-author).

⇒ **No single total is published here, and none should be published anywhere.** The honest form is always **`<count> under <predicate> over <N files> at <date>`.**

### One observation that cannot be explained

A system stop notice naming the **newest tier** sits in the transcript of **the very session that performed this analysis**, at `2026-10-01T00:56:45.263Z`, flagged top-level. `RE-MEASURED`. **Recorded as observed and unresolved. No reading is offered.**

---

## 5 · Attribution by workload — the bound that keeps the counts from being pooled

**Predicate:** for each artifact-bearing session, its working directory and its first non-meta user turn, read from the transcript.

| sessions | working directory | first real turn | workload |
|---|---|---|---|
| `6655058f` | the framework repo | `what is 2 + 2?` | **framework governance** |
| `8de8d042` | an empty directory | `What is 2 + 2?` | **framework governance** |
| `57a82896` | the framework repo | a session kickoff | **framework governance** |
| `b16031d2` | the framework repo | `what is 2 + 2?` | **framework governance** |
| the analysing session | the framework repo | a note about the block | **framework governance** |
| session A · session B · session C | the framework repo | an explicit request to build offensive tooling | **unrelated offensive-tooling work** |
| session D | a directory outside the framework repository | a kickoff reference | **unrelated offensive-tooling work** |
| 4 × sub-context transcripts | the framework repo / a directory outside the framework repository | dispatched specialist role headers | **unrelated offensive-tooling work** |

> **Therefore the events must not be pooled, and this is the single most important bound in this ledger.**

- **The offensive-tooling events are plausibly TRUE POSITIVES on consequence.** A session that opens with an explicit request to build offensive capability being stopped is **not** evidence of a false-positive problem. **Nothing here assesses whether those stops were correct**; the point is only that they are a different class and cannot be counted toward a false-positive claim.
- **Only a small number of events are in the pure framework-governance case, and those are the whole of what this evidence says about the framework itself:** the first tier's four-word block, the first tier's empty-directory third turn, the 2026-09-25 newest-tier kickoff block, the three 2026-10-01 newest-tier four-word blocks, and the one unresolved notice.
- **All six control-tier stops are in the offensive-tooling workload.** ⇒ **The framework corpus has *not* been shown to stop that tier.** The honest row is *clean on the framework corpus; stopped six times on offensive-tooling content* — never a bare *clean* and never a bare *blocked*.

**This repository names those workloads only to the minimum needed to state this bound, and several of those engagements involve third parties.** What it states about them is the count, the working directory, the first-turn description and the workload class in the table above; the date, in § 4 of this file and in [`SOURCES.md`](SOURCES.md); and the bound, in [`REDACTIONS.md § 5`](REDACTIONS.md).

> **Why four rows carry a neutral label where the others carry a prefix, stated rather than left as an inconsistency.** The framework-governance sessions are this repository's own subject and are cited by prefix because the method depends on a reader being able to tell two artifacts apart. **The unrelated-workload sessions are not this repository's subject**, their prefixes buy a reader nothing the labels do not, and a prefix paired with a workload class and a date is a locator for work belonging to other parties. ⇒ **The labels `session A`–`session D` are this repository's own, assigned here and meaningful nowhere else.** The **counts** are untouched — four top-level and four sub-context transcripts — and the counts are what the reconciliation in § 4 turns on.

---

## 6 · Repository-side hygiene, measured

**Predicate:** literal-match count over tracked files only, **always with a positive control on the same command shape.**

| what was checked | tracked files containing it | positive control, same command shape |
|---|---|---|
| the account holder's email address | **0** | a common framework word → **379 files** |
| organisation- and account-linked identifier fields | **0** | same control |
| vendor per-event request and message identifiers | **0** | same control |

`RE-MEASURED`. ⇒ **The framework repository's own hygiene is correct on these points today.** Those values live only in the untracked local session store — exactly where they belong. **That property is load-bearing for [`REDACTIONS.md`](REDACTIONS.md): the most likely single route by which any of it would escape is a raw transcript excerpt pasted into a draft to illustrate a structure.**

---

## 7 · Figures carried as `SINGLE-SOURCE` — read in one report, **not** re-run

**These were not re-executed, and the reason is stated rather than implied.** Each rests on one or both of **two custom harm vocabularies that one party built**, whose own soundness that party flags as an open question:

> *"Is the evasion instrument itself sound? It is one round old and uncalibrated… built against payloads I had already read — which is precisely the self-built-corpus hazard."*

**Re-running them would mean rebuilding an instrument whose aim is the open question.** That is a separate piece of work.

| figure | that party's own confidence marker |
|---|---|
| The auto-loaded carrier's densest 686-character window scores **7.29 evasion hits per thousand characters**, **exactly tying** the highest-scoring window of the payload that actually blocked. | Published as a measurement — **and in the same breath the party states that *"for this candidate the score is not the finding"* and that **the score is the weakest part of its own case**, because *"no vocabulary scores semantics."*** |
| That window is the carrier's **own safety-governance prose.** | **The quoted passage itself is `RE-MEASURED`** — both fragments confirmed present verbatim in the carrier. |
| The carrier matches the blocked payload on absolute mass — **14 / 12 / 84 versus 18 / 13 / 80** across offensive hits, evasion hits and control nouns. | Measurement; **three scoring models disagree and two say block.** |
| A stale untracked file scored **5.23 offensive hits per thousand characters**, and **94 tracked files sit at or above it**, maximum **15.99**; one security specialist template reads 146 hits at 6.80, over a corpus of 2,476 tracked files. | That party's own bound: ***"a density proxy, not a measured refusal rate — not one of those 94 files has ever been put in front of an affected tier at top level."*** |
| The two vocabularies **score each other's top candidate at exactly zero.** | Structural, and that party calls it *"the strongest possible confirmation"* of its own method finding. |
| A fresh clone auto-loads **the one carrier and nothing else**; the user memory index and all twelve bound tool names **do not ship.** | Grounded on the repository's own tracked-file list and ignore rules. **The repository-side half was independently re-confirmed — see § 6.** |
| Assembly for the four-word arm = **114,760 characters**, of which the typed prompt is **0.0122%**. | That party's own **corrected** figure, replacing an earlier `~210 KB / 0.07%` it had published and then convicted. |
| Top-level system prompt **13,138 characters in 16 blocks, with** a dual-use-security paragraph, versus sub-context **2,714 in 4, without** one. | Measurement. **Units are characters**, per that party's own earlier correction. |

> **Anything quoting the `7.29` without its author's own sentence that *"the score is not the finding"* is quoting half of it.** That is not a privacy hazard — it is an accuracy hazard, and it is the more dangerous of the two.

---

## 8 · The predicates, stated so they can be re-driven

| # | predicate | span |
|---|---|---|
| **P1** | record type `system` **and** own content contains `'s safeguards stopped the response above` **and** ends `with that noted` | every transcript file under the local session store, recursive, **721 files**, parsed as JSON lines |
| **P2** | a record whose **own message text begins** `Your response above was stopped by a safety classifier` | same |
| **P3** | a record whose **own message text begins** `API Error:` **and** contains `safeguards flagged this message` | same |
| **P4** | **REJECTED** — the notice literal appears **anywhere** in a record | same. **Contaminated: it matches records that merely *discuss* the notice, including the analysing session's own transcripts and concurrent sibling sub-contexts analysing those exact literals. Recorded so that nobody re-runs it believing it is the measurement.** |
| **P5** | sub-context test, driven **two independent ways**: filename convention, **and** the record's own sidechain flag | same. **Both agreed on every artifact.** |
| **P6** | literal-match count over tracked files, **always with a positive control on the same command shape** | the framework repository, tracked files only |

**Every sweep was driven from a script that parses JSON lines, not from a shell pipeline with an unquoted expansion. Each zero reported in this file is paired with a positive control.**
