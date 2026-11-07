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

- **Safer Free Up Space.** Before deleting anything from your iPhone, Pixel Porter checks that every file is on the server with the size recorded at upload. Items it cannot confirm stay on the iPhone and are listed. You can also free space for older items only (over 30 days, 90 days or 1 year). *(Sync tab)*
- **Complete restore of offloaded items.** Restore brings an item back with its Live Photo video, RAW file and edits, checks each download against its checksum, and Restore All brings back every offloaded item at once. *(Deletions tab)*
- **New app icon.** A NAS whose drive bays together show one photo.
- **One-tap Sync.** Both Sync buttons scan, upload and then list deletions for review. Rescan Only and Dry-Run Preview are still available. *(Sync tab)*
- **Separate deletion settings.** Mirroring iPhone deletions to the server and requiring manual review are now two separate settings. Turning review off never turns mirroring on. Your previous choice is kept. *(Settings › Deletions on the Server)*
- **Confirmations before deleting.** Deleting directly from the server, approving a large batch and clearing the log now ask for confirmation first.
- **Faster start.** Photos appear without waiting for file sizes, which are filled in afterwards. The sync records are read once instead of twice at launch, and the startup checks of Apple Photos and the server no longer run twice.
- **Discard confirmation in editor.** Cancelling photo or video edits now asks for confirmation if adjustments, crops or filters were changed, preventing accidental loss of work. *(Viewer › Edit)*
- **Empty filter guidance and sheet close buttons.** When a search or filter combination produces no results, an inline message offers to reset filters. Informational sheets use standard close buttons. *(Photos, Viewer and Sync)*

### Fixed

- **Uploads are checked on the server.** A file counts as uploaded only when the server reports the full size. A shortened file is uploaded again on the next sync. *(Sync tab)*
- **Live Photos partly moved to the Bin.** If only part of a Live Photo reached the Server Bin, it stays pending and the next attempt finishes the move instead of losing track of it.
- **Failed Bin moves.** A photo no longer disappears from the Deletions list when moving it to the Bin failed.
- **Default remote port.** A new setup suggests port 5006 for the remote host, the Synology WebDAV HTTPS port, instead of a fixed external port. Saved settings are not changed. *(Server tab)*
- **Large text layouts.** File details, gallery review counts and server-addition actions have more room at accessibility text sizes. The welcome text scrolls above the setup buttons. Viewer and editor controls keep readable labels and support the large-content viewer. Changelog headings wrap at large text sizes. *(Photos, Sync, Deletions and Settings)*
- **Server check at start.** With inbound sync on, files deleted or added on the server are now checked in the background when the app starts, not only after the first sync. *(Sync tab)*
- **Compact and accessibility layout stability.** Live sync transfer telemetry now adapts into responsive tiers without clipping or linebreaking numbers on compact screens and large Dynamic Type. Deletion review button icons display correct contrast, and camera model counts maintain full width. *(Sync, Deletions and Settings)*

