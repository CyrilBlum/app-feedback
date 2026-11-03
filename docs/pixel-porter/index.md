# Pixel Porter

Mirrors the iPhone photo library to a self-hosted WebDAV server, with reviewed, reversible deletion handling in both directions. No vendor cloud, no account, no analytics, no third-party SDKs.

| | |
| --- | --- |
| Platform | iPhone, iOS 17+ |
| Server | Any WebDAV server over HTTPS: Synology (WebDAV Server package), Nextcloud, ownCloud, others |
| Data path | iPhone → your server directly. Nothing passes through a developer server |
| Local data | Sync records and logs in the app container; server password in the Keychain; host, user and paths in app settings |
| Without a server | Photo browser, review tool and editor |
| Links | [Product page](https://cblum.ch/apps/pixelporter/), [privacy policy](https://cblum.ch/apps/pixelporter/privacy/), [changelog](changelog.md), [feedback](feedback.md) |

## Pages

- [Features](features.md): every screen with numbered annotations.
- [Sync model](sync-model.md): server layout, upload, deletion rules, safety limits.
- [Changelog](changelog.md): all versions, same list as in the app.

## Quick start

1. Grant full Photos access. Limited access shows only the selected items and disables deletion mirroring.
2. Server tab: WebDAV host and port, a user restricted to one photo folder, destination path, Bin path. HTTPS stays on.
3. Sync tab: **Sync**. The first run uploads the whole library; later runs upload only new or changed resources.
4. Settings: choose how deletions are handled (default: listed for review, never applied automatically).

!!! warning "Not an independent backup"
    A mirror can propagate a deletion to the server. Keep a separate, restorable copy before offloading or deleting. Use at your own risk.
