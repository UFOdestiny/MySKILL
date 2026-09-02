#!/usr/bin/env bash
set -Eeuo pipefail

readonly SKILL_NAME="ai-paper-writing"
readonly SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)"
readonly SOURCE_DIR="${SCRIPT_DIR}/${SKILL_NAME}"

: "${HOME:?HOME is not set}"

[[ -f "${SOURCE_DIR}/SKILL.md" ]] || {
    printf 'error: missing %s\n' "${SOURCE_DIR}/SKILL.md" >&2
    exit 1
}

CODEX_SKILLS_DIR="${CODEX_SKILLS_DIR:-${HOME}/.agents/skills}"
CLAUDE_SKILLS_DIR="${CLAUDE_SKILLS_DIR:-${HOME}/.claude/skills}"

install_copy() {
    local label="$1"
    local root="$2"
    local target stage backup=""

    mkdir -p "$root"
    root="$(cd -- "$root" && pwd -P)"
    target="${root}/${SKILL_NAME}"

    if [[ "$target" == "$SOURCE_DIR" ]]; then
        printf 'error: source and destination are identical: %s\n' "$target" >&2
        return 1
    fi

    stage="$(mktemp -d "${root}/.${SKILL_NAME}.tmp.XXXXXX")"

    if ! cp -R "${SOURCE_DIR}/." "${stage}/"; then
        rm -rf "$stage"
        return 1
    fi

    if [[ -e "$target" || -L "$target" ]]; then
        backup="${root}/.${SKILL_NAME}.backup.$(date +%Y%m%d-%H%M%S).$$"
        mv "$target" "$backup"
    fi

    if ! mv "$stage" "$target"; then
        rm -rf "$stage"
        [[ -z "$backup" ]] || mv "$backup" "$target"
        return 1
    fi

    [[ -z "$backup" ]] || rm -rf "$backup"
    printf 'updated %-6s %s\n' "$label" "$target"
}

install_copy "Codex" "$CODEX_SKILLS_DIR"
install_copy "Claude" "$CLAUDE_SKILLS_DIR"