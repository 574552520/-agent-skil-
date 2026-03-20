#!/usr/bin/env bash
set -euo pipefail

TARGET_DIR="${1:-$HOME/.openclaw/workspace}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"

mkdir -p "$TARGET_DIR"
cp "$REPO_DIR/agents/main/AGENTS.md" "$TARGET_DIR/AGENTS.md"
cp "$REPO_DIR/agents/main/SOUL.md" "$TARGET_DIR/SOUL.md"
cp "$REPO_DIR/agents/main/TOOLS.md" "$TARGET_DIR/TOOLS.md"

echo "Installed agent template into: $TARGET_DIR"
echo "You should now review and customize:"
echo "- USER.md"
echo "- MEMORY.md / memory/"
echo "- .env and any local secrets"
