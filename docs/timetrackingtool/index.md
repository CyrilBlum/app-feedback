# TimeTrackingTool

TimeTrackingTool records time against projects, with tags and notes. The iPhone app includes calendar imports and a monthly overview. The Mac app works from the menu bar and adds a week timeline, project budgets and reports.

| | |
| --- | --- |
| Platform | iPhone with iOS 17 or later. Mac implementation requires macOS 14 or later |
| Language | English |
| Account | Optional, for sync between devices |
| Storage | Local app database. Signing in enables sync of projects, tags, tag categories and entries |
| Offline | Timers, editing and local reports work offline. Sync and fetching calendar feeds need a connection |

This guide describes the current implementation, including iPhone version 1.4 and the Mac implementation in development. An installed App Store or TestFlight build may differ. Account sync and sub-projects require iPhone version 1.4. Check the [changelog](changelog.md) against your installed version. The Mac sections describe Mac version 1.0 and do not announce its public availability.

## Quick start on iPhone

1. Open **Projects / Areas** and create a project for the work you want to track.
2. In the sidebar's **New Entry** section, select your project and any tags. Add notes through the entry details if needed.
3. Choose **Start Timer**. Stop the running entry when the work ends. To enter earlier work, turn on **Log Completed Time** and set its start and end or duration before saving.
4. Open **Entries** to review the result. Check overlap warnings and correct accidental parallel timers.
5. Open **Tools › Monthly Overview** for daily totals or **Export as CSV** to save a copy of your entries.

On Mac, open the menu bar item, choose a project and start a timer. Open the main window to review entries, organise projects and use Reports. See [Mac workflow](mac.md).

!!! warning "Check your records"
    Check times yourself before billing or reporting. TimeTrackingTool does not verify completeness, accuracy or compliance with working-time rules. Storage, imports and sync can fail. Keep exports or backups of records you rely on. Use is at your own risk. Liability is limited only to the extent permitted by law, with mandatory liability, including intent and gross negligence, preserved.

- [Features](features.md) explains the iPhone controls.
- [Calendars, sync and data](data-and-sync.md) covers imports, accounts, recovery and deletion.
- [Mac workflow](mac.md) explains the menu bar, reports and backups.
- [Changelog](changelog.md) and [feedback](feedback.md) cover updates and support.

[Product page](https://cblum.ch/apps/timetrackingtool/) and [privacy policy](https://cblum.ch/en/projects/timetrackingtool/privacy/).
