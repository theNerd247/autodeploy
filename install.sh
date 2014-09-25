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

#install UI script (autodeploy)
cp autodeploy.sh $install_bindir
chmod uga+x $install_bindir"/autodeploy.sh"

#install scripts to install dir
mkdir $install_dir
cp -r src/* $install_dir
chmod uga+x $install_dir/*
