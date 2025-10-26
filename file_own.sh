#!/bin/bash

#Create a directory named project in the current users directory

mkdir -p ~/project 
echo " created project directory "

#create a file inside the project directory

cd project && touch report.txt
echo " Created file report.txt inside project directory"
#Set Permission of report.txt to read and write for owner and read-only for group and other

chmod 644 report.txt
echo " Report file permission -rw--r--r"
ls -l report.txt

#set the permission of project directory to read,write and execute for owner and read and execute for the group and others
cd ..
chmod 755 project
echo "Directory permission changed"
ls -ld project
