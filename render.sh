#!/bin/sh
set -eu

REPO_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
CHROMIUM_BIN=${CHROMIUM_BIN:-chromium}
if ! command -v "$CHROMIUM_BIN" >/dev/null 2>&1; then
  echo "render.sh: install Chromium or set CHROMIUM_BIN to its executable path" >&2
  exit 127
fi
"$CHROMIUM_BIN" --headless --no-sandbox --disable-gpu --allow-file-access-from-files \
  --hide-scrollbars --window-size=1600,1600 \
  --screenshot="$REPO_DIR/meme.png" "file://$REPO_DIR/design.html"
