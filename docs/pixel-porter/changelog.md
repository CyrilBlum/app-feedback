# Changelog

All changes to Pixel Porter, newest first. The same list is in the app under Settings › User Guide & Workflow › What's New.

## 1.1.0 (2026-11-03)

### New

- **How Pixel Porter Works.** A guide to every tab: getting started, browsing and reviewing photos, syncing, the Server Bin and deletion review. *(Settings › User Guide & Workflow)*
- **What's New.** This list of changes. After an update that brings new features, it opens once and shows only those. *(Settings › User Guide & Workflow)*
- **Feedback & Development.** A short form for problems, suggestions and questions that goes straight to the developer and answers with a ticket number (an e-mail stays possible), and a link to the public list of planned and ongoing work. *(Settings › Feedback & Development)*
- **Server Additions.** Files in your backup folder that this iPhone did not upload are listed with path, date and size. Import them into Apple Photos, keep them on the server or move them to the Server Bin. *(Sync tab)*
- **Works with any WebDAV server.** Pixel Porter works with a Synology NAS, Nextcloud, ownCloud and other WebDAV servers. Without a server, it works as a photo browser. *(Server tab)*

### Improved

- **New app icon.** A NAS whose drive bays together show one photo.
- **One-tap Sync.** Both Sync buttons scan, upload and then list deletions for review. Rescan Only and Dry-Run Preview are still available. *(Sync tab)*
- **Separate deletion settings.** Mirroring iPhone deletions to the server and requiring manual review are now two separate settings. Turning review off never turns mirroring on. Your previous choice is kept. *(Settings › Deletions on the Server)*
- **Confirmations before deleting.** Deleting directly from the server, approving a large batch and clearing the log now ask for confirmation first.
- **Faster start.** Photos appear without waiting for file sizes, which are filled in afterwards. The sync records are read once instead of twice at launch, and the startup checks of Apple Photos and the server no longer run twice.

### Fixed

- **Live Photos partly moved to the Bin.** If only part of a Live Photo reached the Server Bin, it stays pending and the next attempt finishes the move instead of losing track of it.
- **Failed Bin moves.** A photo no longer disappears from the Deletions list when moving it to the Bin failed.
- **Default remote port.** A new setup suggests port 5006 for the remote host, the Synology WebDAV HTTPS port, instead of a fixed external port. Saved settings are not changed. *(Server tab)*
- **Large text layouts.** File details, gallery review counts and server-addition actions have more room at accessibility text sizes. The welcome text scrolls above the setup buttons. Viewer and editor controls keep readable labels and support the large-content viewer. Changelog headings wrap at large text sizes. *(Photos, Sync, Deletions and Settings)*

