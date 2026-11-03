# Changelog

All changes to Pixel Porter, newest first. The same list is in the app under Settings › User Guide & Workflow › What's New.

## 1.1.0 (2026-11-03)

### New

- **How Pixel Porter Works.** A guide to every tab: getting started, browsing and reviewing photos, syncing, the Server Bin and deletion review. *(Settings › User Guide & Workflow)*
- **What's New.** This list of changes. After an update that brings new features, it opens once and shows only those. *(Settings › User Guide & Workflow)*
- **Server Additions.** Files in your backup folder that this iPhone did not upload are listed with path, date and size. Import them into Apple Photos, keep them on the server or move them to the Server Bin. *(Sync tab)*
- **Works with any WebDAV server.** Pixel Porter works with a Synology NAS, Nextcloud, ownCloud and other WebDAV servers. Without a server, it works as a photo browser. *(Server tab)*

### Improved

- **New app icon.** A NAS whose drive bays together show one photo.
- **One-tap Sync.** Both Sync buttons scan, upload and then list deletions for review. Rescan Only and Dry-Run Preview are still available. *(Sync tab)*
- **Separate deletion settings.** Mirroring iPhone deletions to the server and requiring manual review are now two separate settings. Turning review off never turns mirroring on. Your previous choice is kept. *(Settings › Deletions on the Server)*
- **Confirmations before deleting.** Deleting directly from the server, approving a large batch and clearing the log now ask for confirmation first.

### Fixed

- **Live Photos partly moved to the Bin.** If only part of a Live Photo reached the Server Bin, it stays pending and the next attempt finishes the move instead of losing track of it.
- **Failed Bin moves.** A photo no longer disappears from the Deletions list when moving it to the Bin failed.

