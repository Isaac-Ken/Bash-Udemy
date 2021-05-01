! /bin/bash


#Desc:This script backsup all the files in your home directory and save them all in a .tar archive
#Usage:/backup_script

tar -cvf ~/bash_course/my_backup_"$(date +%d-%m-%Y_%H-%M-%S)".tar ~/* 2>/dev/null
exit 0
