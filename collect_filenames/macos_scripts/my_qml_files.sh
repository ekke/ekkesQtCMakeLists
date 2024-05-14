#!/bin/bash

# *****************
# ekke (ekkes-corner.org)
# External Tool for QT Creator.
# Creates a list of qml files to be used by qt_add_qml_module
# excludes .DS_Store
# *****************

echo "*** collecting qml filenames ***"

FOLDER_PATH=$1
cd $FOLDER_PATH

# check if qml exists
if [ ! -d ./qml ]
then
    # ./qml doesn't exist: exit
    # uncomment to always remove already existing file
    # rm -f my_qml_files.cmake
    echo "*** qml doesn't exist ***"
    exit 0
fi

# check if directory ekkesLists exists
if [ ! -d ./ekkesLists ]
then
    mkdir ./ekkesLists
fi

# find and save relative pathes
find ./qml -type f ! -name '.DS_Store' ! -name 'qmldir' > tempListOfFiles.txt

# remove leading "./"
sed -i '' 's/^\.\///' tempListOfFiles.txt

# save filenames, add "set(my_qml_files" as prefix and ")" as postfix
echo -e "set(my_qml_files" > ekkesLists/my_qml_files.cmake
cat tempListOfFiles.txt >> ekkesLists/my_qml_files.cmake
echo -e ")" >> ekkesLists/my_qml_files.cmake

#cleanup
rm tempListOfFiles.txt