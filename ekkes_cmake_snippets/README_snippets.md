### Customizing Info.plist
From this folder you can download some helpful (iOS-specific) files to customize your Info.plist. Unfortunately not all variables can be set as XCODE_ATTRIBUTE... as explained in ekke's [iOS-specific blog article](https://t1p.de/ekkeCMakeIOS). 

To make it easier to insert properties into your Info.plist, here are some files containing code-snippets:

* cmake\_ios\_orientation.txt
* cmake\_ios\_sharing.txt
* cmake\_ios\_usage_descriptions.txt

**orientation** contains some settings for ```<key>UISupportedInterfaceOrientations</key>``` and ```<key>UIRequiresFullScreen</key>```.

**sharing** is helpful if you share files with other apps. Then you must describe in Info.plist the ```DocumentTypes``` with ```<key>CFBundleDocumentTypes</key>```

**usage_descriptions** is specific for ekke's projects and provides some alternate descriptions. Apple requires Usage Descriptions per ex. for Bluetooth LE and Camera. These descriptions are set with some default values for ekke's projects in ekke's CMakeLists.txt. More Infos about [iOS Info.plist Usage Descriptions](https://t1p.de/ekkeCMakeIOS).

### Copy folder into your project
If you copy the folder "ekkes\_cmake\_snippets" into your project, then it's easy to copy text, because the files are visible in QtCreator Project View.


ekke's blog posts around CMake and Mobile Apps (Qt 6.7+): [ekke's CMake articles overview](https://t1p.de/ekkeCMakeMobileApps)

---
Disclaimer:
ekke started with no knowledge about CMake, also dealing with build systems isn't ekke's domain. If there's something wrong or can be done better/easier, please let ekke know about. (@ekke [Qt Discord Server](https://discord.gg/ykrgHtFGTA))

Limitations:
ekke’s CMakeLists.txt is specialized for mobile apps and projects with nested subfolders (QML, Resources) – typically QMake projects ported from Qt 5.15. See [ekke's Project Structure](https://t1p.de/ekkesProjectStructure).
For non-mobile QML apps take a look at Qt docs: [Building a QML Application](https://doc.qt.io/qt-6/cmake-build-qml-application.html)