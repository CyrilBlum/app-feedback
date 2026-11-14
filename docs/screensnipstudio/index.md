# ScreenSnipStudio

ScreenSnipStudio is a Mac menu bar app for capturing images and adding editable markup. Use arrows, text, shapes, step numbers and other tools to explain an image, then copy it or save an export. Save a project when you want to edit its layers later.

| | |
| --- | --- |
| Platform | Mac, macOS 14 or later |
| Interface languages | English, German, French, Spanish, Japanese, Simplified Chinese, Traditional Chinese, Italian, Brazilian Portuguese and Korean |
| Account | No app account for local editing. The direct-download edition requires licence activation. S3 upload is optional |
| Storage | Captures, annotations and saved projects are handled locally unless you choose an upload or another sharing destination |
| Offline | Local editing, project files and exports work offline. Upload, feedback and licence activation need a connection |

This guide describes the version 1.0.1 implementation. An installed build may differ. See the [changelog](changelog.md). Local app captures and native view snapshots below use fictional content, with their provenance stated in the feature guide.

## Quick start

1. Open the menu bar item and choose a capture mode, **Open Image…** or **Paste from Clipboard**. For screen capture, grant the macOS screen-recording permission when requested.
2. Choose a tool in the floating toolbar, then draw on the image. Select an annotation to move it or change its attributes.
3. Use Undo if you need to reverse an edit. Open Layers to change annotation order or visibility.
4. Save an editable `.ssstudio` project if you want to retain the original image and layers.
5. Copy or export the final image, then inspect it before sharing. Use **Save As** when you want a separate file.

!!! warning "Check before sharing"
    Check exported images and every frame of a GIF for sensitive content. Blur and pixelation do not guarantee that text or other details cannot be recovered. Editable projects retain the original image and annotation layers, including content covered by markup. Keep an independent original before overwriting or cropping. Use is at your own risk. Liability is limited only where legally permitted, with mandatory rights and liability, including intent and gross negligence, preserved.

- [Features](features.md) explains capture, editing and output controls.
- [Projects, exports and privacy](projects-and-sharing.md) explains save behaviour and sharing risks.
- [Changelog](changelog.md) and [feedback](feedback.md) cover updates and support.

[Product page](https://cblum.ch/apps/screensnipstudio/) and [privacy policy](https://cblum.ch/en/projects/screensnipstudio/#privacy).
