#!/usr/bin/env bash
# Codex Cloud only. In the Cloud environment Install script field use:
#   bash .codex/cloud-setup.sh
# In an optional maintenance/check field use:
#   bash .codex/cloud-setup.sh --check
# This file does not install or modify Claude Code plugins or settings.
set -euo pipefail

cd "$(git rev-parse --show-toplevel 2>/dev/null || pwd)"

verify() {
  local missing=0
  for file in AGENTS.md \
    .agents/skills/context-efficient-audit/SKILL.md \
    .agents/skills/complete-implementation/SKILL.md \
    .agents/skills/ponytail/SKILL.md; do
    if [[ ! -s "$file" ]]; then
      printf 'MISSING Codex instruction/skill: %s\n' "$file" >&2
      missing=1
    fi
  done

  if ! command -v context-mode >/dev/null 2>&1; then
    echo 'MISSING Context Mode executable in the current PATH' >&2
    missing=1
  else
    echo 'Context Mode executable found; MCP connection and ctx_* tools still require a real Codex session check.'
  fi

  if [[ -d "$HOME/.codex" ]] && find "$HOME/.codex" -type f -name SKILL.md -path '*impeccable*' -print -quit 2>/dev/null | grep -q .; then
    echo 'Impeccable Codex skill files found; automatic hooks are not thereby verified.'
  else
    echo 'Impeccable skill not detected under ~/.codex; inspect the Codex skill/plugin list.' >&2
    missing=1
  fi

  if [[ "$missing" -ne 0 ]]; then
    echo 'Codex Cloud setup incomplete; do not claim plugins or hooks are active.' >&2
    return 1
  fi
  echo 'Codex Cloud prerequisites present. Verify actual skill loading and MCP tools in a new task.'
}

if [[ "${1:-}" == "--check" ]]; then
  verify
  exit $?
fi

if ! command -v node >/dev/null 2>&1 || ! command -v npm >/dev/null 2>&1; then
  echo 'Node.js and npm are required by the Codex Cloud setup.' >&2
  exit 1
fi

# Versioned third-party installations, limited to the Codex Cloud runtime.
# Context Mode is exposed by the existing repo-scoped .codex/config.toml.
npm install --global --no-audit --no-fund context-mode@1.0.169
npx --yes impeccable@4.8.0 install -y --providers=codex --scope=global

verify
echo 'Codex Cloud setup complete. Hook trust/dispatch is host-specific and not guaranteed.'
