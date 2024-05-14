#!/bin/bash

# *****************
# ekke (ekkes-corner.org)
# External Tool for QT Creator.
# Creates a list of files in data-assets folder to be used by qt_add_qml_module
# excludes .DS_Store
# *****************

echo "*** collecting filenames from data-assets ***"

FOLDER_PATH=$1
cd $FOLDER_PATH

# check if data-assets exists
if [ ! -d ./data-assets ]
then
    # ./data-assets doesn't exist: exit
    # uncomment to always remove already existing file
    # rm -f my_data-assets_files.cmake
    echo "*** data-assets doesn't exist ***"
    exit 0
fi

# check if directory ekkesLists exists
if [ ! -d ./ekkesLists ]
then
    mkdir ./ekkesLists
fi

# find and save relative pathes
find ./data-assets -type f ! -name '.DS_Store' > tempListOfFiles.txt

# remove leading "./"
sed -i '' 's/^\.\///' tempListOfFiles.txt

# save filenames, add "set(my_data-assets_files" as prefix and ")" as postfix
echo -e "set(my_data-assets_files" >  ekkesLists/my_data-assets_files.cmake
cat tempListOfFiles.txt >>  ekkesLists/my_data-assets_files.cmake
echo -e ")" >>  ekkesLists/my_data-assets_files.cmake

#cleanup
rm tempListOfFiles.txt