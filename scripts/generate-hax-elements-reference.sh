#!/usr/bin/env bash
set -euo pipefail

OUT="plugins/hax/skills/hax/docs/hax-elements-reference.md"
TMP_DIR=".tmp/hax-webcomponents"

mkdir -p "$(dirname "$OUT")"
rm -rf "$TMP_DIR"
mkdir -p .tmp

git clone --depth 1 https://github.com/haxtheweb/webcomponents.git "$TMP_DIR" >/dev/null 2>&1

{
  echo "# HAX Elements Reference"
  echo
  echo "Generated on $(date -u +"%Y-%m-%dT%H:%M:%SZ")."
  echo
  echo "Source: https://github.com/haxtheweb/webcomponents/tree/master/elements"
  echo
  echo "Use these web components when creating interactive, educational, media, layout, or assessment content."
  echo
  echo "## Available elements"
  echo

  find "$TMP_DIR/elements" -mindepth 1 -maxdepth 1 -type d \
    | sed 's#.*/##' \
    | sort \
    | while read -r element; do
        echo "- \`<$element>\`"
      done

  echo
  echo "## Suggested intent mapping"
  echo
  echo "- Multiple choice quizzes: look for \`<multiple-choice>\`."
  echo "- Fill-in-the-blank activities: look for \`<fill-in-the-blanks>\`."
  echo "- Flashcards: look for \`<flash-card>\`."
  echo "- Video: look for \`<video-player>\`."
  echo "- Tabs: look for \`<a11y-tabs>\`."
  echo "- Accordions/collapsible content: look for \`<a11y-collapse>\`."
  echo "- Layout, cards, galleries, media, timelines, charts, callouts, and assessment components should be selected from the available element list when appropriate."
  echo
  echo "## Usage guidance"
  echo
  echo "When the user asks for quizzes, assessments, checks for understanding, flashcards, media, timelines, cards, figures, galleries, tabs, accordions, or interactive learning content, prefer an appropriate HAX web component over plain HTML."
  echo
  echo "Before using a component, inspect its folder, README, demo, or source if available to confirm exact attributes, slots, and child markup."
  echo
  echo "## Component folders with README files"
  echo

  find "$TMP_DIR/elements" -mindepth 2 -maxdepth 2 \( -iname "README.md" -o -iname "readme.md" \) \
    | sed "s#$TMP_DIR/elements/##" \
    | sort \
    | while read -r readme; do
        element="${readme%%/*}"
        echo "- \`<$element>\`: \`elements/$readme\`"
      done

} > "$OUT"

rm -rf "$TMP_DIR"

echo "Generated $OUT"
