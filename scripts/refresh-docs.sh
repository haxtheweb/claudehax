#!/usr/bin/env bash
set -euo pipefail

bash scripts/generate-hax-cli-reference.sh
bash scripts/generate-hax-elements-reference.sh

echo
echo "Refreshed HAX CLI and web component references."
echo "Review docs, then commit and push."
