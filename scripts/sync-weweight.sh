#!/bin/sh
# Render the canonical English changelog without modifying the app repository.
set -eu
here=$(cd "$(dirname "$0")/.." && pwd)
app=${WEWEIGHT_ROOT:-"$here/../WeWeight"}
python3 - "$app/WeWeight/ReleaseHistory.json" "$here/docs/weweight/changelog.md" <<'PY'
import json
import sys
from pathlib import Path
source, destination = map(Path, sys.argv[1:])
releases = json.loads(source.read_text(encoding="utf-8"))["entries"]
releases.sort(key=lambda r: [int(x) for x in r["v"].split(".")], reverse=True)
lines = ["# Changelog", "", "The same changes are listed in Settings › What's New. These entries describe implemented changes and do not confirm App Store availability.", ""]
for release in releases:
    lines += [f"## {release['v']} ({release['on']})", ""]
    for kind, heading in [("added", "New"), ("improved", "Improved"), ("fixed", "Fixed")]:
        entries = [entry for entry in release["notes"] if entry["tag"] == kind]
        if entries:
            lines += [f"### {heading}", ""]
            lines += [f"- **{entry['headline']}.** {entry['detail']}" for entry in entries]
            lines += [""]
    unknown = {entry["tag"] for entry in release["notes"]} - {"added", "improved", "fixed"}
    if unknown:
        raise ValueError(f"Unknown changelog categories: {unknown}")
destination.write_text("\n".join(lines), encoding="utf-8")
print("Updated docs/weweight/changelog.md")
PY
