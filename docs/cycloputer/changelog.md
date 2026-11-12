# Changelog

The same changes are listed in the app under About › App Guide › What's New. Entries describe the app version shown; availability depends on the build installed.

## 1.0 (2026-11-04)

### Added

- Speed pedelec mode. Choose «Speed pedelec» as travel mode in the route options or next to «Route» after picking a place: routes keep to paved ways at a higher cruising speed, and riding and arrival times use their own assumed speed (Settings › Riding time estimate, default 30 km/h). Restrictions for mopeds are not checked, so follow the signs. (Route builder › Options, «Go to»)
- Speed and elevation profile while navigating. The navigation card shows your current speed next to the remaining distance and arrival time, and the route's elevation profile with your position and the climb still ahead. The mountain button hides the profile. (Navigation)
- Pinch to zoom while navigating. Pinch the map during navigation to zoom in or out around your position; the navigation keeps the zoom you chose instead of returning to street level. (Navigation)
- Route folders. Create coloured folders in Saved Routes and move routes into them; routes show in their folder's colour on the map. (Saved Routes)
- Coloured elevation profile. The area under the elevation profile is coloured by the grade in your direction of travel, from yellow (flat or downhill) to dark red (steep). (Route card, route details)
- Name and folder while planning. The route card has a name field and a folder button: name the route and choose its folder while drawing; for a saved route the change applies at once. (Route card)
- Go to a place. Press and hold a place on the map, or pick a search result, and tap «Route»: Cycloputer proposes routes from your position, with alternatives to pick. Drag the line to reshape it (a waypoint appears where you let go), then start navigating. The route is only saved when you tap Save; off the route a new one is calculated. (Main map)
- Navigation on the Lock Screen. During navigation a Live Activity shows the next turn, its distance, the remaining distance and the arrival time on the Lock Screen and in the Dynamic Island. (Navigation)
- Battery saver. A black map with only roads, street names and your route, which uses less power on iPhones with an OLED display. (Settings › General › Display, Map menu › Map style)
- Feedback and development. A short form for problems, suggestions and questions that goes straight to the developer and answers with a ticket number (an e-mail stays possible), and a link to the public list of planned and ongoing work. (About › Feedback & Development)
- Cycling map of Switzerland. A topographic map with relief, contour lines and cycle routes, light and dark, plus a 3D view of the terrain. (Main map)
- Route planning. Plan a route with waypoints, see distance, climb and an elevation profile, and save, import or export it as GPX. (Search and Routes)
- Turn-by-turn navigation. Spoken directions with street names and haptic cues along the planned route. (Route)
- Ride recording. Record a ride with distance, speed and climb; an interrupted recording is restored at the next launch. (Main map)
- Offline maps. Download the map and routing for Switzerland for rides without a connection. (Settings › Offline data)
- What's New. This list of changes. After an update with new features, it opens once and shows only those. (About › App Guide)

### Changed

- Drag the route and see it follow. While planning, put your finger on the route line and drag it: the route is recalculated through your finger as you move, so you see the new course before letting go. Where you release it, a new waypoint appears, already selected so you can delete it with the red button. (Route builder, proposed routes)
- Riding time follows the terrain. Riding and arrival times now count climbs and descents from the elevation profile: by bicycle at constant pedalling effort, by speed pedelec with motor help on climbs, hikes by the DIN 33466 hiking rule. Hiking and car routes have their own speeds (Settings › Riding time estimate, defaults 4 and 50 km/h) instead of the bicycle speed. (Route card, navigation, Settings)
- Turn instructions at the top. During navigation the next turn is shown at the top of the screen; remaining distance, arrival time and the controls stay at the bottom. (Navigation)
- Clearer route builder. All tools fit in one row. Tapping or dragging a waypoint selects it with a red delete button; the next tap only releases it. Taps continue from the last point, dragging the line adds a point in between, undo reverts the last drawing action (also by shaking the iPhone), and simulating is offered once the route is saved. (Plan)
- Screen stays on. With «Keep display on» (on by default) the screen no longer locks while Cycloputer is open, also without a recording. (Settings › General › Display)

### Fixed

- No freeze at the first voice prompt. Starting a navigation could leave the screen blank while the iPhone loaded its speech voice; the voice now loads in the background and the first prompt follows as soon as it is ready. (Navigation)
- Route type in German. Saved Routes labels planned routes and rides in German when the app runs in German. (Saved Routes)
- No leftover climb card. After a navigation ends, no «Live climb» card or test route name («Furka») is left at the bottom; the badge appears only while you are on a climb. (Navigation, simulation)
- Riding time instead of «ETA». The route card shows the estimated riding time («44 min»); in German it was wrongly labelled «Ankunft». (Route card)
- Elevation profile to the end. The elevation profile now reaches the right edge; the crosshair on the map disappears when you lift your finger. (Route card)
