#!/usr/bin/env bash
rm -rf ~/.claude/skills/ai-paper-writing ~/.agents/skills/ai-paper-writing
mkdir ~/.claude/skills/ai-paper-writing ~/.agents/skills/ai-paper-writing
ln -f ai-paper-writing/SKILL.md ~/.claude/skills/ai-paper-writing/SKILL.md
ln -f ai-paper-writing/SKILL.md ~/.agents/skills/ai-paper-writing/SKILL.md