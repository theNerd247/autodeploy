#!/bin/bash 

##############################
# program name
#
# author: theNerd247 (nharvey@spsu.edu)
# version: 0.0.1
# 
# autodeployment user interface scsript
# see github.com/thernerd247/autodeploy for more info 
##############################
install_files="post-receive autodeploy.conf"

function usage()
{
	echo -e "autodeploy_$version:
USAGE: autodeploy <Options>

Options: 
  --init initialize current directory to use autodeploy"
}

if [[ -z $1 ]]; then
	usage
	exit
fi


if [[ $1 == "--init" ]]; then
	for file in $install_files; do
		cp /usr/share/autodeploy/$install_file .git/hooks/
	done
fi
