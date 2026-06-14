#!/usr/bin/env bash
# Publish edits to GitHub Pages.
# Usage: ./update.sh ["optional commit message"]
set -euo pipefail

cd "$(dirname "$0")"

if [ -z "$(git status --porcelain)" ]; then
  echo "No changes to publish."
  exit 0
fi

msg="${1:-Update trekking page}"

git add -A
git commit -qm "$msg"
git push -q

echo "✓ Pushed. Live in ~30–60s at:"
echo "  https://hectorjjb.github.io/italy-trekking-october/"
