---
name: complete-implementation
description: Für Features, Bugfixes, Refactoring, Migrationen, Performancearbeiten und Releases; komplette, sichere und überprüfte Umsetzung nach Ponytail und Context Mode.
---
1. AGENTS.md und relevante Projekt-, Design-, Rechts-, Sicherheits- und Release-Vorgaben laden. Plugin-/MCP-Verfügbarkeit nachweisen.
2. Anforderungen, Akzeptanzkriterien sowie Aufrufstellen, Datenmodelle, Zustände, Schnittstellen und Tests erfassen; nur notwendigen Kontext lesen.
3. Ponytail: notwendig? schon vorhanden? wiederverwenden? Standardbibliothek/native API? vorhandene Dependency? kleine lokale Änderung? erst danach minimaler neuer Code.
4. Verbindliche Anforderungen vollständig erfüllen, samt Fehlerfällen, Validierung, Datenschutz, Datenintegrität, Migrationen, Accessibility und Rückwärtskompatibilität.
5. Bei echten ctx_*-Tools große Ausgaben über Sandbox und Index auswerten; Fehlerdiagnosen bewahren.
6. Relevante Tests, Builds, Lints und Regressionen wirklich ausführen, Diff auf unnötigen Code und Seiteneffekte prüfen.
7. Nicht automatisch mergen. Echte Ergebnisse und nicht gelaufene Checks ausweisen. Ponytail full nur wenn nachweislich verfügbar.
