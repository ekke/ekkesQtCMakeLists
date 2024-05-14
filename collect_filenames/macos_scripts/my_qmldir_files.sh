#!/bin/bash

# *****************
# ekke (ekkes-corner.org)
# External Tool for QT Creator.
# Creates a list of qmldir files to be used by qt_add_qml_module
# includes only qmldir files
# *****************

echo "*** collecting qmldir filenames ***"

FOLDER_PATH=$1
cd $FOLDER_PATH

# check if qml exists
if [ ! -d ./qml ]
then
    # ./qml doesn't exist: exit
    # uncomment to always remove already existing file
    # rm -f my_qmldir_files.cmake
    echo "*** qml doesn't exist -needed for qmldir files ***"
    exit 0
fi

# check if directory ekkesLists exists
if [ ! -d ./ekkesLists ]
then
    mkdir ./ekkesLists
fi

# find and save relative pathes
find ./qml -type f -name 'qmldir' > tempListOfFiles.txt

# remove leading "./"
sed -i '' 's/^\.\///' tempListOfFiles.txt

# save filenames, add "set(my_qmldir_files" as prefix and ")" as postfix
echo -e "set(my_qmldir_files" > ekkesLists/my_qmldir_files.cmake
cat tempListOfFiles.txt >> ekkesLists/my_qmldir_files.cmake
echo -e ")" >> ekkesLists/my_qmldir_files.cmake

#cleanup
rm tempListOfFiles.txt