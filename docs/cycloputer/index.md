# Cycloputer

Cycloputer is an iPhone app for planning routes, following them and recording rides as GPX files. Its topographic map covers Switzerland, with relief, contour lines and cycle routes. No map is shown outside Switzerland.

| | |
| --- | --- |
| Platform | iPhone, iOS 26 or later |
| Languages | English and German, following the iPhone language |
| Account | No Cycloputer account required |
| Storage | Routes and recordings stay in the app on this iPhone |
| Without a connection | Downloadable Swiss map and routing packages, with [some online-only features](routing-and-data.md#offline-data) |

This guide describes the current app implementation. An installed App Store or TestFlight build may differ. Check [What's New](changelog.md) and the version available to you.

## Quick start

1. Browse the map or use the magnifying glass to search for a place. Use the map menu to open Settings and About.
2. Tap Plan, zoom to the roads you want to use and tap to add waypoints. Check the route line and its source before relying on it.
3. Choose Save in the editor to keep the route. Open Saved routes from the map menu to find it again, or use Import GPX route… to load a file.
4. With a route loaded, choose Start navigation to follow it, or Simulate to preview it without riding.
5. To record a ride, tap the red record control. Pause or resume from the recording dashboard. End ride asks for confirmation before saving the recording.

Location access is requested when you follow your position, navigate or record. You can plan routes without granting it.

!!! warning "Before riding"
    Stop in a safe place before interacting with the app. Check traffic, terrain, weather, closures and signs yourself. A route line does not establish that a route is safe or legally accessible. Maps, GPS, elevations and arrival estimates can be wrong or unavailable. Do not rely on Cycloputer for emergencies.

## Pages

- [Features](features.md) explains the map, route tools, files, navigation and settings.
- [Routing, offline data and recordings](routing-and-data.md) explains network use, recovery and data risks.
- [Changelog](changelog.md) lists changes in English and German.
- [Feedback and development](feedback.md) explains how to report problems or suggest changes.
