### Collect Filenames
Managing all the lists of Sources, Resources, … isn’t easy esp. if you organized your project with nested folders. What about simply executing something like “update all my lists” from Qt Creator ?

Read the story behind about [QtCreator External Tools and macOS Scripts](https://t1p.de/ekkeCMakeExtTools).

The lists of collected filenames are used in [qt\_add\_qml_modul()](https://t1p.de/ekkeCMakeQMLModule).

In this folder you can get:
* externaltools - the XML files from QtCreator ExternalTools
* macos_scripts - .sh Scripts called from externaltools
* qtws_example - collected lists for QtWS conference app

**externaltools**: adjust the path, where you stored the .sh Scripts, per ex. ```<path>/Applications/daten/_QT/QtCreator-ExternalTools/my_cpp_source_files.sh</path>``` To **copy externaltools** into your QtCreator, see ekke's blog post [Prepare QtCreator](https://t1p.de/ekkePrepareQtC).

**macos_scripts**: adjust the rules where to find your files and in ```all_my_files.sh``` adjust the pathes to ```.sh``` scripts.

**qtws_example**: demonstrates how the generated ```.cmake``` files are stored in ```ekkesLists``` (QtWS conference app example)

ekke's blog posts around CMake and Mobile Apps (Qt 6.7+): [ekke's CMake articles overview](https://t1p.de/ekkeCMakeMobileApps)

---
Disclaimer:
ekke started with no knowledge about CMake, also dealing with build systems isn't ekke's domain. If there's something wrong or can be done better/easier, please let ekke know about. (@ekke [Qt Discord Server](https://discord.gg/ykrgHtFGTA))

Limitations:
ekke’s CMakeLists.txt is specialized for mobile apps and projects with nested subfolders (QML, Resources) – typically QMake projects ported from Qt 5.15. See [ekke's Project Structure](https://t1p.de/ekkesProjectStructure).
For non-mobile QML apps take a look at Qt docs: [Building a QML Application](https://doc.qt.io/qt-6/cmake-build-qml-application.html)