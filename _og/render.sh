#!/bin/bash
set -e; cd "$(dirname "$0")"
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
"$CHROME" --headless --disable-gpu --force-device-scale-factor=2 --hide-scrollbars \
  --window-size=1200,630 --default-background-color=00000000 \
  --screenshot="$PWD/og_2x.png" "file://$PWD/og.html" 2>/dev/null
sips -z 630 1200 og_2x.png --out ../og.png >/dev/null 2>&1
rm -f og_2x.png; echo "✅ og.png 1200x630"
