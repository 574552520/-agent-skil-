#!/usr/bin/env bash
set -euo pipefail

TARGET_DIR="${1:-$HOME/.openclaw/workspace}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"

mkdir -p "$TARGET_DIR"
cp "$REPO_DIR/agents/main/AGENTS.md" "$TARGET_DIR/AGENTS.md"
cp "$REPO_DIR/agents/main/SOUL.md" "$TARGET_DIR/SOUL.md"
cp "$REPO_DIR/agents/main/TOOLS.md" "$TARGET_DIR/TOOLS.md"
mkdir -p "$TARGET_DIR/agent-templates"
cp -r "$REPO_DIR/agents/deep-researcher" "$TARGET_DIR/agent-templates/" 2>/dev/null || true
cp -r "$REPO_DIR/agents/code-dev" "$TARGET_DIR/agent-templates/" 2>/dev/null || true
cp -r "$REPO_DIR/agents/daily-ops-agent" "$TARGET_DIR/agent-templates/" 2>/dev/null || true
cp "$REPO_DIR/MULTI_AGENT.md" "$TARGET_DIR/agent-templates/MULTI_AGENT.md"

echo "Installed multi-agent template into: $TARGET_DIR"
echo "Main agent files copied to workspace root."
echo "Additional role templates copied to: $TARGET_DIR/agent-templates"
echo "Next step: wire these roles into your actual OpenClaw runtime and skills."
