#!/bin/bash

# *****************
# ekke (ekkes-corner.org)
# External Tool for QT Creator.
# Creates lists of cpp / images / data-assets / qml / js files to be used by qt_add_qml_module
# *****************

FOLDER_PATH=$1

# QML and JS
/Applications/daten/_QT/QtCreator-ExternalTools/my_qml_files.sh $FOLDER_PATH
/Applications/daten/_QT/QtCreator-ExternalTools/my_js_files.sh $FOLDER_PATH

# SOURCES
# Hint: the order is important. my_cpp_source_files.sh creates the list
# my_android_cpp_source_files.sh will be appended if(ANDROID)
# similar if(IOS) for my_ios_cpp_source_files.sh and my_ios_objc_source_files.sh
/Applications/daten/_QT/QtCreator-ExternalTools/my_cpp_source_files.sh $FOLDER_PATH
/Applications/daten/_QT/QtCreator-ExternalTools/my_android_cpp_source_files.sh $FOLDER_PATH
/Applications/daten/_QT/QtCreator-ExternalTools/my_ios_cpp_source_files.sh $FOLDER_PATH
/Applications/daten/_QT/QtCreator-ExternalTools/my_ios_objc_source_files.sh $FOLDER_PATH

# RESOURCES: Images and Data-Assets
/Applications/daten/_QT/QtCreator-ExternalTools/my_image_files.sh $FOLDER_PATH
/Applications/daten/_QT/QtCreator-ExternalTools/my_data-assets_files.sh $FOLDER_PATH

