# How to use Pixel Porter

The same guide is in the app under Settings › User Guide & Workflow › How
Pixel Porter Works.

## Getting started

**Allow Photos access.** Full access is needed to back up the whole library
and to mirror deletions. With limited access, only the selected photos are
shown and deletions are never mirrored.

**Connect your server (optional).** In the Server tab, enter the WebDAV
address, a user with access to one photo folder only, and the destination
path. You can add a local address for home Wi-Fi and a remote one for
outside; the app tries the local one first. HTTPS is on by default.
Passwords are stored in the iPhone's Keychain.

Examples of WebDAV addresses:

- Synology NAS with the WebDAV Server package: `https://<nas>:5006`
- Nextcloud: `https://<host>/remote.php/dav/files/<user>/`

**Avoid duplicates.** If another app already backs up this iPhone to the same
server, turn that backup off or use a different folder.

## Photos tab

**Browse and filter** by year, camera, media type, review status or hidden
photos. Badges show which items are on the server.

**Review your library.** Mark photos as reviewed one by one, or tap Mark Done
to mark a whole day, month or year.

**Mark and delete.** Mark photos for deletion while browsing, then delete
them together. iOS always asks for confirmation before anything leaves Apple
Photos.

**Compare, edit and share.** Select two or more similar photos to compare
them side by side. Adjust, crop, rotate or trim videos, add favorites, hide
photos and share originals.

## Sync tab

**Sync** scans the library, uploads new and changed originals and lists
deletions for review. **Rescan Only** checks without uploading, and
**Dry-Run Preview** shows what a sync would do.

**Server History** shows what was uploaded or moved to the Server Bin,
grouped by day.

**Server Additions** lists files in the backup folder that this iPhone did
not upload. You can import them into Apple Photos, keep them on the server or
move them to the Server Bin.

**Free up space** removes local copies of photos that are on the server and
marks them as offloaded. You can restore them to Apple Photos later. With
iCloud Photos, removing them on the iPhone also removes them from your other
devices.

## Deletions tab

**Photos deleted on the iPhone.** Their server copies are listed here. You
decide whether to keep them on the server or move them to the Server Bin.
With mirroring on and review off, sync moves them automatically.

**Server Bin.** A dated folder on your server. Items stay there for the
retention period set in Settings (30 days by default) and can be restored
until then.

**Photos deleted on the server.** With inbound sync on, files removed from
the server appear here. Upload them again, or delete the photo from Apple
Photos after the iOS confirmation.

**Circuit breaker.** If unusually many deletions appear at once (by default
more than 20 items or 10 % of the library), sync stops and waits for your
approval. The limits are set in Settings.

## Settings

Turn deletion mirroring and manual review on or off, set the Bin retention
and circuit-breaker limits, skip cameras you do not want uploaded, and turn
on weekly sync or review reminders. The diagnostic log can be exported; check
it before sharing, as it contains file names, paths and server details.
