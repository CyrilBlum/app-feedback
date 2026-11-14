# Changelog

The same changes are listed in the app under About › App Guide › What's New. Entries describe the app version shown; availability depends on the build installed.

## 1.3 (2026-11-13)

### Added

- Trophy for every summit. After a climb during navigation, a small trophy appears at the summit on the elevation profile. Tap it to see the climb's figures again. The trophy is kept with the saved route and the recorded ride, so it is there again when you load either later. (Navigation, route card, Saved Routes)
- Show and hide all routes. One entry in the map menu switches between showing all routes and rides and showing none, for example to remove the ride you just finished from the map. A new route or navigation shows them again. (Map menu › Routes)
- Optional Apple Maps services. In Settings › General › Apple Maps, disable the routing fallback and place search independently. With both off, routes use local Valhalla data and nearby search uses our own map data. If local routing fails, the app shows a marked straight-line estimate.
- Travel mode for simulations. Choose the travel mode through the symbol beside the simulation speed slider. Hiking uses a lower speed range with half-kilometre-per-hour steps. The route line stays unchanged.

### Changed

- Saved routes by tap and drag. Tap a saved route to show it on the map. To move a route into a folder, hold it and drag it onto the folder in the bar that appears at the bottom. (Saved Routes)
- All route options at once. The route options button shows travel mode, road preference and gradient preference together. One tap picks an option, without opening a submenu first. (Route options)
- Dragged route stays magenta. While you drag the route line, the new course is drawn in the route's own magenta instead of green. (Map)
- Map turns with the follow button. When the map follows your position and direction, it turns to your direction of travel at once, using the compass while you stand still. Switching to another mode turns it back to north. (Map)
- Clearer route line. The route is drawn in magenta with a white rim and small arrows in the direction of travel, so it stands out from orange and yellow roads. (Map)
- Elevation profile by swiping. During navigation, swipe the bottom bar up to show the elevation profile and down to hide it. The palette button only switches the grade colours of the route. (Navigation)
- Faster speed pedelec routes. For a speed pedelec, the app compares the proposed routes by its own riding time, in which the motor holds the speed on climbs. A shorter route over a hill is now chosen when it is faster, unless you prefer flat routes. The remembered travel mode and gradient preference are shown on the route options button. (Route options)

### Fixed

- More reliable backup and saved data. Failed backups can be retried, folder and pin changes and local deletions synchronise, and separate folders with the same name stay separate. Incoming routes preserve unrelated files. Unreadable pin and folder files are preserved with an error. Departure groups keep unknown platforms and handle directions around north. About links the online guide and describes worldwide coverage. Offline storage errors are reported. Folder edits ask before discarding changes, and the Go to actions fit compact screens. Missing German account, recovery and error texts are translated.
- Closing a route ends the simulation. Closing the route during a simulation left an empty elevation profile and the simulation controls on the map. Now both close with the route. (Simulation)
- Clearer route buttons and duration. Hiking routes show walking time. The navigation button says Start, and route action buttons keep their labels on one line.
- Departure loading and railway links. Departure loading has a time limit and can be retried after a failure. Railway buttons for Switzerland, Germany, France, Austria, Italy and the Netherlands use bundled country borders and work before departure data arrives.

## 1.2 (2026-11-11)

### Added

- Map of the whole world. The map now covers the whole world except Antarctica, with relief, contour lines, cycle and hiking routes and one-way arrows. Lake depths remain limited to Switzerland. (Map)
- Offline areas anywhere. Tap squares on a grid over the map and download them. The map, relief, contour lines and one-way arrows of these squares then work without a connection; outside them the map loads online as before. Zoom in for smaller squares, and remove squares you no longer need. When the map is updated, downloaded squares are renewed automatically on Wi-Fi. (Settings › General › Offline data › Offline areas)

### Changed

- Quick buttons at the top left. The group at the top left now holds location, route drawing and recording. Search has moved to the map menu. (Map)
- Notice for remote deletions. After a sync, a clear notice informs you when routes, pins or folders were removed on another device. (Settings › Account)

### Fixed

