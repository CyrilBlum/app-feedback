#!/bin/sh
# Copy Pixel Porter's public changelog from its private repo into the docs site.
# Run from anywhere after changing PixelPorter/App/Resources/Changelog.json, then commit and push here.
set -eu
here=$(cd "$(dirname "$0")/.." && pwd)
app=${PIXELPORTER_ROOT:-"$here/../PixelPorter"}
python3 "$app/docs/changelog/render.py" --site "$here/docs/pixel-porter/changelog.md"
echo "Updated docs/pixel-porter/changelog.md"
