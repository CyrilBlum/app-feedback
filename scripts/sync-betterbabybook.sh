#!/bin/sh
# Copy the canonical generated changelog without modifying the private app repo.
set -eu
here=$(cd "$(dirname "$0")/.." && pwd)
app=${BETTERBABYBOOK_ROOT:-"$here/../BestBabyBook"}
python3 - "$app/docs/CHANGELOG.md" "$here/docs/better-baby-book/changelog.md" <<'PY'
import sys
from pathlib import Path

source, destination = map(Path, sys.argv[1:])
text = source.read_text(encoding="utf-8")
heading = text.find("\n## ")
if not text.startswith("# Neuigkeiten\n") or heading < 0:
    raise SystemExit("Unexpected Better Baby Book changelog format")
intro = "# Neuigkeiten\n\nDieselbe Liste finden Sie in der App unter Profil › App › Neuigkeiten. Die Verfügbarkeit hängt von der installierten Version ab.\n"
destination.parent.mkdir(parents=True, exist_ok=True)
destination.write_text(intro + text[heading:], encoding="utf-8")
print("Updated docs/better-baby-book/changelog.md")
PY
