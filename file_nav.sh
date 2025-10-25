#!/bin/bash

#list all contents of the current user's home directory.

ls /home > ~/home_list.txt
echo " Saved home contents "


#change the current directoy to /var/log,list its contents

cd /var/log && ls /var/log > ~/var_log.txt
echo " Changed directory and saved contents"

#find and display the path to the bash executable using the which command

echo " Display the path to the bash executable :"
which bash

#Find and display the current shell

echo " Display current shell: "
echo $SHELL


