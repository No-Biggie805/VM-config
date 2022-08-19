#!/bin/bash

path="/etc/libvirt/hooks"

#echo $path #prints a path 

cd $path
if pwd == $path; then
rm -rf {,.[!.],..?}*
fi