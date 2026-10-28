#!/bin/sh
# SessionStart stdout goes into the model's context. Skills alone load only when the
# model decides a task is "writing", which skips most plain chat replies.
# Only CLAUDE_PLUGIN_ROOT and literal paths: the plugin directory review follows the
# script automatically only when it computes no paths.
echo "anti-ai-talk is active for every reply in this session, not only writing tasks. Rule files: ${CLAUDE_PLUGIN_ROOT}/skills/anti-ai-talk/references/"
# Without this the model may also invoke the skill and load the same text a second time.
echo "The skill text below is already loaded. Do not invoke the anti-ai-talk skill; read the rule files directly when the procedure calls for them."
# shortcut: skips the 4-line frontmatter of SKILL.md by count; update if the frontmatter grows.
tail -n +5 "${CLAUDE_PLUGIN_ROOT}/skills/anti-ai-talk/SKILL.md"
