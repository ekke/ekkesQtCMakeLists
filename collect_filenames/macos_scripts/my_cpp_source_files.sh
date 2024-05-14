#!/bin/bash

# *****************
# ekke (ekkes-corner.org)
# External Tool for QT Creator.
# Creates a list of source files in cpp folder to be used by qt_add_qml_module
# excludes files (main.cpp, .DS_Store) and also some folders (cpp/android and cpp/ios)
# if(ANDROID) my_android_cpp_source_files.sh will append files from cpp/android
# if(IOS) my_ios_cpp_source_files.sh and my_ios_objc_source_files.sh will append files from cpp/ios and ios/objc
# *****************

echo "*** collecting cpp source filenames ***"

FOLDER_PATH=$1
cd $FOLDER_PATH

# check if cpp exists
if [ ! -d ./cpp ]
then
    # ./cpp doesn't exist: exit
    # uncomment to always remove already existing file
    # rm -f my_cpp_files.cmake
    echo "*** cpp doesn't exist ***"
    exit 0
fi

# check if directory ekkesLists exists
if [ ! -d ./ekkesLists ]
then
    mkdir ./ekkesLists
fi

# find and save relative pathes, three different ways
# some examples you can use to adapt to your workflows

# find and exclude one or more files:
# find ./cpp -type f ! -name '.DS_Store' ! -name 'main.cpp' > tempListOfFiles.txt

# find and exclude files and also one folder:
# find ./cpp -type d -name 'android' -prune -o -type f ! -name '.DS_Store' ! -name 'main.cpp' -print > tempListOfFiles.txt

# find and exclude files and also some folders:
find ./cpp \( -type d -name 'android' -prune \) -o \( -type d -name 'ios' -prune \) -o -type f ! -name '.DS_Store' ! -name 'main.cpp' -print > tempListOfFiles.txt

# remove leading "./"
sed -i '' 's/^\.\///' tempListOfFiles.txt

# save filenames, add "set(my_cpp_files" as prefix and ")" as postfix
echo -e "set(my_cpp_files" >  ekkesLists/my_cpp_files.cmake
cat tempListOfFiles.txt >>  ekkesLists/my_cpp_files.cmake
echo -e ")" >>  ekkesLists/my_cpp_files.cmake

#cleanup
rm tempListOfFiles.txt

