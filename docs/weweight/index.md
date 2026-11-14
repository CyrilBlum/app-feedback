# WeWeight

WeWeight keeps a weight log and a plan of self-chosen bulk, cut and maintenance phases. You can enter measurements yourself or import body weight from Apple Health. A chart shows measurements, a trailing average and your planned targets.

| Topic | Details |
| --- | --- |
| Platform | iPhone, iOS 18.5 or later |
| Interface | English |
| Account | None for local use. A GitHub account and repository are needed only for optional repository exports. |
| Storage | Measurements and goal phases are stored locally. The GitHub token is stored in the iOS Keychain. |
| Offline use | Local measurements, charts, goals and goal CSV files. GitHub actions and sending feedback need a connection. |

This guide describes the current implementation, including changes in version 1.2. The build installed on your device may differ; see the [changelog](changelog.md). Screenshots show version 1.2, build 9, captured on 04.11.2026 with fictional data on an isolated iPhone simulator. Minor controls may differ in later builds.

## Getting started

1. Open **Weight data**, then use **+** to add a measurement, or choose **Import Weight from Health** to read body-weight measurements after granting access.
2. On the main screen, choose a chart range or touch the chart to inspect a measurement.
3. Open **View and edit goal history**, then **+** to create a phase with your own dates and target.
4. Use the gear button for optional repository exports, feedback and **What's New**. The **?** button opens help.

The [feature guide](features.md) explains the numbered controls. [Data and exports](data-and-exports.md) covers Health copies, CSV files and GitHub.

!!! warning "Health and use"
    WeWeight is for personal tracking and planning. It does not provide medical advice, diagnosis or treatment. Measurements, trends, target bands and rate labels are not clinically validated assessments or recommendations. Consult a qualified healthcare professional about weight or health concerns, and do not change treatment based on this app. Keep separate copies of information you need. Availability and accuracy are not guaranteed; mandatory legal rights and liability remain unaffected.

[Product page](https://cblum.ch/en/projects/weweight/) and [privacy policy](https://cblum.ch/en/projects/weweight/privacy/).
