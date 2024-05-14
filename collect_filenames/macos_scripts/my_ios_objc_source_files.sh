#!/bin/bash

# *****************
# ekke (ekkes-corner.org)
# External Tool for QT Creator.
# Appends to the my_cpp_files all source files from ios/src folder
# excludes file .DS_Store 
# *****************

echo "*** collecting ios/src source filenames ***"

FOLDER_PATH=$1
cd $FOLDER_PATH

# check if ios/src exists
if [ ! -d ./ios/src ]
then
    # ./ios/src doesn't exist: exit
    echo "*** ios/src doesn't exist ***"
    exit 0
fi

# check if directory ekkesLists exists
if [ ! -d ./ekkesLists ]
then
    mkdir ./ekkesLists
fi

# find and save relative pathes
find ./ios/src -type f ! -name '.DS_Store' > tempListOfFiles.txt

# remove leading "./"
sed -i '' 's/^\.\///' tempListOfFiles.txt

# save filenames, add "set(my_cpp_files ${my_cpp_files}" as prefix and ")" as postfix
echo -e "set(my_cpp_files \${my_cpp_files}" >  ekkesLists/my_ios_objc_files.cmake
cat tempListOfFiles.txt >>  ekkesLists/my_ios_objc_files.cmake
echo -e ")" >>  ekkesLists/my_ios_objc_files.cmake

#cleanup
rm tempListOfFiles.txt

