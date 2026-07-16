CLAUDE="~/.claude/skills/"

~/.claude/skills/
~/.agents/skills/

ln -f seven-page-ai-paper-writing ~/.claude/skills/
ln -f seven-page-ai-paper-writing ~/.agents/skills/

cd ~/.claude/skills/; mkdir ai-paper-writing; cp 

mkdir  ln -f ai-paper-writing ~/.claude/skills/
ln -f ai-paper-writing ~/.agents/skills/

rm -rf ~/.claude/skills/ai-paper-writing;rm -rf ~/.agents/skills/ai-paper-writing
mkdir ~/.claude/skills/ai-paper-writing; ln -f ai-paper-writing/SKILL.md ~/.claude/skills/ai-paper-writing/SKILL.md
mkdir ~/.agents/skills/ai-paper-writing; ln -f ai-paper-writing/SKILL.md ~/.agents/skills/ai-paper-writing/SKILL.md