# anti-ai-talk

[Deutsch](README.de.md)

A skill for Claude Code and Codex that keeps formulaic LLM prose out of everything the agent writes: chat replies, docs, README files, UI copy, error messages, stories, dialogue, commit messages and code comments.

It encodes 100 rules. Full rule sets exist for German and English. For every other language the agent applies the same rules by meaning and builds the local equivalents of the banned phrases itself.

## What it changes

Without the skill:

> Great question! Caching is not just a performance trick, it is a fundamental part of robust, scalable and maintainable systems. In summary, a well-designed cache plays a crucial role. Let me know if you'd like me to go deeper!

With the skill:

> A cache stores results you would otherwise recompute. It cuts latency for repeated reads, and it serves stale data until the entry expires or is invalidated.

The rules target these families of patterns:

| Family | Examples |
|---|---|
| Rhetoric | "not X, but Y", "not only X but also Y", rule of three, question-and-instant-answer, "here's the key point" |
| Conversation | stock openers ("Great question"), stock closers ("Let me know", "Would you like me to"), recap paragraphs |
| Claims | inflated significance, interpretation tacked onto facts, "experts say", fake balance, invented numbers |
| Vocabulary | crucial, robust, seamless, holistic, landscape, delve, tapestry, and their equivalents in other languages |
| Fiction | "something shifted in her", micro-action filler, explained punchlines, thematic dialogue endings |
| Form | needless headings, bold, emoji, bullet lists, marketing UI copy, comments that repeat the code |
| Honesty | no fake typos, no invented experiences, no tricks to fool AI detectors |

The full list is in [`references/rules.en.md`](plugins/anti-ai-talk/skills/anti-ai-talk/references/rules.en.md) (English) and [`references/rules.de.md`](plugins/anti-ai-talk/skills/anti-ai-talk/references/rules.de.md) (German).

## Install

### Claude Code

```bash
claude plugin marketplace add KGRNxo/anti-ai-talk
claude plugin install anti-ai-talk@anti-ai-talk
```

Inside a session the same works as `/plugin marketplace add KGRNxo/anti-ai-talk` and `/plugin install anti-ai-talk@anti-ai-talk`.

To try it from a local clone without installing:

```bash
claude --plugin-dir ./plugins/anti-ai-talk
```

### Codex

```bash
codex plugin marketplace add KGRNxo/anti-ai-talk
```

Then open the plugin browser in Codex (`/plugins`) and install `anti-ai-talk`.

Codex loads skills only when it judges a task to be a writing task. To apply the rules to every reply, add this line to `~/.codex/AGENTS.md` (all projects) or to `AGENTS.md` in a repository:

```markdown
Apply the anti-ai-talk skill to every reply and every text you write, including short chat answers, commit messages and code comments.
```

If your Codex version has no plugin support, copy the skill folder instead:

```bash
git clone https://github.com/KGRNxo/anti-ai-talk
mkdir -p ~/.agents/skills
cp -r anti-ai-talk/plugins/anti-ai-talk/skills/anti-ai-talk ~/.agents/skills/
```

### Other agents

The skill is a plain `SKILL.md` folder. Any agent that supports the Agent Skills format can load `plugins/anti-ai-talk/skills/anti-ai-talk/`.

## Use

In Claude Code the plugin ships a `SessionStart` hook that puts the checklist into context at the start of every session, after `/clear` and after compaction. The rules then apply to every reply, not only to tasks the model classifies as writing. The hook prints about 60 lines of text and runs nothing else.

In Codex, see the `AGENTS.md` line above.

The skill also triggers on its own whenever the agent writes or rewrites text. You can also ask for it directly:

- "Rewrite this without LLM phrasing."
- "Schreib das ohne KI-Floskeln neu."
- "Use anti-ai-talk" (Codex: `$anti-ai-talk`)

Passing your own text to edit keeps its facts, numbers and voice. The skill removes patterns and does not invent replacement content.

## Languages

| Language | Coverage |
|---|---|
| German | Full rule set with German phrases and word lists |
| English | Full rule set with English phrases and word lists |
| Others (es, fr, it, pt, nl, pl, tr, ja, zh, ...) | Structural rules apply as written. The agent maps phrase lists by meaning. Starting points are in [`other-languages.md`](plugins/anti-ai-talk/skills/anti-ai-talk/references/other-languages.md) |

To add a language, copy `rules.en.md` to `rules.<code>.md`, translate the patterns and word lists with native equivalents, and add one line for it in step 2 of `SKILL.md`. Pull requests with native-speaker lists are welcome.

## Limits

- This is an instruction set, not a filter. It cuts the patterns down a lot but not to zero: in tests, single leftovers such as a group of three or "all in one place" still slipped through. Long outputs drift more. If a draft still shows a pattern, point at the sentence and ask again.
- The always-on checklist costs about 1,500 tokens of context per session. The full rule files (5,000 to 7,000 tokens each) load only when the model decides to read them.
- Banning a pattern does not make a text good. The skill removes filler. Facts, structure and voice still come from you and the model.
- Word bans apply to figurative or decorative use. Technical terms, quotations, names and code are exempt.
- The skill does not evade AI detectors and will not try to (rule 99).

## Layout

```
.claude-plugin/marketplace.json        Claude Code marketplace
.agents/plugins/marketplace.json       Codex marketplace
plugins/anti-ai-talk/
  .claude-plugin/plugin.json           Claude Code manifest
  .codex-plugin/plugin.json            Codex manifest
  hooks/hooks.json                     Claude Code SessionStart hook
  hooks/session-start.sh               prints the checklist into context
  skills/anti-ai-talk/
    SKILL.md                           procedure and checklist
    references/rules.de.md             100 rules, German
    references/rules.en.md             100 rules, English
    references/other-languages.md      mapping notes for other languages
```

## License

MIT
