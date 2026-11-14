# Projects, exports and privacy

## Editable project or flattened image

A `.ssstudio` project contains the original image, annotations and backdrop configuration. Reopen it to change text, move markup or reveal hidden layers. Save a project when future editing matters.

A PNG or JPEG export is a composed image. Its annotations are flattened into the pixels. It does not preserve editable layers. Keep a separate project and original if you need to make changes later.

!!! warning "Covered content remains in a project"
    An editable project retains its original image. A recipient may remove blur, pixelation or covering annotations and reveal that original. Share a checked flattened export when the recipient should not receive the source content. Cropping or hiding a layer in the editor is not evidence that all source content was removed from a saved project.

## Save and Save As

**Command+S** saves to the opened file or the latest applicable save target. For an opened project, it saves the project. For a supported image, it can overwrite that image while retaining its format and resolution. Formats the overwrite path would damage, such as an animated GIF or multi-page TIFF, fall back to a save dialog.

**Command+Shift+S** opens **Save As** so you can choose another file. Save a separate copy before overwriting an original you still need. Saving a flattened export of an opened project keeps the project as the editable save target.

**Command+Option+S** saves a layered project. Check the destination and file type in the dialog. The normal save destination and naming settings are available in Settings.

## Clipboard and GIF

Copying puts the composed image on the system clipboard. Other apps and clipboard managers may read or retain it. The clipboard action does not save a project file.

Step-by-step GIF export reveals annotations in sequence. The export settings include the frame interval and a **Blur from first frame** option. Leave privacy-sensitive content covered throughout the animation, then inspect every frame of the resulting file. A final frame that looks safe does not establish that earlier frames are safe.

Blur and pixelation can leave information recognisable. Do not rely on them as a guarantee of irreversible redaction. Check text, image edges and any other visible identifying details before sharing.

## Optional upload

Configure an S3-compatible destination in **Settings › S3 Cloud** before using upload. It needs the destination and access credentials. Use access limited to the intended bucket or task, and keep the keys private.

Choosing the upload action sends the composed image to that configured storage and returns its URL. Whether a link is public, how long it remains available and how deletion works depend on the destination's configuration. Review these details before uploading private material. A local file deletion does not remove an uploaded copy.

## Accounts and licences

Local capture and editing do not require an app account. The direct-download edition asks for a licence key and contacts the licence service for activation and validation. Previously confirmed licences support offline launches. Licence settings provide deactivation. These details differ from the App Store edition.

See the [privacy policy](https://cblum.ch/en/projects/screensnipstudio/#privacy) for local processing, optional uploads, feedback and licence-service data. Store projects and exports securely when they contain private material. Keep independent backups of files you rely on.
