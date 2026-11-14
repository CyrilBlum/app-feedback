# Data and exports

## Local measurements and Apple Health

Manual measurements and imported Health copies are kept locally. **Import Weight from Health** requests read access to body weight and shows progress and a result. If an import fails or returns no measurements, the existing history is kept. An empty result alone does not establish whether access was denied.

Imported measurements are read-only in WeWeight. **Delete Imported Copies** asks for confirmation and removes the imported copies from WeWeight, while keeping manual entries. It does not delete measurements from Apple Health. Importing again can bring Health measurements back.

Manual entries can be edited and deleted in **Weight data**. Deletion asks for confirmation. A **Data storage** alert means saved data could not be read; the app preserves the unreadable data rather than silently replacing it. Keep the alert details when reporting the problem, without posting health information publicly.

## Goal history CSV

The main screen provides actions to import and download the goal history. Download a copy before replacing or deleting a plan. Import replaces the goal history when the file is valid; an invalid or empty file keeps the existing history and reports an error.

The required header is:

```csv
Start Date,End Date,Phase,Target Weight
```

Dates use `YYYY-MM-DD`. Phase names are `Bulk`, `Cut` or `Maintenance`, and target weights are in kilograms. Use a downloaded file as a template. These files describe goals, not your measurement history.

## Optional GitHub export

Local tracking does not require GitHub. In **Settings**, enter the repository owner, repository name, weight-file path and a fine-grained token with Contents read/write permission limited to the intended repository. Use a private repository and check its collaborators before uploading health information. The token is kept in the iOS Keychain.

**Test Repository** makes a network request to check access. Once the connection is configured, **Upload phase plan** and **Upload weight history** appear at the end of the main screen. Each upload first shows the content and destination and asks for confirmation. Weight-history exports include Health measurements as well as manual entries.

The weight CSV uses the header `Date,Weight (kg)` and ISO timestamps. The default weight file is `Health Data/body-weight-all.csv`; the phase-plan file is `WeWeight/weight-phases.csv`. Files committed to GitHub can remain in repository history after replacement or deletion.

**Remove GitHub Connection** asks for confirmation before removing the saved connection from the app. It does not revoke the token on GitHub or delete exported files. Revoke the token in GitHub separately if needed.

## Keeping copies and privacy

Goal CSV downloads and repository exports serve different purposes. The app does not offer account-based synchronisation or a full-app restore workflow. Keep independent copies before deleting the app or replacing a device, and protect exported health data.

See the [privacy policy](https://cblum.ch/en/projects/weweight/privacy/) for the handling of local data, optional network actions and feedback.
