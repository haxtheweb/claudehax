#!/usr/bin/env bash
set -euo pipefail

mkdir -p .claude/skills
cp -R "$(dirname "$0")/plugins/hax/skills/hax" .claude/skills/hax

echo "Installed local project skill at .claude/skills/hax"
echo "Open Claude Code in this project and run: /hax add 3 pages about iguanas"
