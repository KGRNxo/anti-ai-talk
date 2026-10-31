---
name: impeccable-ui-integration
description: Bei UI-/UX-Entwicklung, Design-Audits, visuellen Reviews, Barrierefreiheit, Responsivität und der Verbesserung von Webseiten, SwiftUI-/UIKit- und Android-Oberflächen. Bevorzuge den offiziellen Impeccable-Skill, wenn wirklich installiert.
---

# Impeccable für UI-Aufgaben

1. Lies zuerst AGENTS.md und die vorhandenen PRODUCT.md, DESIGN.md und relevanten Architektur-/Designregeln. Bestehende Produktidentität, Funktionalität, Markenfarben, native Plattformkonventionen und explizite Nutzervorgaben stehen über stilistischen Standardvorschlägen.
2. Ermittle zu Beginn, ob der **echte, offizielle** Impeccable-Skill (in Codex als `$impeccable`) samt benötigten Referenzen, Launcher und gegebenenfalls Hooks verfügbar ist. Wenn ja, nutze ihn für passende Aufgaben und befolge seine SKILL.md und Playbooks. Bei UI-Änderungen vor Abschluss einen passenden visuellen Review mit Impeccable durchführen, soweit die Umgebung es erlaubt.
3. Falls er fehlt, behaupte **keine Installation, keinen Hook und keine automatische Designprüfung**. Die offizielle Projektinstallation lässt sich bewusst mit `bash .codex/install-impeccable.sh` starten (Node.js >= 18.19, npm, Netzwerkzugang). Starte keine unaufgeforderte Paketinstallation als Nebeneffekt eines anderen Auftrags. Die Repo-Anweisungen allein installieren den Original-Skill nicht.
4. Bis der echte Skill verfügbar ist: systematisch Nutzerwege, Hierarchie, Abstände, Typografie, Kontrast, Zustände, Dynamic Type/Textskalierung, Touch-Ziele, VoiceOver/Semantik, Bewegungseinstellungen, responsive bzw. adaptive Layouts, Fehlermeldungen und Dark/Light prüfen. Keine neue Markenästhetik erfinden.
5. Folge zugleich Context Mode (gezielte Analyse, kleine Ausgaben) und Ponytail (kleinste vollständige Lösung). Keine Funktion, Sicherheit, Performance oder Barrierefreiheit der Optik opfern. Verifiziere betroffene Ansichten nach Möglichkeit gerendert, in relevanten Größen und Themes; nenne nicht ausführbare Prüfungen.
6. Informationen und Installation: https://impeccable.style/docs/ und https://github.com/pbakaus/impeccable. Die Dateien hier sind ein bewusst kleiner Integrations-/Installationsadapter, **nicht** der originale vollständige Impeccable-Skill.
