# Changelog

The same list is in the app under Profil › Feedback und Entwicklung › Neuigkeiten. The app is in German, so locations are given with the app's German labels. Availability depends on the version installed.

## 1.4.2 (2026-11-03)

### Added

- **A profile for each child.** Enter name, date of birth, nicknames and photo and switch between several children. Each child's data stays separate. *(Profil)*
- **Milestones from the health booklet.** Predefined developmental steps and check-ups with weight, length and head circumference, plus a timeline of all events. *(Meilensteine und Timeline)*
- **Quick daily logging.** Record breastfeeding, bottles, nappies and measurements with one tap. Growth curves with the WHO references. *(Übersicht)*
- **Photo book and backup.** Create a PDF photo book or a ZIP archive with all data and media, and import a child from a backup again. *(Profil › Daten-Export & Sicherung)*
- **Encrypted family sync.** Selected children are encrypted on the device and shared with your family. Changes sync automatically, also after a time offline. *(Profil › Familie & Cloud-Synchronisation)*
- **What's new.** This list of changes. After an update with new functions it opens once and shows only those. *(Profil › Feedback und Entwicklung › Neuigkeiten)*
- **Feedback and development.** The feedback form goes straight to the developer and answers with a ticket number (e-mail remains possible). A link next to it leads to the public list of planned and ongoing work. *(Profil › Feedback und Entwicklung)*
- **Swiss growth curves.** After switching them on under Profil › Gesundheit, you choose under Wachstum between the WHO standards and the Swiss reference values 2025, on which the curves recommended by pädiatrie schweiz are based. The choice applies to weight and height; head circumference keeps the WHO values. *(Profil › Gesundheit, Übersicht › Wachstum)*
- **Sync progress.** During a sync you see which child and how many photos are being transferred, and you can cancel it without losing anything. Before the first sync the status shows «Ausstehend» (pending) instead of a green tick. *(Sync-Status, Profil › Familie & Cloud-Synchronisation)*

### Improved

- **History from the growth view.** Under Wachstum, the «Verlauf» button opens the list of measurements, already filtered to the curve shown. *(Übersicht › Wachstum)*
- **Exact percentile on the overview.** Weight, height and head circumference show the percentile at the time of measurement on the overview, for example «P42», instead of only «P3–P97». *(Übersicht)*
- **Capture date of photos.** Gallery and photo book show the capture date for photos of memories and quotes instead of the day they were added. A new memory takes the capture date of its photos as long as you have not chosen a date. For older photos this only works if the stored file still contains the date. *(Galerie, Erinnerungen)*
- **Photos are uploaded only once.** Photos and recordings are synced as separate encrypted files. Each is uploaded only once, other devices download only what they are missing, and a quick entry no longer transfers photos. All family devices need this version: older versions can no longer upload shared children afterwards. *(Profil › Familie & Cloud-Synchronisation)*
- **Notice for deleted children.** When a shared child is deleted on another family device, a notice with name and time appears instead of the child silently disappearing. *(Familien-Synchronisation)*
- **Export in the background.** ZIP archive and PDF book are created in the background, with progress for the ZIP archive and a cancel button. If the data changes afterwards, the file is created again instead of sharing an outdated one. *(Profil › Daten-Export & Sicherung)*
- **Editing a profile without data loss.** When you cancel, the app asks first if you have entered something. Removed photos and recordings are only deleted when you save, newly chosen ones are discarded when you cancel. Deleting a child also deletes its profile and nickname photos. *(Profil › Kind bearbeiten, Spitznamen)*
- **Resetting data.** Now also deletes all photos and recordings on this device and stops sharing. The server and other devices stay unchanged; the family's shared children are loaded again at the next sync. *(Profil › Alle Daten zurücksetzen)*
- **Sign-out with confirmation.** Before signing out, the app explains that shared children are removed from this device and that the family password must be entered again afterwards. *(Profil › Familie & Cloud-Synchronisation)*
- **Searches without results.** If a search finds nothing, «Keine Treffer» (no results) appears with a button to reset it, instead of looking as if there were no photos. In the gallery, search now also covers quotes. *(Meilensteine, Galerie)*
- **Growth view remembers your choice.** The chosen measure and zoom stay as they are while the app is running. *(Übersicht › Wachstum)*

### Fixed

- **Zoom buttons on small iPhones.** The buttons for the age range of the growth curves stay on one line on the iPhone mini and with large text, and can be scrolled sideways if needed. *(Übersicht › Wachstum)*
- **Very large text.** At the largest text sizes, the axis labels of the curves no longer overlap, the gallery shows two columns with readable titles, and the category in the feedback form appears as a list. *(Wachstum, Galerie, Feedback)*
- **Cropping photos.** The saved crop of a child or nickname photo now matches the frame while cropping exactly, also after zooming, moving and rotating. The photo fills the frame from the start. *(Profil › Kind bearbeiten)*
- **Age from the first month.** From one month on, the age showed only the days after the full weeks, for example «2 Monate 2 Tage» instead of «2 Monate 16 Tage». *(Übersicht und Profil)*
- **Readable with large text.** With very large text, the details under «Über» and the account row of family sync are stacked instead of cut off, category labels, milestone counters and the date in the timeline fit on small iPhones, and at the highest level the progress bar is full. Views that only display content all close with ✕. *(Profil, Meilensteine, Timeline)*
- **Entries with the same title are kept.** Photos and events without their own title are called «Foto-Moment» or «Ereignis». At app launch, such entries of a child were wrongly merged as duplicates, and one of them disappeared with its photos. This no longer happens. The app cannot bring back entries that already disappeared; for shared children they return with the next sync. *(Erinnerungen, Timeline)*
- **Children with the same name.** Shared children with the same name are no longer merged, which made devices drift apart unnoticed. A child created only on this device with the same name becomes the shared child. *(Familien-Synchronisation)*
- **Storage errors are reported.** If the app cannot save data, for example because storage is full, it says so instead of showing success. Photos that cannot be saved during a sync are downloaded again at the next sync. *(Ganze App)*
- **Import in one step.** An import is saved in one step and is faster with many entries. If it is interrupted, no half-imported child is left behind. *(Profil › Kind aus Datei importieren)*
- **Level display.** The percentage now reads «X% von Level N erreicht» (X% of level N reached); before, it wrongly said «bis nächstes Level» (to next level). *(Übersicht)*
- **Large text and colours.** With very large text, the date in the history, filters and labels under «Über» are no longer cut off or hyphenated. «Aktiv» is no longer red, the nappy has the same symbol in the history as in quick logging, and the sync subtitle reads «Ende-zu-Ende verschlüsselt, Server in Deutschland» (end-to-end encrypted, server in Germany). *(Profil, Verlauf)*
- **Family sync heading.** The heading of the encryption explanation no longer breaks with hyphens at very large text sizes. *(Profil › Familie & Cloud-Synchronisation)*
