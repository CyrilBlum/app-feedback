# Sync model

How Pixel Porter writes to the server and decides about deletions. Folder and file names starting with `synosync` come from the app's former name and are kept for compatibility.

## Server layout

```text
<destination>/
├── synosync_manifest.json                        ownership record
├── 2026/
│   └── 10/
│       ├── 2026-10-24_173000_<id>.heic           original
│       ├── 2026-10-24_173000_<id>.mov            Live Photo video, same base name
│       ├── 2026-10-24_173000_<id>_edited.<ext>   rendered edit
│       └── 2026-10-24_173000_<id>_raw.<ext>      RAW of a RAW+JPEG pair
└── ...
<bin path>/                                       Server Bin, set in the Server tab
└── 2026-11-03/                                   date of the move
    └── <id>_<original name>
```

- Originals only, no transcoding (`PHAssetResourceManager`): HEIC, JPEG, RAW/ProRAW, full-bitrate video.
- A Live Photo counts as one item; it is marked backed up only after both files are uploaded.
- File names use the capture time in the device time zone plus the PhotoKit identifier (`<id>`, `/` replaced by `_`), so they never collide.

## Manifest

`synosync_manifest.json` lists every uploaded item with its resources (role, relative path, original name, size, upload time, SHA-256 where computed) and every item in the Bin. The app deletes or moves a server file only if both its local record and the manifest name it as Pixel Porter's own. Review state is mirrored there and restored on a fresh install.

If the manifest or the destination folder disappears while local records still say "synced", the app treats the server as wiped, resets those records and uploads everything again.

## Transport

| Operation | WebDAV |
| --- | --- |
| Exists, list, size | `PROPFIND` (Depth 0 or 1) |
| Create folders | `MKCOL`, skipping top-level shares |
| Upload | `PUT` to a temporary name, then `MOVE` into place |
| Bin moves, restores | `MOVE` |
| Download (preview, restore, import) | `GET` |
| Purge, reset | `DELETE` |

TLS certificates are verified by default. Self-signed certificates must be allowed explicitly per connection. The local host is probed first with a 2 s timeout, then the remote host.

## Deletions from the iPhone

A server file is moved to the Bin only if all of these hold:

1. Full Photos access (not limited).
2. The library scan completed without error or cancellation.
3. **Mirror iPhone Deletions to Server** is on (default off).
4. **Require Manual Review** is off (default on), or you approved the batch in the Deletions tab.
5. The batch stays under both circuit-breaker limits (default 20 items and 10 % of the library).
6. Local record and manifest both identify the file.

A record changes to "in Bin" only after the server confirmed the `MOVE`. For Live Photos, each moved file is recorded, so a partly moved item stays pending and the next attempt finishes it. Items never uploaded are simply dropped from tracking.

The Bin keeps items for the retention period (default 30 days), then the app deletes them. Direct deletion and **Purge** bypass the Bin.

## Changes on the server

With inbound sync on, a scan compares the server listing with the manifest:

- **Missing on the server**: listed under Inbound. Re-upload, or delete from Apple Photos through the iOS dialog. A separate circuit breaker (same defaults) stops large batches.
- **Unknown files in the destination**: listed as Server Additions (Import, Keep, Clean Up). Bin folders inside the destination are excluded.

## Hidden photos

Hidden items are never uploaded. They count as present only while the Hidden album is unlocked; with Face ID or passcode lock on, iOS withholds them and they look deleted. Unlock or unhide them before approving deletions.

## Reset

Settings › Reset Sync State: **iPhone only** clears local records and re-uploads (server files stay). **Delete Server Backup** deletes the destination folder (refused for paths with fewer than two segments) and starts over. Apple Photos is never touched by a reset.
