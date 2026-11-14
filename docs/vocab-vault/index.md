# Vocab Vault

Vocab Vault is an iPhone vocabulary trainer for your own word pairs. Build a library, review words with spaced repetition and inspect learning statistics. You can scan a printed list or choose a photo, then correct the recognised pairs before importing them.

| | |
| --- | --- |
| Platform | iPhone, iOS 26.2 or later in the current source |
| Interface languages | English, German, French, Spanish and Italian |
| Account | No app account required |
| Storage | Vocabulary and scheduling data in the local app database, learning preferences and XP on the device |
| Offline | Library editing and practice work offline. Scan recognition runs on the device. Selected cloud files, system features and feedback can need a connection |

This guide describes the current implementation of version 1.0. Your installed App Store or TestFlight build may differ. The screenshots show development build 10, captured on 14.11.2026 using fictional vocabulary. Check [What's New](changelog.md) against the version in **Settings › About**.

## Quick start

1. Open **Words** and use **Add Word**. Set the known and target languages, enter a word pair and save it.
2. Add any tags and an example sentence that help you recognise the word later.
3. Open **Learn**, choose the learning direction and start a session. Review the answer and use the available difficulty controls or answer feedback.
4. Return for due words. Correct answers move their next review further away. A mistake brings a word back sooner.
5. Open **Settings** to adjust your daily target or export vocabulary as CSV. Read the [CSV limitations](import-and-data.md#csv-transfer) before relying on an export.

!!! warning "Check learning content"
    OCR, meanings, generated examples, pronunciation and answer feedback can be wrong. Check important content against reliable sources. Scores do not certify proficiency, and learning or examination results are not guaranteed. Keep independent backups. CSV transfer does not restore all vocabulary metadata or progress. Use is at your own risk, with liability limited only where legally permitted and mandatory rights and liability preserved.

- [Features](features.md) explains learning, vocabulary and statistics.
- [Scanning, CSV and data](import-and-data.md) explains import review, storage and recovery.
- [Changelog](changelog.md) and [feedback](feedback.md) cover updates and support.

[Product page](https://cblum.ch/apps/vocabvault/) and [privacy policy](https://cblum.ch/en/projects/vocabvault/privacy/).
