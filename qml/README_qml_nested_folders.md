### qmldir - testing implicite import with nested QML folders

You organized your QML files into  nested directories, where subdirs are NO modules - similar to [ekke's project structure](https://t1p.de/ekkesProjectStructure) ? 

Then there are some problems. Read [qt\_add\_qml\_module](https://t1p.de/ekkeCMakeQMLModule) and see discussions at [Bug 111763](https://bugreports.qt.io/browse/QTBUG-111763)

**qmldir** only contains a single line:
```import Ekke.Apps.Main auto```

If you want to test if this helps to get implicit import of your module in QML subdirs, then change the import to your QML Module URI.
Copy qmldir into all your qml subdirs of your project, but not at the root level - the qmldir there will be generated into your build dir from tooling. With Qt 6.8 hopefully tooling will also generate all the qmldir into nested folders:
```import Ekke.Apps.Main auto```
```prefer :/qt/qml/Ekke/Apps/Main/```


ekke's blog posts around CMake and Mobile Apps (Qt 6.7+): [ekke's CMake articles overview](https://t1p.de/ekkeCMakeMobileApps)

---
Disclaimer:
ekke started with no knowledge about CMake, also dealing with build systems isn't ekke's domain. If there's something wrong or can be done better/easier, please let ekke know about. (@ekke [Qt Discord Server](https://discord.gg/ykrgHtFGTA))

Limitations:
ekke’s CMakeLists.txt is specialized for mobile apps and projects with nested subfolders (QML, Resources) – typically QMake projects ported from Qt 5.15. See [ekke's Project Structure](https://t1p.de/ekkesProjectStructure).
For non-mobile QML apps take a look at Qt docs: [Building a QML Application](https://doc.qt.io/qt-6/cmake-build-qml-application.html)