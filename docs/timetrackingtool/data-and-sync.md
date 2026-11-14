# Calendars, sync and data

## Calendar subscriptions

On iPhone, open **Tools › Calendars › Add Calendar URL**. Add a feed you own or are authorised to access, assign it to a project and give it a recognisable name. The app accepts HTTPS, webcal and webcals addresses. Subscription URLs can contain access tokens. Keep the full address private even though the app normally displays a redacted version.

Open a feed to review events. You can track an individual event, reassign it or ignore it. The subscription is a source of suggestions, so review the imported time before billing or reporting.

For bulk import, mark a calendar as **Included in bulk import**, then choose **Import Completed Events**. It imports completed events from included calendars and skips already imported events. Future events are not imported. This is a user-triggered action, with no import at launch or in the background. It needs access to the feed. Read any failure messages, then check the resulting entries before retrying.

Deleting a subscription asks for confirmation. It removes that subscription from the app. Calendar subscriptions remain local to the iPhone and are excluded from account sync.

## Optional account and sync

Available from iPhone version 1.4 and in the Mac implementation. Open **Settings › Account & Sync**. Choose **Create Account**, enter an e-mail address and password, save the recovery key, confirm the e-mail link and sign in. On another device, sign in to the same account.

Projects, tags, tag categories and entries sync between signed-in devices. The app encrypts these records on the device before sending them to the service. See the [privacy policy](https://cblum.ch/en/projects/timetrackingtool/privacy/) for account metadata, retention and service processing.

Changes sync after editing and while the app is active. **Sync Now** requests a sync explicitly. If the status shows an error or pause, keep your local data and check the connection and account state before deleting or reinstalling anything. Offline changes wait for a later sync. A newer edit can replace an older edit made on another device.

## Recovery and account changes

Keep the recovery key in a password manager or another safe place. **Recover** can set a new password using that key while keeping synced records. Without it, **E-mail Me a Reset Code** offers an account reset that deletes the server's synced data. The app explains that device copies remain and can be uploaded again. Preserve a device copy or backup before choosing a reset.

While signed in, you can change the password, request an e-mail address change and display an available recovery key. Other devices must sign in again after a password change. Finish an address change through the confirmation link sent to the new address.

**Sign Out** keeps the local data on that device. Signing in again merges it with the account. **Delete Account** requires the password and confirmation. It removes the live account and its server records. Local device copies remain and stop syncing. Retention of backup copies is described in the privacy policy.

## Deletions and backups

Entry and project deletions can propagate to other devices while signed in. When a large deletion triggers a pause, inspect it before choosing **Delete on All Devices** or **Restore Them from the Server**. A large incoming deletion can offer **Delete Them Here Too** or **Keep Them and Upload Again**. These safeguards do not replace backups.

On iPhone, export CSV for an independent record of entries. On Mac, use [JSON backup export and import](mac.md#backup-and-import) for projects, tags and entries. Exported files are readable and need separate protection.

If the local store cannot be read, the app preserves it and opens a temporary in-memory session with a warning. Sync pauses in that session. New work there is not durably stored. Preserve accessible exports and seek support before removing app data.
