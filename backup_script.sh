! /bin/bash


#Desc:This script backsup all the files in your home directory and saves them in a .tar archive as my_backup_dd-mm-yyyy_HH-MM-SS to the ~/bash_course folder
#c tells tar to create a new archive,
#v sets the screen output to verbose
#f points to the filename to give the archive.
#The * is what tells tar to include all files and local directories recursively.
#2>/dev/null will filter out the errors so that they will not be output to your console.
#Usage:/backup_script

tar -cvf ~/bash_course/my_backup_"$(date +%d-%m-%Y_%H-%M-%S)".tar ~/* 2>/dev/null
exit 0
