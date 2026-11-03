#!/bin/sh
# Render the public changelog from Cycloputer's canonical JSON without changing app files.
set -eu
here=$(cd "$(dirname "$0")/.." && pwd)
app=${CYCLOPUTER_ROOT:-"$here/../Cycloputer"}
python3 - "$app/CyclingMap/AppChanges.json" "$here/docs/cycloputer/changelog.md" <<'PY'
import json
import sys
from pathlib import Path

source, destination = map(Path, sys.argv[1:])
releases = json.loads(source.read_text(encoding="utf-8"))["releases"]
releases.sort(key=lambda release: tuple(map(int, release["app_version"].split("."))), reverse=True)
labels = {
    "en": {"added": "Added", "changed": "Changed", "fixed": "Fixed"},
    "de": {"added": "Neu", "changed": "Geändert", "fixed": "Behoben"},
}
out = ["# Changelog", "", "The same changes are listed in the app under About › App Guide › What's New. Entries describe the app version shown; availability depends on the build installed.", ""]
for lang, heading in (("en", "English"), ("de", "Deutsch")):
    out += [f"## {heading}", ""]
    for release in releases:
        out += [f"### {release['app_version']} ({release['date']})", ""]
        for category in ("added", "changed", "fixed"):
            notes = [note for note in release["notes"] if note["category"] == category]
            if not notes:
                continue
            out += [f"#### {labels[lang][category]}", ""]
            for note in notes:
                text = note.get(lang) or note["en"]
                where = (note.get("where") or {}).get(lang)
                out.append(f"- {text['title']}. {text['text']}" + (f" ({where})" if where else ""))
            out.append("")
destination.write_text("\n".join(out), encoding="utf-8")
print(f"Updated {destination.relative_to(destination.parents[2])}")
PY
