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

## Impeccable für sämtliche UI-/UX-Aufgaben

Bei jeder UI-/UX-Implementierung, Designprüfung, visuellen Änderung, Accessibility- oder Responsivitätsarbeit den **offiziellen Impeccable-Skill** nutzen, sofern er in der aktuellen Codex-Umgebung tatsächlich installiert und geladen ist. Prüfe dies jeweils; bei Bedarf zunächst den Projekt-Skill `.agents/skills/impeccable-ui-integration/SKILL.md` lesen. Die reproduzierbare **offizielle** Codex-Projektinstallation ist in `.codex/install-impeccable.sh` hinterlegt (Ausführung: `bash .codex/install-impeccable.sh`). Externe Installation oder Hook-Freigabe nicht allein aus einer Anweisung behaupten.

Bestehende `DESIGN.md`, `PRODUCT.md`, Markenidentität, Plattformkonventionen, Sicherheits- und Fachvorgaben behalten Vorrang vor Design-Heuristiken. Impeccable ergänzt Context Mode und Ponytail ausschließlich bei UI-bezogenen Aufgaben; bei Backend-/Datenaufgaben kein künstliches Design-Audit erzwingen. Vor Abschluss relevante UI-Zustände, Themes, Bildschirmgrößen, Barrierefreiheit und tatsächliche Testergebnisse überprüfen. Hooks müssen vom Nutzer in Codex freigegeben werden. Kein automatisches Mergen oder Veröffentlichen.
