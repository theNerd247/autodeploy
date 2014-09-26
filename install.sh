#!/bin/bash
##############################
# program name
#
# author: theNerd247 (nharvey@spsu.edu)
# version: 0.0.1
# 
# license: GPLv2 see LICENSE
##############################
install_dir="/usr/share/autodeploy/"
install_bindir="/usr/bin"

install_files="post-receive autodeploy.conf"

#install UI script (autodeploy)
echo "installing to executable to $install_bindir"
cp autodeploy $install_bindir
chmod uga+x $install_bindir"/autodeploy"

#install scripts to install dir
mkdir -p $install_dir
for file in $install_files; do
	echo "installing files to $install_dir"
	cp -r src/$file $install_dir
done

#make installed files executable
chmod uga+x $install_dir/post-receive
