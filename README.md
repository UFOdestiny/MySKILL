# AI Paper Writing

A reusable skill for planning, drafting, revising, compiling, and auditing submission-ready AI, NLP, and LLM research papers in LaTeX. It treats a paper as one claim-evidence argument instead of a collection of disconnected sections.

## Highlights

- Builds explicit problem, prior-work limitation, challenge, method, and evidence alignment.
- Preserves detailed organization for the title, abstract, six-paragraph introduction, related work, preliminaries, methodology, RQ-based evaluation, conclusion, and appendices A-G.
- Supports method and component naming, page-budget control, experiment and appendix design, and consistency auditing.
- Enforces evidence integrity, online citation verification, LaTeX compilation, and final PDF inspection.
- Uses explicit placeholders when results or references are unavailable instead of inventing content.

See [ai-paper-writing/SKILL.md](ai-paper-writing/SKILL.md) for the complete workflow and requirements.

## Install or Update

Run from the repository root:

```bash
bash update.sh
```

The script replaces the existing copies in `~/.claude/skills/ai-paper-writing` and `~/.agents/skills/ai-paper-writing`, then links the current `SKILL.md` into both locations.
