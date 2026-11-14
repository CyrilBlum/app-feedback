#!/bin/sh
# Render the public changelog from the canonical release notes, without modifying app files.
set -eu
here=$(cd "$(dirname "$0")/.." && pwd)
app=${TIMETRACKINGTOOL_ROOT:-"$here/../TimeTrackingTool"}
python3 - "$app/TimeTrackingTool/ReleaseNotes.json" "$here/docs/timetrackingtool/changelog.md" <<'PY'
import json
import sys
from pathlib import Path
source, destination = map(Path, sys.argv[1:])
releases = json.loads(source.read_text())["releases"]
releases.sort(key=lambda r: tuple(map(int, r["version"].split("."))), reverse=True)
lines = ["# Changelog", "", "Generated from the iPhone app's release notes, also shown under Tools › What's New. Entries describe implemented changes and do not confirm App Store availability. Mac-specific features are documented separately in the Mac workflow.", ""]
for release in releases:
    lines += [f"## {release['version']} ({release['date']})", ""]
    for kind, title in [("feature", "New"), ("improvement", "Improved"), ("fix", "Fixed")]:
        changes = [c for c in release["changes"] if c["type"] == kind]
        if changes:
            lines += [f"### {title}", ""]
            for c in changes:
                lines.append(f"- {c['summary']}. {c['detail']}" + (f" ({c['path']})" if c.get('path') else ''))
            lines += [""]
destination.write_text("\n".join(lines))
print("Updated docs/timetrackingtool/changelog.md")
PY
