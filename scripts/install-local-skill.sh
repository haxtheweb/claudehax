#!/usr/bin/env bash
set -euo pipefail

SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TARGET_DIR="${1:-$(pwd)}"

mkdir -p "$TARGET_DIR/.claude/skills"
cp -R "$SOURCE_DIR/plugins/hax/skills/hax" "$TARGET_DIR/.claude/skills/hax"

echo "Installed HAX Claude skill into: $TARGET_DIR/.claude/skills/hax"
echo "Open Claude Code in that project and try: /hax add 3 pages about iguanas"
