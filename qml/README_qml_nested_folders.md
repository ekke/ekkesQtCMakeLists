### qmldir - testing implicite import with nested QML folders

You organized your QML files into  nested directories, where subdirs are NO modules - similar to [ekke's project structure](https://t1p.de/ekkesProjectStructure) ? 

Then there are some problems. Read [qt\_add\_qml\_module](https://t1p.de/ekkeCMakeQMLModule) and see discussions at [Bug 111763](https://bugreports.qt.io/browse/QTBUG-111763)

Wait for 6.8 to test if tooling will generate qmldir into nested folders to get implicit import of your URL for all nested QML folders:
```import Ekke.Apps.Main auto```
```prefer :/qt/qml/Ekke/Apps/Main/```

*edit 2024-06-22:* 
tested 6.8 Beta1. ```qmldir``` files are generated, but it still doesn't work as expected.

see discussion at [Bug 126504](https://bugreports.qt.io/browse/QTBUG-126504), where you also find an example app to test nested QML files behaviour. 
also QtCreator 14.0.0 Beta1 using ```QML Language Server``` doesn't recognize all the new things.
stay tuned...

---
ekke's blog posts around CMake and Mobile Apps (Qt 6.7+): [ekke's CMake articles overview](https://t1p.de/ekkeCMakeMobileApps)

---
Disclaimer:
ekke started with no knowledge about CMake, also dealing with build systems isn't ekke's domain. If there's something wrong or can be done better/easier, please let ekke know about. (@ekke [Qt Discord Server](https://discord.gg/ykrgHtFGTA))

Limitations:
ekke’s CMakeLists.txt is specialized for mobile apps and projects with nested subfolders (QML, Resources) – typically QMake projects ported from Qt 5.15. See [ekke's Project Structure](https://t1p.de/ekkesProjectStructure).
For non-mobile QML apps take a look at Qt docs: [Building a QML Application](https://doc.qt.io/qt-6/cmake-build-qml-application.html)