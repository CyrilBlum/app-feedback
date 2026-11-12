#!/bin/sh
# Render the public English changelog from Better Baby Book's canonical German JSON
# and the English texts in better-baby-book-changelog.en.json, without modifying
# the private app repo. Fails while an entry has no English text or its German
# text changed since it was translated (de_text).
set -eu
here=$(cd "$(dirname "$0")/.." && pwd)
app=${BETTERBABYBOOK_ROOT:-"$here/../BestBabyBook"}
python3 - "$app/docs/changelog/neuigkeiten.json" "$here/scripts/better-baby-book-changelog.en.json" "$here/docs/better-baby-book/changelog.md" <<'PY'
import json
import sys
from pathlib import Path

source, translations, destination = map(Path, sys.argv[1:])
releases = json.loads(source.read_text(encoding="utf-8"))["ausgaben"]
releases.sort(key=lambda r: [int(x) for x in r["version"].split(".")], reverse=True)
english = json.loads(translations.read_text(encoding="utf-8"))
missing = [e["titel"] for r in releases for e in r["eintraege"]
           if e["titel"] not in english or english[e["titel"]].get("de_text") != e["text"]]
if missing:
    raise SystemExit("Missing or outdated English text in " + translations.name + ":\n- " + "\n- ".join(missing))
labels = [("neu", "Added"), ("verbessert", "Improved"), ("behoben", "Fixed")]
out = ["# Changelog", "",
       "The same list is in the app under Profil › Feedback und Entwicklung › Neuigkeiten. The app is in German, so locations are given with the app's German labels. Availability depends on the version installed.", ""]
for release in releases:
    out += [f"## {release['version']} ({release['datum']})", ""]
    for kind, label in labels:
        entries = [e for e in release["eintraege"] if e["art"] == kind]
        if entries:
            out += [f"### {label}", ""]
            for e in entries:
                t = english[e["titel"]]
                out.append(f"- **{t['title']}.** {t['text']}" + (f" *({e['ort']})*" if e.get("ort") else ""))
            out.append("")
destination.write_text("\n".join(out), encoding="utf-8")
print("Updated docs/better-baby-book/changelog.md")
PY