- Offline area grid while panning. The grid of the offline area map now stays visible while you move the map; before, newly visible parts appeared only after the move. (Settings › General › Offline data › Offline areas)
- Map menu icons and row layout. Icons in the map menu now stand out clearly against the popover background, and the search row stays on a single line. (Map menu)
- Account deletion in German. The confirmation word instruction in the account deletion sheet is now properly translated into German. (Settings › Account › Delete Account)
- Account forms on small screens. Account forms (sign in, register, change password) now scroll comfortably above the keyboard, and the Done button reliably dismisses the keyboard. (Settings › Account)
- Folder sync between devices. Folders preserve their identity when synced across devices, keeping route and pin assignments and avoiding duplicate folders. (Settings › Account)

## 1.1 (2026-11-06)

### Added

- Select several routes. Tap «Select» in Saved Routes to pick several routes, or all of them, and move them into a folder, share their GPX files or delete them together. (Saved Routes)
- Route options before navigation. Choose the travel mode, road and gradient preferences in the destination card or route proposal. Changes recalculate the routes; your choices are remembered. (Go to › Route options)
- Summit card after a climb. When you reach the top of a climb while navigating, a card shows the climb's figures: distance, elevation gain, average and maximum grade, time, average speed, VAM and, with sensors, average heart rate and power. (Navigation, Settings › Climb View)
- Choose the navigation figures. Tap a figure in the navigation card to switch between arrival time, time and distance remaining, speed, average speed, elevation gain remaining, elevation, grade and more. Choose the figures of each pane in Settings › Navigation Display. (Navigation, Settings › Navigation Display)
- Grade colours while navigating. The route line can show the grade colours of the climb view during any navigation, also to a place picked on the map. (Navigation)
- Optional account with end-to-end encrypted backup. Back up your saved routes, pins and folders to a dedicated private server and synchronise them between devices. Everything is encrypted on your iPhone before transmission; the server cannot read your routes or places. (Settings › Account & Backup, Saved routes, Saved pins)
- Password AutoFill for the account. When you register or sign in, iOS suggests a strong password and fills in saved credentials from Passwords or another password manager such as Proton Pass. (Settings › Account & Backup)
- Bluetooth sensors. Connect Bluetooth heart rate monitors and power meters, view live metrics in navigation and ride recording, and save them in GPX files. (Settings › Sensors, Navigation, Recording)
- Saved pins. Long-press the map or tap a symbol on it, such as a peak, a landmark or a stop, and tap «Save Pin». Your pins stay on the map with their symbol and name, in the colour of their folder. Saved Pins in the map menu lists them in the same folders as your routes. (Map, Map menu › Saved pins)
- Cycle route details. Tap a cycle route to see its name and number. The route is then shown with red dots and its elevation profile, which you can scrub like any route. Swiss routes open their SchweizMobil page, other routes in Europe their entry in Waymarked Trails. Route numbers are shown on the lines. (Map, Cycle routes)
- Unsaved routes survive closing the app. A route you are drawing, or a proposed «Go to» route you have not saved, comes back when the app was closed in between. It is removed once you save or discard it. (Route builder, Go to)
- Continue an interrupted navigation. If the app was closed during a navigation, it asks on the next start whether to continue it from where you were. (Navigation)
- The map opens where you left it. The map starts on the area you last looked at. If you are elsewhere and location access is on, it still centres on your position. (Map)
- Ascent while recording. The ride card now shows the ascent so far next to distance and time. (Ride card)
- Route calculation shows its progress. While a route is calculated, the route card says so. If no answer comes within 20 seconds, it shows a straight-line estimate and a Retry button. (Route card)
- Find a spot from the elevation profile. Touch the elevation profile of a route to see where that spot is: an orange line marks it in the profile, a marker on the map, and the map moves to it, for example to find where a climb starts. Tapping the route line on the map works the other way round. Tap the map beside the route to clear it. (Route card, main map)
- Discard a ride. When you end a ride, you can now discard it instead of saving it, for example after a test or a recording started by mistake. A discarded ride is deleted and does not appear in Saved Routes. (Ride dashboard, stop button)
- Departures at railway stations abroad. Tapping a station outside Switzerland now also shows its next departures where the Swiss timetable knows it, for example Munich, Paris or Milan; local buses abroad are mostly missing. The button below opens the national railway's timetable and ticket shop: SBB, DB, SNCF, ÖBB, Trenitalia or NS. Outside Switzerland it opens their home page; choose the route there. (Main map, stop bubble)
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
- What's New. This list of changes. After an update with new features, it opens once and shows only those. (About › App Guide)

