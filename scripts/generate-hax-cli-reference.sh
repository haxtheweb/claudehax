#!/usr/bin/env bash
set -euo pipefail

OUT="plugins/hax/skills/hax/docs/hax-cli-reference.md"
mkdir -p "$(dirname "$OUT")"

HAX_CMD="${HAX_CMD:-npx @haxtheweb/create}"

run_help() {
  local title="$1"
  shift

  echo "## $title"
  echo
  echo '```text'
  "$@" 2>&1 || true
  echo '```'
  echo
}

{
  echo "# HAX CLI Reference"
  echo
  echo "Generated on $(date -u +"%Y-%m-%dT%H:%M:%SZ")."
  echo
  echo "Command source:"
  echo
  echo '```text'
  echo "$HAX_CMD"
  echo '```'
  echo
  echo "Important: never use \`npx hax\`; it resolves to the wrong npm package. Use \`npx @haxtheweb/create\` or a globally installed \`hax\` command from \`@haxtheweb/create\`."
  echo

  # shellcheck disable=SC2086
  run_help "@haxtheweb/create --help" $HAX_CMD --help

  # shellcheck disable=SC2086
  run_help "@haxtheweb/create site --help" $HAX_CMD site --help

  # shellcheck disable=SC2086
  run_help "@haxtheweb/create site --root . --help" $HAX_CMD site --root . --help

  echo "## Common safe examples"
  echo
  echo '```bash'
  echo 'npx @haxtheweb/create site --root . site:items'
  echo 'npx @haxtheweb/create site --root . node:add --title "Page Title" --content "<h1>Page Title</h1><p>Starter content.</p>" --y'
  echo 'npx @haxtheweb/create site --root . site:search --search "keyword"'
  echo 'npx @haxtheweb/create site --root . site:html'
  echo 'npx @haxtheweb/create site --root . site:md'
  echo '```'
} > "$OUT"

echo "Generated $OUT"
