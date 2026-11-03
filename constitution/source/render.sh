#!/bin/bash
# Renders both editions with Google Chrome. Run from Git Bash: ./render.sh
cd "$(dirname "$0")"
./build.sh
CHROME="${CHROME:-/c/Program Files/Google/Chrome/Application/chrome.exe}"
HERE="$(pwd -W 2>/dev/null || pwd)"
for ed in Premium White-Cover Print; do
  hash=""; [ "$ed" = "Print" ] && hash="#print"; [ "$ed" = "White-Cover" ] && hash="#light"
  "$CHROME" --headless=new --disable-gpu --no-pdf-header-footer --virtual-time-budget=20000 \
    --user-data-dir="$HERE/.chrome-profile" \
    --print-to-pdf="$HERE/../Naija-FC-Columbus-Constitution-$ed.pdf" "file:///$HERE/premium.html$hash" 2>&1 | grep -i written
done
rm -rf .chrome-profile premium.html
