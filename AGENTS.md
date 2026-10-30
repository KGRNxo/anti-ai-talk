# Verbindliche Agentenregeln

Gelten dauerhaft für Audits, Analyse, Planung, Implementierung, Code-Reviews, Tests und Delegation. Vorhandene Produkt- und Sicherheitsvorgaben bleiben bestehen.

## Qualitätsreihenfolge
1. Sicherheit, Datenschutz, Korrektheit, Datenintegrität
2. Vollständige Erfüllung verbindlicher Anforderungen
3. UI/UX, Barrierefreiheit und Produktqualität
4. Zuverlässigkeit, Wartbarkeit, Performance
5. Minimaler notwendiger Code
6. Minimaler Kontext- und Tokenverbrauch

## Context Mode
Zu Beginn tatsächliche Verfügbarkeit von Context-Mode-`ctx_*`-MCP-Tools prüfen. Bei großen Dateien, Logs, Suchen und Testausgaben möglichst Sandbox, Index, Suche und Batch nutzen. Zuerst Architektur, Einstiegspunkte und Datenflüsse abstecken, danach relevante Dateien progressiv laden; Diagnosen und Quellen wiederauffindbar bewahren. Ergebnisse wiederverwenden, redundantem Tool- und Agenteneinsatz vorbeugen. Vollaudits müssen alle relevanten Bereiche prüfen oder Lücken benennen. Ohne MCP identische Prinzipien mit vorhandenen Werkzeugen anwenden.

## Ponytail
Echte Skills/Plugin/Hooks und `full`-Modus prüfen; nur nachgewiesene Integration als aktiv bezeichnen. Vor neuem Code: nötig? schon vorhanden? bestehender Code wiederverwendbar? native API oder Standardbibliothek? vorhandene Dependency? kleinste lokale Änderung? sonst minimale neue Implementierung. Nicht aus Sparsamkeit Tests, Sicherheit, Fehlerbehandlung, Datenintegrität, Accessibility, Performance oder explizite Features streichen.

## Abläufe
Bei Audits `.agents/skills/context-efficient-audit/SKILL.md`, bei Codearbeit `.agents/skills/complete-implementation/SKILL.md` passend anwenden. Aufrufstellen und Risiken prüfen, Lösung vollständig implementieren, relevante Tests wirklich laufen lassen, Diff prüfen und Nichtgeprüftes getrennt berichten. Subagenten unterliegen denselben Regeln. Keine automatischen Merges in den Hauptbranch.

`.codex/config.toml` konfiguriert nur einen MCP-Server für vertrauenswürdige Projekte, setzt eine lokale `context-mode`-Installation voraus und aktiviert keine Hooks. `AGENTS.md` garantiert keine tatsächliche externe Tool- oder Skill-Ausführung.

## Projektrahmen
Plugin-/Skill-Repo: 100 Sprachregeln, Manifeste und Portabilität bewahren; keine Texte unerwünscht umformulieren.
