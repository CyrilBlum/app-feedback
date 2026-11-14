#!/bin/sh
# Render English public notes from the canonical bilingual history.
set -eu
here=$(cd "$(dirname "$0")/.." && pwd)
app=${VOCABVAULT_ROOT:-"$here/../WordTrainer"}
python3 - "$app/WordTrainer/UpdateHistory.json" "$here/docs/vocab-vault/changelog.md" <<'PY'
import json
import sys
from pathlib import Path
source, destination = map(Path, sys.argv[1:])
versions = json.loads(source.read_text())["versions"]
versions.sort(key=lambda v: tuple(map(int, v["number"].split("."))), reverse=True)
lines = ["# Changelog", "", "Generated from the app's update history, also shown in Settings › About › What's New. Entries describe implemented changes and do not confirm App Store availability.", ""]
for version in versions:
    lines += [f"## {version['number']} ({version['released']})", ""]
    for kind, title in [("new", "New"), ("improved", "Improved"), ("fixed", "Fixed")]:
        items = [i for i in version["items"] if i["kind"] == kind]
        if items:
            lines += [f"### {title}", ""]
            for item in items:
                lines.append(f"- {item['title']['en']}. {item['body']['en']}" + (f" ({item['place']['en']})" if item.get('place') else ''))
            lines += [""]
destination.write_text("\n".join(lines))
print("Updated docs/vocab-vault/changelog.md")
PY
