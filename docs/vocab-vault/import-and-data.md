# Scanning, CSV and data

## Scan a list

Open **Scan**, then choose **Scan with Camera** or **Choose from Photos**. Camera scanning needs camera access. The photo picker lets you select an image. Scan only material you are allowed to use.

The app uses on-device text recognition to propose word pairs. Before importing:

1. Check **Known Language (Left)** and **Target Language (Right)**. Use **Swap Columns** if they are reversed.
2. Read every pair and correct recognition or column errors. Add a missing row or delete an unsuitable one.
3. Select the pairs you want to keep. **Select All** and **Deselect All** change the selection together.
4. Choose **Import … Words** and read the import result. Existing or repeated pairs are skipped.

Recognition can mismatch columns or languages. Review the text against the original before using it for practice. Generated phrases use local templates and should also be checked.

## Unfinished review

Unimported reviewed pairs are saved as a local text draft. The app offers **Continue Reviewing** or **Discard** when a draft is found at a later launch. The draft contains reviewed text, selection and language choices. It does not keep the source image. Importing or discarding the review removes the draft.

A draft is not a saved vocabulary entry until imported. A temporary unsaved session cannot persist scan drafts. Keep the original source until the imported pairs have been checked.

## CSV transfer

Open **Settings › Data & Backup › Export Vocabulary to CSV** and choose a destination. The CSV contains native and foreign text, score and an example sentence. The file is readable, so protect it if the vocabulary contains private material.

**Import Vocabulary from CSV** reads word pairs from the first two columns. It accepts comma-separated rows with quoted fields and skips a native/foreign header. For example:

```csv
native,foreign
Book,Libro
Garden,Jardín
```

Keep each pair on one line. The importer reads text as UTF-8 or UTF-16. It skips pairs already in the library and repetitions in the file, comparing normalised case and whitespace. Accents remain significant. Read the result for imported and skipped counts.

CSV is a transfer format for pairs. Import does not restore scores, scheduling, tags, language settings or all example metadata. An exported score or example column is not restored by this importer. Keep independent device backups when those details matter.

## Local data and storage problems

The app has no account or app-operated vocabulary sync. Vocabulary and scheduling live in its local database. Device or cloud backups and destinations chosen for exports have their own behaviour. See the [privacy policy](https://cblum.ch/en/projects/vocabvault/privacy/) for processing details.

Deleting a word asks for confirmation. Resetting XP and streaks is a separate Settings action and keeps your vocabulary. Copies in exported files and device backups are independent of those actions.

If the library cannot open, **Storage Problem** offers **Try Again**, sharing a copy of the store files, or **Continue Without Saving**. The original files are kept. Unsaved mode displays a persistent warning, and new words there last only for that session. A successful retry transfers words entered during the temporary session into the reopened library. Preserve the original data and contact support before uninstalling or removing files. Store copies can contain your vocabulary, so share them only deliberately.
