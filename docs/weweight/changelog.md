# Changelog

The same changes are listed in Settings › What's New. These entries describe implemented changes and do not confirm App Store availability.

## 1.2 (2026-11-03)

### New

- **What's New.** This list of changes in Settings. After an update with new features, it opens once and shows only those.
- **Feedback and development.** Settings has a short form for problems, suggestions and questions that goes straight to the developer and answers with a ticket number (an e-mail stays possible), and a link to the public list of planned and ongoing work.
- **Import progress.** Importing from Apple Health runs one import at a time and shows its progress on the button.

### Improved

- **Safer deleting and exporting.** Deleting a goal phase or a manual measurement asks first, and upload actions only appear once a repository is set up.
- **Clearer empty screens and large text.** Empty lists explain what to do next, and layouts work at the largest text sizes.
- **GitHub token in the Keychain.** The GitHub token is stored in the iPhone's Keychain, and the export includes Health measurements again.
- **Persistent chart range.** Your selected zoom range on the weight trend chart is remembered across launches.
- **Ergonomic CSV actions.** CSV import and download controls use prominent bordered buttons with symbols and wrap cleanly on compact screens.

### Fixed

- **Emptied fields.** An emptied weight or target field disables Save instead of saving the previous value.
- **CSV import error feedback.** Selecting an inaccessible or unreadable file displays an alert instead of silently returning.
- **Number linebreaking and sheet idiom.** Weight figures stay on a single line at large accessibility sizes, and the help sheet uses the standard close icon.
- **Interrupted editors.** Measurement and phase drafts reopen after an interruption. Cancelling changed input asks before discarding it, including date and rate changes.
- **CSV safeguards.** Imports validate the header, dates and target weights before asking to replace your phase history. Failed downloads show an error.
- **Consistent averages and faster charts.** The dashboard includes the same seven calendar days as the chart and excludes future measurements. Larger histories need less chart calculation.
- **Cancellable imports and exports.** Health reads and GitHub exports can be cancelled. Late Health results cannot restore deleted imported copies, and repository tests clear outdated results when settings change.
- **Feedback privacy and help.** Device details in feedback start switched off. Help and Settings link the English user guide and privacy policy, and numeric editors offer a keyboard Done button.
- **Readable large text.** The latest weight stays visible at accessibility text sizes, and change descriptions use the full available width.

## 1.1.1 (2026-10-26)

### New

- **WeWeight.** Plan weight phases with a goal and rate, record or import weights from Apple Health, see the trend with a rolling average and export to a GitHub repository.
