# ekkesQtCMakeLists
ekke's CMakeLists.txt for mobile business apps (Android, iOS) with Qt 6.7+

ekke ported some mobile apps from Qt 5.15 (QMake) to Qt 6.6+ (QMake). See: [ekkes Checklist](https://t1p.de/ekkeChecklist)

### QMake to CMake

As next step: Port from QMake to CMake. All the details about [CMake for Mobile Qt 6.7+ Apps](https://t1p.de/ekkeCMakeMobileApps)

ekke's apps in Qt 5.15 uses nested subdirs for C++, QML, Resources. This isn't so easy to handle with CMake. Take a look at [ekkes Project Structure](https://t1p.de/ekkesProjectStructure) and [qt_add_qml_module](https://t1p.de/ekkeCMakeQMLModule) and discussions at [QTBUG-111763](https://bugreports.qt.io/browse/QTBUG-111763)

[ekke's CMakeLists.txt](https://t1p.de/ekkeCMakeLists) provides solutions HowTo deal with nested subdirs.

This Repo is an Add-On to ekke's CMakeLists.txt. Makes it easier to discuss issues and to follow changes.

### Download helpful files

Also some helpful files can be downloaded from here:
* ekke's CMakeLists.txt with comments
* ekke's CMakeLists.txt compact, no comments
* MSWord Formular 'ProjectInfo'
* 'ProjectInfo' example QtWS Conference App
* ios assets: Icons, Storyboard 
* ekke's ios/Info.plist
* some snippets for ios/Info.plist
* QtC external tools
* macOS scripts
* ...

---
W I P - All is work-in-progress. Not all variations in ekke's CMakeLists have been tested yet. stay tuned...