### Changed

- Taller map menu. The map menu (top right) now uses most of the screen height, so Settings, About and the map options are reachable without scrolling. (Map menu)
- Copied recovery key is confirmed. After copying the recovery key, a message confirms that it is in the clipboard. (Settings › Account & Backup)
- Stop button while recording. While a ride is recorded, the record button at the top becomes a stop button, also during navigation. (Map)
- Map coverage for Europe. The topographic map now covers all of Europe with hillshading, contour lines and cycle routes. Lake depths and offline packages remain focused on Switzerland. (Map, Search)
- New app icon and position arrow. A new app icon: a red arrow on a contour map. Your position on the map uses the same arrow and points in your direction of travel. Before the first movement it shows as a red dot. (Home screen, Map)
- More room in the 3D view. The gesture hint at the top of the 3D view can be closed, so more of the landscape is visible. The «?» button shows it again. (Map › 3D view)
- Trail difficulty with hiking routes. The red and blue SAC difficulty bands under mountain paths now show together with the hiking routes overlay. (Map, Overlays)
- Departures split by direction. At transit stops with multiple platforms or opposite travel directions, upcoming departures are separated into distinct directional groups. (Map, Stop details)
- Rail lines in the public transport overlay. The public transport overlay now toggles railway, tram and rack railway lines along with station and stop icons. (Map, Overlays)
- Sheets close with ✕. Sheets that only show information close with the ✕ button at the top left, as in the iPhone's own apps. (Settings, About, Saved Routes, Route details, Map data)
- No sensors page. The Sensors page in Settings is gone. It only said that heart rate, cadence and power sensors are not available; it returns once the app can connect to sensors. (Settings)
- Faster route preview. Simulating a route now starts at 300 km/h, so the preview is over quickly. The slider below changes the speed. (Route card › Simulate)
- Search remembers your choices. The search opens again with the category, radius and other settings you used last, until the app is closed. It closes with ✕, can be lowered to half height so the map with the hits stays visible, says so when nothing is found, and moves the map to the hits when none of them is in view. (Search)
- Cancelling a drawn route asks first. Cancel in the route builder now asks before it throws away a route with two or more points. (Route builder)
- New welcome screens. The introduction shown at first launch now presents the app as it is today: map, route planning, navigation, riding and use without network. It also explains that routes are calculated on your iPhone when offline routing is installed. (First launch; About › App Guide)
- Drag the route and see it follow. While planning, put your finger on the route line and drag it: the route is recalculated through your finger as you move, so you see the new course before letting go. Where you release it, a new waypoint appears, already selected so you can delete it with the red button. (Route builder, proposed routes)
- Riding time follows the terrain. Riding and arrival times now count climbs and descents from the elevation profile: by bicycle at constant pedalling effort, by speed pedelec with motor help on climbs, hikes by the DIN 33466 hiking rule. Hiking and car routes have their own speeds (Settings › Riding time estimate, defaults 4 and 50 km/h) instead of the bicycle speed. (Route card, navigation, Settings)
- Turn instructions at the top. During navigation the next turn is shown at the top of the screen; remaining distance, arrival time and the controls stay at the bottom. (Navigation)
- Clearer route builder. All tools fit in one row. Tapping or dragging a waypoint selects it with a red delete button; the next tap only releases it. Taps continue from the last point, dragging the line adds a point in between, undo reverts the last drawing action (also by shaking the iPhone), and simulating is offered once the route is saved. (Plan)
- Screen stays on. With «Keep display on» (on by default) the screen no longer locks while Cycloputer is open, also without a recording. (Settings › General › Display)

### Fixed

