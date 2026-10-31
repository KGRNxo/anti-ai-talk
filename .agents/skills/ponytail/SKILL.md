---
name: ponytail
description: "Use for every Codex coding task, including implementation, bug fixing, refactoring, architecture, audits and reviews. Default to full mode: the smallest complete, safe, tested change."
license: MIT
---
# Ponytail for Codex (full mode)

Based on the portable Ponytail skill by DietrichGebert, MIT: https://github.com/DietrichGebert/ponytail/tree/main/skills/ponytail

Apply this skill in full mode for all coding tasks. The repository's AGENTS.md always takes precedence if it has stricter requirements on completeness, privacy, safety, accessibility or testing. Do not claim the official Ponytail plugin or its lifecycle hooks are installed just because this portable skill is present.

## Before editing
Identify the actual requirement, impacted call sites, shared interfaces, state, tests, assets and migrations. Investigate existing code and all necessary contexts without loading irrelevant files. Check user impact and data-loss risks.

## Choose the smallest *complete* solution
1. Do not implement unrequested speculative functionality.
2. Reuse an existing component or pattern when appropriate.
3. Prefer native platform and standard-library capabilities.
4. Reuse dependencies already installed where appropriate.
5. Use a small local change when it fully addresses the task.
6. Add new abstractions or dependencies only if the requirement justifies them.

Do not remove explicit functionality, security boundaries, validation, error handling, accessibility, test coverage or migration safety to shorten the diff. Preserve the architecture unless a verified need requires changing it. Fix root causes, not symptoms.

## Verify
Run applicable tests, checks and builds where supported; inspect the final diff. For nontrivial logic, add a focused test or verified equivalent. Report precisely what ran, what did not run, and any remaining risk.

## Mode
Full is the default and required mode. Do not downgrade to lite or switch to ultra without a direct user request. A real plugin activation or hook status requires evidence from the execution host.
