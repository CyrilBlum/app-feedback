#!/bin/sh
# Render English public notes from ScreenSnipStudio without modifying app files.
set -eu
here=$(cd "$(dirname "$0")/.." && pwd)
app=${SCREENSNIPSTUDIO_ROOT:-/Applications/ScreenSnipStudio}
python3 - "$app/docs/changelog/changes.json" "$here/docs/screensnipstudio/changelog.md" <<'PY'
import json
import sys
from pathlib import Path
source, destination = map(Path, sys.argv[1:])
versions = json.loads(source.read_text())["versions"]
versions.sort(key=lambda v: tuple(map(int, v["version"].split("."))), reverse=True)
lines = ["# Changelog", "", "Generated from the app's canonical change history, also shown in the menu bar's What's New window. Entries describe implemented changes and do not announce distribution availability.", ""]
for version in versions:
    lines += [f"## {version['version']} ({version['date']})", ""]
    for kind, title in [("feature", "New"), ("improvement", "Improved"), ("fix", "Fixed")]:
        changes = [c for c in version["changes"] if c["type"] == kind]
        if changes:
            lines += [f"### {title}", ""]
            lines += [f"- {c['en'][0]}. {c['en'][1]}" for c in changes]
            lines += [""]
destination.write_text("\n".join(lines))
print("Updated docs/screensnipstudio/changelog.md")
PY
