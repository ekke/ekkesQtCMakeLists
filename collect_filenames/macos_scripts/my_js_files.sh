#!/bin/bash

# *****************
# ekke (ekkes-corner.org)
# External Tool for QT Creator.
# Creates a list of js files to be used by qt_add_qml_module
# excludes .DS_Store
# *****************

echo "*** collecting js filenames ***"

FOLDER_PATH=$1
cd $FOLDER_PATH

# check if js exists
if [ ! -d ./js ]
then
    # ./js doesn't exist: exit
    # uncomment to always remove already existing file
    # rm -f my_android_cpp_files.cmake
    echo "*** js doesn't exist ***"
    exit 0
fi

# check if directory ekkesLists exists
if [ ! -d ./ekkesLists ]
then
    mkdir ./ekkesLists
fi

# find and save relative pathes
find ./js -type f ! -name '.DS_Store' > tempListOfFiles.txt

# remove leading "./"
sed -i '' 's/^\.\///' tempListOfFiles.txt

# save filenames, add "set(my_js_files" as prefix and ")" as postfix
echo -e "set(my_js_files" >  ekkesLists/my_js_files.cmake
cat tempListOfFiles.txt >>  ekkesLists/my_js_files.cmake
echo -e ")" >>  ekkesLists/my_js_files.cmake

#cleanup
rm tempListOfFiles.txt