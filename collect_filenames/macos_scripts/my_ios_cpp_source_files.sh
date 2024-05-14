#!/bin/bash

# *****************
# ekke (ekkes-corner.org)
# External Tool for QT Creator.
# Appends to the my_cpp_files all source files from cpp/ios folder
# excludes file .DS_Store 
# *****************

echo "*** collecting cpp/ios source filenames ***"

FOLDER_PATH=$1
cd $FOLDER_PATH

# check if cpp/ios exists
if [ ! -d ./cpp/ios ]
then
    # ./cpp/ios doesn't exist: exit
    echo "*** cpp/ios doesn't exist ***"
    exit 0
fi

# check if directory ekkesLists exists
if [ ! -d ./ekkesLists ]
then
    mkdir ./ekkesLists
fi

# find and save relative pathes
find ./cpp/ios -type f ! -name '.DS_Store' > tempListOfFiles.txt

# remove leading "./"
sed -i '' 's/^\.\///' tempListOfFiles.txt

# save filenames, add "set(my_cpp_files ${my_cpp_files}" as prefix and ")" as postfix
echo -e "set(my_cpp_files \${my_cpp_files}" >  ekkesLists/my_ios_cpp_files.cmake
cat tempListOfFiles.txt >>  ekkesLists/my_ios_cpp_files.cmake
echo -e ")" >>  ekkesLists/my_ios_cpp_files.cmake


#cleanup
rm tempListOfFiles.txt

