#!/bin/bash

# *****************
# ekke (ekkes-corner.org)
# External Tool for QT Creator.
# Creates a list of files in images folder to be used by qt_add_qml_module
# excludes .DS_Store
# *****************

echo "*** collecting filenames from images ***"

FOLDER_PATH=$1
cd $FOLDER_PATH

# check if images exists
if [ ! -d ./images ]
then
    # ./images doesn't exist: exit
    # uncomment to always remove already existing file
    # rm -f my_image_files.cmake
    echo "*** images doesn't exist ***"
    exit 0
fi

# check if directory ekkesLists exists
if [ ! -d ./ekkesLists ]
then
    mkdir ./ekkesLists
fi

# find and save relative pathes
find ./images -type f ! -name '.DS_Store' > tempListOfFiles.txt

# remove leading "./"
sed -i '' 's/^\.\///' tempListOfFiles.txt

# save filenames, add "set(my_image_files" as prefix and ")" as postfix
echo -e "set(my_image_files" >  ekkesLists/my_image_files.cmake
cat tempListOfFiles.txt >>  ekkesLists/my_image_files.cmake
echo -e ")" >>  ekkesLists/my_image_files.cmake

#cleanup
rm tempListOfFiles.txt