#!/usr/bin/env bash
# Regenerate the static PDF from the live site using headless Edge/Chrome.
# Run this after publishing content changes (so the map/tiles render).
# Usage: ./make-pdf.sh
set -euo pipefail

cd "$(dirname "$0")"

URL="https://hectorjjb.github.io/italy-trekking-october/"
OUT="trekking-italy-october.pdf"

# Find a Chromium-based browser
BROWSER=""
for b in \
  "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" \
  "/Applications/Microsoft Edge.app/Contents/MacOS/Microsoft Edge" \
  "/Applications/Chromium.app/Contents/MacOS/Chromium"; do
  [ -x "$b" ] && BROWSER="$b" && break
done

if [ -z "$BROWSER" ]; then
  echo "No Chromium-based browser found (Chrome/Edge/Chromium)." >&2
  exit 1
fi

echo "Rendering $URL → $OUT ..."
"$BROWSER" --headless=new --disable-gpu --no-pdf-header-footer \
  --virtual-time-budget=12000 --run-all-compositor-stages-before-draw \
  --print-to-pdf="$OUT" "$URL" 2>/dev/null

echo "✓ Wrote $OUT ($(du -h "$OUT" | cut -f1)). Commit & push with ./update.sh"
