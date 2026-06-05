#!/usr/bin/env bash
set -e

OUT="plugins/hax/skills/hax/docs/hax-cli-reference.md"
mkdir -p "$(dirname "$OUT")"

HAX_CMD="npx @haxtheweb/create"

{
  echo "# HAX CLI Reference"
  echo
  echo "This file is generated from HAX CLI help output."
  echo
  echo "## @haxtheweb/create --help"
  echo '```text'
  $HAX_CMD --help || true
  echo '```'
  echo
  echo "## site --help"
  echo '```text'
  $HAX_CMD site --help || true
  echo '```'
  echo
  echo "## recipe --help"
  echo '```text'
  $HAX_CMD recipe --help || true
  echo '```'
  echo
  echo "## site --root . --help"
  echo '```text'
  $HAX_CMD site --root . --help || true
  echo '```'
} > "$OUT"

echo "Generated $OUT"