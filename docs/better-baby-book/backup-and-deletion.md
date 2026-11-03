# Sichern und Löschen

## Sicherung erstellen

<div class="screenshot-guide" markdown="1">

<div class="screenshot-guide__image" markdown="1">

![Export mit nummerierten Bedienelementen](img/export.webp){ width=260 }

</div>

<div class="screenshot-guide__details" markdown="1">

| Nr. | Element | Funktion |
| --- | --- | --- |
| 1 | ZIP-Archiv exportieren & teilen | Erstellt das Datenarchiv und öffnet anschliessend das Teilen-Menü. |
| 2 | PDF-Buch generieren & teilen | Erstellt das Fotobuch zur Ansicht oder zum Druck. |

</div>

</div>


Öffnen Sie «Profil › Daten-Export & Sicherung › Vollständiger Daten-Export» für das aktive Kind.

| Ausgabe | Zweck und Inhalt |
| --- | --- |
| «Vollständiges Daten-Archiv (ZIP)» | JSON-Daten für den Import, lesbare CSV-Tabellen und verfügbare Fotos und Sprachaufnahmen |
| «PDF-Präsentation / Fotobuch» | Erinnerungsalbum zur Ansicht, zum Teilen oder zum Drucken |

Wählen Sie «ZIP-Archiv exportieren & teilen» oder «PDF-Buch generieren & teilen» und sichern Sie das Ergebnis über das Teilen-Menü an einem vertrauenswürdigen Ort. Prüfen Sie die Datei nach dem Export. Fehlende Mediendateien kann die App nicht in ein Archiv aufnehmen.

!!! warning "Exportdateien sind unverschlüsselt"
    PDF-, ZIP-, JSON- und CSV-Dateien sind nicht durch das Familien-Passwort geschützt. Wer Zugriff auf einen Export hat, kann dessen Inhalt lesen. Die App kann verschickte oder anderweitig kopierte Dateien später nicht löschen.

Synchronisation gleicht auch Löschungen ab. Bewahren Sie deshalb zusätzlich eine unabhängige Sicherung auf. Das PDF ersetzt kein importierbares Datenarchiv.

## Ein Kind importieren

Wählen Sie «Profil › Kind aus Datei importieren (.zip / .json)» und öffnen Sie die Sicherung. Ein Import erhält ein neues Kinderprofil, damit ein bestehendes Profil nicht überschrieben wird. Prüfen Sie anschliessend Ereignisse und Medien, bevor Sie eine ältere Kopie entfernen.

Ein JSON-Import enthält keine separat gespeicherten Medien. Nutzen Sie für eine Sicherung mit verfügbaren Medien das ZIP-Archiv. Teilen Sie ein importiertes Profil nur dann erneut mit der Familie, wenn dies beabsichtigt ist.

## Unlesbare Datendateien

Kann die App eine lokale Datendatei nicht lesen, legt sie diese unverändert beiseite und zeigt einen Hinweis. Unter «Profil › Gesicherte Datendateien» können Sie die Kopie prüfen oder teilen. Ist sie mit der installierten Version lesbar, bietet die App «Wiederherstellen …» an. Dabei wird die aktuelle Datei ebenfalls gesichert, bevor sie ersetzt wird. Das Löschen einer solchen Kopie lässt sich nicht rückgängig machen.

## Was die Löschaktionen bewirken

Erstellen Sie vor einer Löschung eine Sicherung der Daten, die Sie behalten möchten. Lesen Sie im Bestätigungsdialog, ob Sie zusätzlich lokale Kopien entfernen.

| Aktion | Wirkung |
| --- | --- |
| Kinderprofil löschen | Bei einem geteilten Kind muss zunächst der Server die Löschung bestätigen. Andere aktualisierte Geräte übernehmen sie beim nächsten Abgleich. Bei einem Fehler bleibt das lokale Profil für einen erneuten Versuch erhalten. |
| «Abmelden» | Entfernt die Sitzung und gespeicherte Familien-Passwörter. Konto und Serverinhalte bleiben bestehen. Nach der Anmeldung brauchen Sie das Familien-Passwort erneut. |
| «Familie verlassen …» | Entfernt Ihre Mitgliedschaft. Bleiben Mitglieder, behalten sie die Familie und die geteilten Inhalte. Beim letzten Mitglied werden die Familie und ihre Serverinhalte nach Bestätigung gelöscht. Das Konto bleibt bestehen. |
| «Familiengruppe für alle löschen …» | Löscht die Familie und ihre geteilten Kinderpakete auf dem Server für alle Mitglieder. Die Benutzerkonten bleiben bestehen. Jedes Mitglied kann diese Aktion nach erneuter Passworteingabe und Bestätigung ausführen. |
| «Konto löschen …» | Löscht Ihr Konto und Ihre Mitgliedschaft. Geteilte Inhalte bleiben bei den anderen Mitgliedern. Beim letzten Mitglied werden auch die Familie und ihre Serverinhalte gelöscht. Lokale Kinderdaten bleiben erhalten, sofern Sie deren zusätzliche Löschung nicht wählen. |
| «Alle Daten zurücksetzen» | Setzt die lokalen App-Daten zurück. Verwenden Sie dies nicht als Ersatz für eine ausdrücklich bestätigte Löschung auf dem Server. |

Das Verlassen einer Familie und deren Löschung bieten ebenfalls eine gesonderte Wahl für das Entfernen betroffener lokaler Kinder. Kopien auf anderen Geräten, Exporte und Gerätesicherungen können bestehen bleiben. Daten aus dem Sync-Dienst können nach ihrer Löschung vorübergehend in Serversicherungen verbleiben. Die [Datenschutzerklärung](https://cblum.ch/apps/betterbabybook/privacy/) erläutert Aufbewahrung und Löschgrenzen.
