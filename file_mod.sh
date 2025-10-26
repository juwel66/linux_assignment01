#!/bin/bash

#Create a file in the current users home directory

touch ~/example.txt 
echo "  File created 'example.txt' "

#Create a new user without home directory and shell  nameed student
sudo useradd -M student
echo " User created 'Student' without home directory"

#Change the owner of example.txt to a user named student

sudo chown student example.txt
echo " === File owner changed ==="
ls -l example.txt

#Change the group of example.txt to a group named student
sudo chgrp student example.txt
echo " === Changed group named ==="
ls -l example.txt

