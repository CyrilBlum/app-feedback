#!/bin/sh
# Render the public changelog without modifying the app repository.
set -eu
here=$(cd "$(dirname "$0")/.." && pwd)
app=${RAPIDREMINDERS_ROOT:-"$here/../RapidReminders"}
python3 - "$app/RapidReminders/VersionLog.json" "$here/docs/rapid-reminders/changelog.md" <<'PY'
import json
import sys
from pathlib import Path

source, destination = map(Path, sys.argv[1:])
releases = json.loads(source.read_text(encoding="utf-8"))["log"]
releases.sort(key=lambda r: [int(x) for x in r["release"].split(".")], reverse=True)
lines = ["# Changelog", "",
         "The same changes are listed in the app under About & Usage › What's New. "
         "These entries describe implemented changes and do not confirm App Store availability.", ""]
for release in releases:
    lines += [f"## {release['release']} ({release['date']})", ""]
    for kind, heading in [("new", "New"), ("better", "Improved"), ("fixed", "Fixed")]:
        entries = [entry for entry in release["items"] if entry["what"] == kind]
        if entries:
            lines += [f"### {heading}", ""]
            lines += [f"- **{entry['title']}.** {entry['note']}" for entry in entries]
            lines += [""]
destination.parent.mkdir(parents=True, exist_ok=True)
destination.write_text("\n".join(lines), encoding="utf-8")
print("Updated docs/rapid-reminders/changelog.md")
PY
