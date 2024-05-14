# ekkesQtCMakeLists
ekke's CMakeLists.txt for mobile business apps (Android, iOS) with Qt 6.7+

## Warning
This CMakeLists.txt is specialized for mobile apps and projects with nested subfolders (QML, Resources) - typically QMake projects ported from Qt 5.15. For non-mobile QML apps take a look at [Building a QML Application](https://doc.qt.io/qt-6/cmake-build-qml-application.html)

### Background
ekke ported mobile apps from Qt 5.15 (QMake) to Qt 6.6+ (QMake). See: [ekkes Checklist](https://t1p.de/ekkeChecklist)

ekke supports up to 20 mobile business apps, but doesn't want to support 20 different CMakeLists.txt ;-)

While moving from QMake to CMake ekke's CMakeLists.txt example was created and will be used to build all of ekke's apps with CMake.
Hopefully this will help other devs with their CMakeLists.txt.

### CMake for Mobile

All the details about [CMake for Mobile (Qt 6.7+) Apps](https://t1p.de/ekkeCMakeMobileApps)

ekke's apps in Qt 5.15 are organized with nested folders for C++, QML, Resources. This isn't so easy to handle, as the folders do not contain any modules. Take a look at [ekkes Project Structure](https://t1p.de/ekkesProjectStructure) and [qt\_add\_qml_module](https://t1p.de/ekkeCMakeQMLModule) and discussions at [QTBUG-111763](https://bugreports.qt.io/browse/QTBUG-111763)

This Repo is an Add-On to ekke's blog articles about CMakeLists for mobile. Makes it easier to discuss issues and to follow changes. [ekke's CMakeLists.txt](https://t1p.de/ekkeCMakeLists) provides solutions HowTo deal with nested subdirs and Android / iOS with CMake.

### Download helpful files

Also some helpful files can be downloaded from here:
* ekke's CMakeLists.txt with comments
* ekke's CMakeLists.txt compact, no comments
* MSWord Formular 'ProjectInfo'
* 'ProjectInfo' example QtWS Conference App
* ios assets: Icons, Storyboard 
* ekke's ios/Info.plist
* some snippets for ios/Info.plist
* QtC external tools and macOS scripts to collect filenames
* ...

---
**W I P - All is work-in-progress.**
Not all variations in ekke's CMakeLists have been tested yet. stay tuned...

---
Disclaimer: ekke started with no knowledge about CMake, also dealing with build systems isn't ekke's domain. If there's something wrong or can be done better/easier, please let ekke know about