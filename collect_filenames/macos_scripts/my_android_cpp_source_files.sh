#!/bin/bash

# *****************
# ekke (ekkes-corner.org)
# External Tool for QT Creator.
# Appends to the my_cpp_files all source files from cpp/android folder
# excludes file .DS_Store 
# *****************

echo "*** collecting cpp/android source filenames ***"

FOLDER_PATH=$1
cd $FOLDER_PATH

# check if cpp/android exists
if [ ! -d ./cpp/android ]
then
    # ./cpp/android doesn't exist: exit
    echo "*** cpp/android doesn't exist ***"
    exit 0
fi

# check if directory ekkesLists exists
if [ ! -d ./ekkesLists ]
then
    mkdir ./ekkesLists
fi

# find and save relative pathes
find ./cpp/android -type f ! -name '.DS_Store' > tempListOfFiles.txt

# remove leading "./"
sed -i '' 's/^\.\///' tempListOfFiles.txt

# save filenames, add "set(my_cpp_files ${my_cpp_files}" as prefix and ")" as postfix
echo -e "set(my_cpp_files \${my_cpp_files}" >  ekkesLists/my_android_cpp_files.cmake
cat tempListOfFiles.txt >>  ekkesLists/my_android_cpp_files.cmake
echo -e ")" >>  ekkesLists/my_android_cpp_files.cmake

#cleanup
rm tempListOfFiles.txt