- Elevation profile not cut off. An elevation profile that ends on its highest point no longer runs into the top edge of the card. (Route card)
- Swipe to delete a route. A route swiped to the left no longer disappears and reappears while the deletion is confirmed. (Saved Routes)
- German arrival instruction. The upcoming arrival maneuver no longer says you have already arrived while there is still distance to go. (Navigation)
- Storage and offline data errors. Failed pin and folder changes keep the previous data and show an error. Sync reports storage errors and ignores responses after sign-out. Offline package loading offers Retry, and a failed package replacement keeps the installed data. (Saved pins, folders, Account & Sync, Offline data)
- Colour preview matches the grade categories. The colour scheme in Settings › Climb View shows one colour per grade category, with its grade range, and the climb profile and route use the same colours. (Settings › Climb View)
- Smoother return to the app. Returning to Cycloputer during a ride or navigation no longer makes the map stutter, and long recordings redraw faster. (Map, Navigation)
- Loading a route no longer discards a drawn one. Loading or importing a route while you draw one now asks before the drawn route is discarded, and the route builder closes properly afterwards. Before, the drawn route was replaced without a question and the builder stayed open over the loaded route. (Saved Routes, Import GPX)
- Move to Folder in Saved Routes. The action menu of a saved route has «Move to Folder» again. (Saved Routes)
- Clearer messages and buttons. Short messages show a checkmark only when something worked, for example not when a ride was discarded. The two buttons on the route card have the same width also when they are stacked, and the climb figures in Saved Routes are translated. (Route card, Saved Routes)
- Climb figures fit on small iPhones. On an iPhone mini or with large text, the climb card's figures stacked and made the card so tall that the map buttons moved under the status bar. They now stay in one row and shrink instead. Long ride names in Saved Routes no longer break in the middle of a number. (Climb card, Saved Routes)
- Profile no longer jumps on out-and-back routes. Where a route used the same road out and back, the position line in the elevation profile could jump between both directions during a simulation. (Simulation)
- 3D view uses less memory. The 3D view could be closed by iOS for lack of memory when the map was tilted far towards the horizon. It now tilts up to 72° and keeps fewer map tiles in memory. (3D view)
- «Close loop» greyed out on a loop. Once the route ends where it starts, «Close loop» is greyed out instead of seeming to do nothing. (Route builder)
- Route kept after a simulation. Closing a simulation removed the route from the map, so a drawn route that was not yet saved was lost. The route now comes back, and you can keep editing or save it. (Simulation)
- Map stays where you moved it at launch. When the position arrived a few seconds after launch, the map could jump back to it although you had already moved it. Now it only centres on you if you have not moved the map yet. (Main map)
- No freeze at the first voice prompt. Starting a navigation could leave the screen blank while the iPhone loaded its speech voice; the voice now loads in the background and the first prompt follows as soon as it is ready. (Navigation)
- Route type in German. Saved Routes labels planned routes and rides in German when the app runs in German. (Saved Routes)
- No leftover climb card. After a navigation ends, no «Live climb» card or test route name («Furka») is left at the bottom; the badge appears only while you are on a climb. (Navigation, simulation)
- Riding time instead of «ETA». The route card shows the estimated riding time («44 min»); in German it was wrongly labelled «Ankunft». (Route card)
- Elevation profile to the end. The elevation profile now reaches the right edge; the crosshair on the map disappears when you lift your finger. (Route card)
- Account synchronisation and keyboard handling. Synchronised folders retain their identifier reliably across devices, remote removals show a notice, and account forms can be dismissed smoothly on compact screens. (Settings › Account & Backup)

## 1.0 (2026-11-04)

### Added

- Cycling map of Switzerland. A topographic map with relief, contour lines and cycle routes, light and dark, plus a 3D view of the terrain. (Main map)
- Route planning. Plan a route with waypoints, see distance, climb and an elevation profile, and save, import or export it as GPX. (Search and Routes)
- Turn-by-turn navigation. Spoken directions with street names and haptic cues along the planned route. (Route)
- Ride recording. Record a ride with distance, speed and climb; an interrupted recording is restored at the next launch. (Main map)
- Offline maps. Download the map and routing for Switzerland for rides without a connection. (Settings › Offline data)
