### iOS Assets
From this folder you can download some helpful iOS assets - see also all the details in ekke's [iOS-specific blog article](https://t1p.de/ekkeCMakeIOS). 

From this folder you can download:

* Assets.xcassets, contains AppIcon.appiconset
* Info.plist
* MyLaunchScreen.storyboard
* MyStoryboardImage.png

**AppIcon.appiconset** contains a single-size App Icon. Replace ```AppIcon1024x1024.png``` with your Icon.

**Info.plist** ekke's default ```Info.plist```.

**MyLaunchScreen.storyboard** Storyboard shows ```MyStoryboardImage.png```.

**MyStoryboardImage.png** replace with your Image. 

### Copy files into your project
You can copy these files into your project: ${CMAKE\_CURREN\_SOURCE_DIR}/ios. As mentioned, please read ekke's [iOS-specific blog article](https://t1p.de/ekkeCMakeIOS). 


ekke's blog posts around CMake and Mobile Apps (Qt 6.7+): [ekke's CMake articles overview](https://t1p.de/ekkeCMakeMobileApps)

---
Disclaimer:
ekke started with no knowledge about CMake, also dealing with build systems isn't ekke's domain. If there's something wrong or can be done better/easier, please let ekke know about. (@ekke [Qt Discord Server](https://discord.gg/ykrgHtFGTA))

Limitations:
ekke’s CMakeLists.txt is specialized for mobile apps and projects with nested subfolders (QML, Resources) – typically QMake projects ported from Qt 5.15. See [ekke's Project Structure](https://t1p.de/ekkesProjectStructure).
For non-mobile QML apps take a look at Qt docs: [Building a QML Application](https://doc.qt.io/qt-6/cmake-build-qml-application.html)