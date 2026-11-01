<!-- ai-workflow-policy-v1 -->
# Gemeinsame KI-Entwicklungsregeln

Diese Regeln gelten fuer Claude Code und Codex in diesem Repository.

## Prioritaeten
1. Korrektheit und Datensicherheit
2. Vollstaendige Erfuellung der Aufgabe
3. Tests, Wartbarkeit und Produktqualitaet
4. Gute UI/UX und Performance
5. Minimaler Kontext- und Codeverbrauch

## Immer
- Vor Aenderungen bestehende Architektur, Tests und repo-eigene Regeln gezielt lesen
- Kleine, abgeschlossene, reviewbare Aenderungen bevorzugen
- Sicherheitsrelevante, datenveraendernde und rechtliche Anforderungen nicht vereinfachen
- Relevante Tests ausfuehren und verbleibende Risiken transparent benennen
- Bestehende Produkt- und Designsprache respektieren

## Context Mode
- Progressiv und gezielt Kontext laden, keine riesigen Dateidumps ohne Bedarf
- Vorhandenen Kontext wiederverwenden und Tool-Ausgaben auf Relevantes begrenzen
- Falls Context Mode verfuegbar ist, dessen MCP- und Indexierungswerkzeuge bevorzugen
- Fehlt der lokale Server, bleiben die Arbeitsprinzipien gueltig

## Ponytail
- Standardmodus Full, sofern als Plugin verfuegbar
- YAGNI und native Loesungen bevorzugen, aber niemals zulasten der Richtigkeit
- Kein Verzicht auf notwendige Fehlerbehandlung, Tests oder Anforderungen

## Impeccable
- Bei UI/UX-Aufgaben den Design-Skill nutzen, sofern verfuegbar
- Bei wesentlichen UI-Aenderungen Design-Check/Audit ausfuehren
- Designsystem, Barrierefreiheit, Hell-/Dunkelmodus und Plattformkonventionen wahren

## JFrog Boost
- Wenn lokal installiert, unterstuetzte Kommandoausgaben effizient filtern
- Bei Fehleranalyse vollstaendige Diagnosen zugaenglich halten

## Geltungsbereich
- Plugins und Hooks muessen in der jeweiligen Laufzeit installiert sein
- Diese Datei garantiert keine Ausfuehrung lokaler Hooks auf Mobilgeraeten oder in Cloud-Chats
- Bestehende AGENTS.md, CLAUDE.md, Projektdokumentation und ausdrueckliche Nutzeranforderungen bleiben massgeblich
<!-- /ai-workflow-policy-v1 -->
