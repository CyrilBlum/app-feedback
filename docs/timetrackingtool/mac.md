# Mac workflow

This page describes the Mac version 1.0 implementation in development. It requires macOS 14 or later. Check the version installed on your Mac. These instructions do not announce a public release.

## Menu bar and quick start

Open TimeTrackingTool from its menu bar item. The panel shows running timers with Stop controls, a quick-start area and recent activities that can be started again. Expand a recent activity for its project path, dates, duration, tags, notes and source. Clicking an active project in the hierarchy starts a timer for it.

The app appears only in the menu bar by default. **Settings › General › Show icon in the Dock** adds a Dock icon. **Open at login** starts the app when you sign in to the Mac.

The global shortcut **Control+Option+Command+T** opens Quick Start when enabled. The Timer menu offers **Stop All** and **Sync Now**. In General settings, **Allow several timers at once** controls whether starting another timer stops the current one.

## Entries and reports

Open the main window for Today, Week, Entries, Reports, Projects and Tags. Double-click the week timeline to create an entry. In Entries, filter by date, project subtree, tag or text. Edit an entry to change its time range, projects, tags or notes. Inspect overlap marks when parallel timers were accidental.

Reports provide day, week, month and year totals, decimal hours, project and tag groupings and CSV export. Project trees roll up sub-project time. Amounts use the project's own or inherited hourly rate. Review the time and rate before using an amount for invoicing.

## Projects and reminders

In Projects, create a hierarchy or drag a project to change its parent. A project may inherit colour and hourly rate. Set a budget to compare recorded time with planned hours. Archive a project when it should no longer appear among active choices. Read the confirmation before deleting a project with sub-projects. The recorded time in entries is kept.

**Settings › General** includes a daily target, reminders for long timers and idle detection. After an absence, idle detection asks whether to keep the time, discard it or stop at the start of the absence. Review the proposal if work continued away from the keyboard.

## Backup and import

Open **Settings › Data › Export Backup (JSON)…** to save projects, tag categories, tags and entries. The file is readable JSON and is not encrypted. Keep it in a protected location. **Export All Entries (CSV)…** provides a separate report of time entries.

**Import Backup (JSON)…** adds missing records by their identifiers and leaves existing records unchanged. It does not roll newer edits back to the backup's state. Running timers from an old backup are not restarted.

**Delete All Data on This Mac…** asks for confirmation. While signed in, deletions can reach other devices on the next sync. Export a backup before proceeding if you need to keep those records.

## Scripts and agents

**Settings › General › Scripts and agents › Local API on this Mac** is off by default. When enabled, authorised local scripts can list projects, create sub-projects, start or stop timers and add completed entries. This can modify time records. Enable it only when you intend to use a local integration. Requests from web pages are refused. The companion command is called `ttt` where it has been installed separately.

Account setup, sync, sign-out and deletion work through **Settings › Account & Sync**. See [Calendars, sync and data](data-and-sync.md).
