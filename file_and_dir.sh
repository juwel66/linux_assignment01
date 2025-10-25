#!/bin/bash

#Create a directory  in the current users home directory

mkdir -p linux_fundamentals
echo " Directory Created 'linux_fundamentals' "

#Inside linux_fundamentals , create a subdirectory name scripts

cd linux_fundamentals
mkdir -p scripts
echo " Created subdirectory 'scripts' "

#Create an empty file  inside the linux_fundamentals directory

touch example.txt
echo " Created file 'example.txt' "

#copy example.txt to the script directory

cp example.txt scripts/
echo " Copy example.txt to the script directory"

#Move example.txt from linux_fundamentals to linux_fundamentals/backup
mkdir -p ~/linux_fundamentals/backup
mv example.txt  backup/
echo " Moved example.txt to backup"

#example.txt file permission
cd backup
chmod 644 example.txt
echo " Changed the permission wr-r--r--"

echo "Verify and display: "
ls -l
