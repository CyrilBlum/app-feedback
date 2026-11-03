# Routing, offline data and recordings

## Route calculation

Cycloputer first tries the downloaded routing data. A successful local calculation takes place on the iPhone. If local routing cannot produce a route, the app tries Apple Maps directions, which send the waypoints to Apple. Bicycle mode requests cycling directions. Sections without directions remain marked straight-line estimates.

Downloading routing data therefore does not provide a switch that forbids every Apple request. Check the route source shown in Route details. A GPX file supplies its own route line and is not automatically matched to roads.

The elevation profile uses elevations from the GPX file or Cycloputer's terrain model, with its source shown. It is not a survey of current conditions. The ETA uses the assumed speed selected in Settings › General.

## Offline data

Open Settings › General › Offline data. Map of Switzerland and Routing for Switzerland are separate downloads. Download them over Wi-Fi before departure and wait for Installed. The app checks downloaded files before installation. Update appears when a newer package is available.

| Function | With downloaded data |
| --- | --- |
| Flat map, nearby category search, street names and terrain elevations | Use the installed map package |
| Local route calculation | Uses the routing package when it can produce a route |
| 3D view and map legend | Still need a connection |
| Apple place/address search | Still needs a connection |
| Public transport departures and timetable links | Still need a connection |

The map package serves its map content locally instead of requesting those map areas from the tile server. It does not disable the online features above. Removing a package asks for confirmation. After removal, the app uses online data again until you download the package anew.

Map coverage is Switzerland only. The data can be incomplete or out of date. Try the functions needed for your ride before setting off without a connection.

## Recording and interruption recovery

Cycloputer asks for While Using location permission when needed. A recording started in the foreground can continue with the app in the background, subject to GPS reception, permissions, battery and iOS availability. Keep an eye on the recording indicator and any error messages.

Pausing and resuming starts a new track segment. The app does not join the pause gap into a measured riding distance. A write error pauses the ride and shows an alert. Ending a ride with insufficient recorded points leaves no empty route.

After an interruption, the app attempts to reopen the recording file and restore its recorded points and metrics. A recent running recording can resume automatically when location permission is still available. After a longer interruption, or without location permission, it restores paused and may ask whether to continue or end the ride. A recording that was already paused stays paused. No points are recovered for time when the app was not recording.

!!! warning "Keep copies of routes you need"
    Recovery is not a backup guarantee. Missing or damaged files and storage failures can prevent recovery. Share important GPX files to a separate location. Confirmed deletion of a saved route removes its GPX file from the iPhone and cannot be undone in the app.

## Privacy and storage

Routes, recordings and settings are stored locally. No Cycloputer account is required. Online map and elevation requests go to Cycloputer's map server, which can see the requested map areas. Apple place searches include the search text and map area. When a stop's departures are opened, the transport service receives that public stop's coordinates and identifier.

The app does not encrypt GPX or KML files. Recordings can include precise coordinates, elevations and timestamps. Share them only with people or services you intend to give that information to. There is no automatic route-retention expiry in the app.

Settings › General › Clear Temporary Files & Map Cache removes temporary KML exports and cached map data while keeping saved GPX routes. This is not a promise of secure erasure from backups or copies held by other apps.

The app's About screen contains the full safety and liability notice and a link to its privacy policy. Ride and performance information is general information, not medical advice or a fitness assessment. Mandatory legal rights and liability remain unaffected.
