# anti-ai-talk

[English](README.md)

Ein Skill für Claude Code und Codex, der formelhafte LLM-Sprache aus allem fernhält, was der Agent schreibt: Chatantworten, Dokumentation, README-Dateien, UI-Texte, Fehlermeldungen, Geschichten, Dialoge, Commit-Nachrichten und Code-Kommentare.

Er enthält 100 Regeln. Vollständige Regelsätze gibt es für Deutsch und Englisch. In jeder anderen Sprache wendet der Agent dieselben Regeln sinngemäß an und bildet die dortigen Entsprechungen der verbotenen Wendungen selbst.

## Was sich ändert

Ohne den Skill:

> Gute Frage! Caching ist nicht nur ein Performance-Trick, sondern ein zentraler Baustein robuster, skalierbarer und wartbarer Systeme. Zusammenfassend spielt ein gut durchdachter Cache eine entscheidende Rolle. Sag Bescheid, wenn ich tiefer einsteigen soll!

Mit dem Skill:

> Ein Cache speichert Ergebnisse, die sonst neu berechnet würden. Wiederholte Lesezugriffe werden schneller, und der Cache liefert veraltete Daten, bis der Eintrag abläuft oder ungültig gemacht wird.

Die Regeln decken diese Mustergruppen ab:

| Gruppe | Beispiele |
|---|---|
| Rhetorik | „nicht X, sondern Y“, „nicht nur X, sondern auch Y“, Dreierregel, Frage mit sofortiger Antwort, „der entscheidende Punkt“ |
| Gespräch | Standardeinstiege („Gute Frage“), Standardabschlüsse („Sag Bescheid“, „Möchtest du, dass ich …“), Wiederholungsfazit |
| Aussagen | aufgeblähte Bedeutung, angehängte Deutung, „Experten sagen“, Pseudo-Ausgewogenheit, erfundene Zahlen |
| Wortschatz | entscheidend, robust, nahtlos, ganzheitlich, Landschaft, Zusammenspiel und ihre Entsprechungen in anderen Sprachen |
| Prosa | „etwas in ihr gab nach“, Mikrohandlungen als Füllstoff, erklärte Pointen, thematische Dialogschlüsse |
| Form | unnötige Überschriften, Fettschrift, Emojis, Listen, Marketing-UI-Texte, Kommentare, die den Code wiederholen |
| Ehrlichkeit | keine absichtlichen Tippfehler, keine erfundenen Erlebnisse, keine Tricks gegen KI-Detektoren |

Die vollständige Liste steht in [`references/rules.de.md`](plugins/anti-ai-talk/skills/anti-ai-talk/references/rules.de.md) (Deutsch) und [`references/rules.en.md`](plugins/anti-ai-talk/skills/anti-ai-talk/references/rules.en.md) (Englisch).

## Installation

### Claude Code

```bash
claude plugin marketplace add KGRNxo/anti-ai-talk
claude plugin install anti-ai-talk@anti-ai-talk
```

In einer laufenden Sitzung geht dasselbe mit `/plugin marketplace add KGRNxo/anti-ai-talk` und `/plugin install anti-ai-talk@anti-ai-talk`.

Zum Ausprobieren aus einem lokalen Klon ohne Installation:

```bash
claude --plugin-dir ./plugins/anti-ai-talk
```

### Codex

```bash
codex plugin marketplace add KGRNxo/anti-ai-talk
```

Danach im Plugin-Browser von Codex (`/plugins`) `anti-ai-talk` installieren.

Hat deine Codex-Version keine Plugin-Unterstützung, kopiere den Skill-Ordner:

```bash
git clone https://github.com/KGRNxo/anti-ai-talk
mkdir -p ~/.agents/skills
cp -r anti-ai-talk/plugins/anti-ai-talk/skills/anti-ai-talk ~/.agents/skills/
```

### Andere Agenten

Der Skill ist ein normaler `SKILL.md`-Ordner. Jeder Agent mit Unterstützung für das Agent-Skills-Format kann `plugins/anti-ai-talk/skills/anti-ai-talk/` laden.

## Benutzung

Der Skill greift von selbst, sobald der Agent Text schreibt oder überarbeitet. Du kannst ihn auch direkt anfordern:

- „Schreib das ohne KI-Floskeln neu.“
- „Rewrite this without LLM phrasing.“
- „Nutze anti-ai-talk“ (Codex: `$anti-ai-talk`)

Bei eigenen Texten bleiben Fakten, Zahlen und Stimme erhalten. Der Skill entfernt Muster und erfindet keinen Ersatzinhalt.

## Sprachen

| Sprache | Abdeckung |
|---|---|
| Deutsch | Vollständiger Regelsatz mit deutschen Wendungen und Wortlisten |
| Englisch | Vollständiger Regelsatz mit englischen Wendungen und Wortlisten |
| Andere (es, fr, it, pt, nl, pl, tr, ja, zh, ...) | Die Strukturregeln gelten unverändert. Der Agent überträgt die Wendungslisten sinngemäß. Anhaltspunkte stehen in [`other-languages.md`](plugins/anti-ai-talk/skills/anti-ai-talk/references/other-languages.md) |

Für eine neue Sprache `rules.en.md` nach `rules.<code>.md` kopieren, Muster und Wortlisten mit muttersprachlichen Entsprechungen übersetzen und in Schritt 2 der `SKILL.md` eine Zeile ergänzen. Pull Requests mit muttersprachlichen Listen sind willkommen.

## Grenzen

- Das ist eine Anweisung, kein Filter. Das Modell hält sich mit der üblichen Streuung daran, und lange Texte driften. Zeigt ein Entwurf noch ein Muster, die Stelle benennen und erneut anfordern.
- Wer ein Muster verbietet, macht den Text noch nicht gut. Der Skill entfernt Füllmaterial. Inhalt, Aufbau und Stimme kommen weiterhin von dir und dem Modell.
- Wortverbote gelten für übertragenen oder schmückenden Gebrauch. Fachbegriffe, Zitate, Namen und Code sind ausgenommen.
- Der Skill umgeht keine KI-Detektoren und versucht es auch nicht (Regel 99).

## Aufbau

```
.claude-plugin/marketplace.json        Marketplace für Claude Code
.agents/plugins/marketplace.json       Marketplace für Codex
plugins/anti-ai-talk/
  .claude-plugin/plugin.json           Manifest für Claude Code
  .codex-plugin/plugin.json            Manifest für Codex
  skills/anti-ai-talk/
    SKILL.md                           Ablauf und Checkliste
    references/rules.de.md             100 Regeln, Deutsch
    references/rules.en.md             100 Regeln, Englisch
    references/other-languages.md      Hinweise für andere Sprachen
```

## Lizenz

MIT
