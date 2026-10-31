#!/usr/bin/env bash
set -euo pipefail
if ! command -v node >/dev/null 2>&1 || ! command -v npm >/dev/null 2>&1; then
  printf '%s\n' 'Node.js und npm sind erforderlich. Installiere Node.js >= 18.19 und versuche es erneut.' >&2
  exit 1
fi
if ! node -e 'const [major,minor] = process.versions.node.split(".").map(Number);process.exit(major>18||(major===18&&minor>=19)?0:1)'; then
  printf '%s\n' 'Impeccable benötigt Node.js >= 18.19.' >&2
  exit 1
fi
cd "$(dirname "$0")/.."
printf '%s\n' 'Installiere den offiziellen Impeccable-Skill für Codex in diesem Projekt ...'
npx --yes impeccable@latest install --providers=codex --scope=project
printf '%s\n' 'Bitte Änderungen prüfen und in Codex /hooks öffnen, die PostToolUse- und Stop-Hooks freigeben und die Sitzung neu starten.'
printf '%s\n' 'Im Codex-Chat: $impeccable init und anschließend $impeccable hooks on (nur wenn gewünscht).'
