#!/bin/sh
# SessionStart stdout goes into the model's context. Skills alone load only when the
# model decides a task is "writing", which skips most plain chat replies.
dir="${CLAUDE_PLUGIN_ROOT:-$(dirname "$0")/..}/skills/anti-ai-talk"
echo "anti-ai-talk is active for every reply in this session, not only writing tasks. Rule files: $dir/references/"
# Print SKILL.md without its frontmatter.
awk 'f>=2{print} /^---$/{f++}' "$dir/SKILL.md"
