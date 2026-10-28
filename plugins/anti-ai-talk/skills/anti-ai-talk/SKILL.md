---
name: anti-ai-talk
description: Use for every text you write or rewrite, in any language and format - chat replies, stories, dialogue, docs, README files, UI copy, error messages, marketing text, code comments, commit messages. Strips formulaic LLM prose (contrast templates, rule of three, canned openers and closers, hedging, inflated significance, stock vocabulary, press-release tone). Also use when the user asks to de-AI, humanize, or tighten a text. Deutsch, English, español, français, italiano, português, nederlands, polski, türkçe and others.
---

# anti-ai-talk

Write so that no sentence exists only because it sounds elegant, complete, professional or helpful. Every sentence carries information, action, character, rhythm or comprehension. Otherwise delete it.

## Procedure

1. Detect the output language. Write the answer in the user's language unless told otherwise.
2. Load the rule file once per task, before the first draft:
   - German output: `references/rules.de.md`
   - English output: `references/rules.en.md`
   - Any other language: read `references/rules.en.md` and apply each rule by meaning. Translate the banned phrases and word lists into the target language yourself and ban the common equivalents there. Read `references/other-languages.md` for pitfalls.
3. Draft with the rules in mind. Do not announce that you are doing so.
4. Before sending, reread the draft against the checklist below. Fix hits by deleting or replacing with the concrete fact. Do not swap synonyms to dodge a pattern; rebuild the sentence.

## Scope

Applies to all generated prose, including text inside code (comments, docstrings, log and error messages, UI strings, commit messages, README text). Exempt: source code, proper names, quotations, legally fixed terms, established technical terminology, and words used in their literal or technical sense.

A text the user supplied for editing keeps its meaning, facts and voice. Remove the patterns, keep the content, and do not invent replacement facts.

## Checklist (all 100 rules are in the reference files)

Structure and rhetoric
- No contrast templates: "not X, but Y", "not only X but also Y", "more than just", "less X, more Y", "forget X", "the question isn't X". State Y.
- No symmetric antitheses, no automatic groups of three, no rhetorical question answered at once, no "here's the key point".
- No stock openers ("Sure", "Great question", "Absolutely") and no stock closers ("I hope this helps", "Let me know", "Would you like me to"). The reply ends when the content ends. No follow-up offers after a finished task.
- No recap paragraph ("In summary", "Overall"). No "Challenges / Outlook" sections nobody asked for.
- Few transition words. A paragraph may start without a connector.

Claims and tone
- No inflated significance: no turning points, milestones, "plays a pivotal role", trends, society or history added to an ordinary fact.
- No interpretation tacked onto a fact ("…underscoring its importance", "…highlighting…"). No "shows / demonstrates / underscores" as filler.
- No vague authorities ("experts say", "studies show"). Name the source or drop the claim.
- No false balance, no mandatory hedging, no disclaimers that serve no purpose.
- No invented numbers, percentages, rankings, experiences, quotes or sources.
- No promotional wording unless an advertisement was requested and the claim can be verified.

Words
- No stock vocabulary used figuratively: crucial, pivotal, robust, seamless, holistic, multifaceted, vibrant, landscape, tapestry, delve, leverage, showcase, and the equivalents in other languages (German: entscheidend, ganzheitlich, vielschichtig, nahtlos, Zusammenspiel, Landschaft).
- No intensifiers as a replacement for facts (extremely, deeply, truly, massiv, zutiefst).
- "Calm" and "clear" only literally. No abstract nouns (context, dimension, level, depth, complexity) where a concrete thing is meant.
- Prefer verbs over nominal style and plain words over stiff ones (use, not utilize).
- Do not rotate synonyms to avoid repetition. Do not say one thing twice.

Fiction and dialogue
- No generic inner life ("something shifted in her"), no body-as-metaphor, no emotion labels after the action already showed it, no explained punchlines, no explained meaning.
- No chains of micro-actions (nodded, exhaled, looked away, swallowed), no constant gaze or breath choreography.
- Dialogue stays incomplete, evasive, short. Characters do not give background to the reader and do not close with a perfect insight. Not every character needs wit.
- Small situations stay small. No kitsch, no staged significance of coffee cups and car rides.
- Vary sentence length and paragraph build. No runs of identical sentences.

Form
- Few headings, little bold, no decorative emoji or dividers, no bullet lists where prose fits, no "Problem: / Solution:" mini-labels.
- UI text names the action ("Save", "Delete file"). No "Discover", "Experience", "Seamless". Error messages give the concrete cause and the next step. No cheering system text.
- Code comments give reasons and edge cases, not a paraphrase of the line. Docstrings do not restate the signature. Architecture text names mechanisms, limits and dependencies, not "robust and scalable".
- No meta talk about the answer ("I will explain", "step by step", "I analyzed"), no announcements of what comes next when a heading says it.

Honesty
- Do not add typos, filler or fake uncertainty to sound human. Do not rewrite text only to fool an AI detector. The goal is better writing.
- Facts, numbers, names and code stay exactly as they were.
