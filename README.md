# Feedback and development for Cyril Blum's apps

This is the public tracker for all apps by Cyril Blum: problems, feature
requests and what is being worked on right now. Anyone can read it without
an account. To open or comment on an issue you need a GitHub account; without
one, write to apps@cblum.ch.

Dies ist der öffentliche Tracker für alle Apps von Cyril Blum: Probleme,
Wünsche und woran gerade gearbeitet wird. Lesen geht ohne Konto. Zum Melden
oder Kommentieren braucht es ein GitHub-Konto; ohne Konto schreiben Sie an
apps@cblum.ch. Meldungen auf Deutsch sind willkommen.

Documentation and changelogs: <https://docs.cblum.ch/> (built from `docs/`
with MkDocs; `scripts/sync-*.sh` copy each app's changelog here).

To update the documented apps' changelogs from sibling private checkouts, run
`scripts/sync-betterbabybook.sh`, `scripts/sync-cycloputer.sh`,
`scripts/sync-pixelporter.sh` `scripts/sync-rapidreminders.sh` and `scripts/sync-timetrackingtool.sh` as needed.
TimeTrackingTool accepts `TIMETRACKINGTOOL_ROOT` and reads its canonical release notes JSON.
The new scripts accept `BETTERBABYBOOK_ROOT`, `CYCLOPUTER_ROOT` and
`RAPIDREMINDERS_ROOT` and `WEWEIGHT_ROOT` when those checkouts are elsewhere. The docs site is
English only. Better Baby Book's canonical changelog is German, so its script
combines `docs/changelog/neuigkeiten.json` with the English texts in
`scripts/better-baby-book-changelog.en.json` and stops while an entry is missing
there or its German text changed. Cycloputer, Rapid Reminders and WeWeight read their
canonical JSON directly without modifying the apps. A sync publishes every entry
in the app's source, including unreleased ones; check the diff before pushing.

Before publishing, install `requirements.txt` in a virtual environment and run
`mkdocs build --strict`. A push to `main` publishes the site through GitHub Pages.

Feature guides use real app screenshots with numbered annotations and matching
explanations. Capture or reuse only isolated fictional data, inspect the raw and
annotated images, and state the capture build and date in the guide. Reproduction
scripts and detailed provenance live in each app's `docs/docs-site/` folder.
Never substitute generated interface artwork for an app capture.
Keep each image and its numbered table inside a `screenshot-guide` block with
`screenshot-guide__image` and `screenshot-guide__details` children. The shared CSS
places them in columns when space permits and stacks them in narrow views.
Do not use floated images for these pairs.

## Apps

| App | Platform | Issues |
| --- | --- | --- |
| Better Baby Book | iOS | [open](https://github.com/CyrilBlum/app-feedback/issues?q=is%3Aopen+label%3A%22app%3A+Better+Baby+Book%22) |
| Cycloputer | iOS | [open](https://github.com/CyrilBlum/app-feedback/issues?q=is%3Aopen+label%3A%22app%3A+Cycloputer%22) |
| Pixel Porter | iOS | [open](https://github.com/CyrilBlum/app-feedback/issues?q=is%3Aopen+label%3A%22app%3A+Pixel+Porter%22) |
| Rapid Reminders | iOS | [open](https://github.com/CyrilBlum/app-feedback/issues?q=is%3Aopen+label%3A%22app%3A+Rapid+Reminders%22) |
| ScreenSnipStudio | macOS | [open](https://github.com/CyrilBlum/app-feedback/issues?q=is%3Aopen+label%3A%22app%3A+ScreenSnipStudio%22) |
| TimeTrackingTool | iOS | [open](https://github.com/CyrilBlum/app-feedback/issues?q=is%3Aopen+label%3A%22app%3A+TimeTrackingTool%22) |
| Vocab Vault | iOS | [open](https://github.com/CyrilBlum/app-feedback/issues?q=is%3Aopen+label%3A%22app%3A+Vocab+Vault%22) |
| WeWeight | iOS | [open](https://github.com/CyrilBlum/app-feedback/issues?q=is%3Aopen+label%3A%22app%3A+WeWeight%22) |

[Everything in progress right now](https://github.com/CyrilBlum/app-feedback/issues?q=is%3Aopen+label%3A%22status%3A+in+progress%22)

## How issues are handled

Every issue has a type and a status label:

- `type: bug` for something that does not work as described, `type: feature`
  for a new function, `type: improvement` for making an existing function
  clearer, faster or more reliable.
- `status: new` (not yet looked at), `status: planned`, `status: in progress`,
  `status: not planned` (with the reason in a comment).

Before a new issue is opened, existing open and closed issues are searched,
and duplicates are merged into the existing issue. When a change ships, the
issue is closed with a comment naming the version that contains it, and the
people who reported it by e-mail get a reply.

## Privacy

Everything here is public. Do not post names, e-mail addresses, health data,
photos of people, server addresses, passwords or screenshots with personal
content. Reports sent by e-mail are summarised here without any personal data.
