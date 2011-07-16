#!/bin/bash

y_path=`alias y | cut -d"'" -f2 | cut -d " " -f2`
#y_path=`source ~/.bashrc; alias y | cut -d"'" -f2 | cut -d " " -f2`
#echo "$y_path"

y_dir=`dirname $y_path`
#echo "y_dir = $y_dir"

yread_path="$y_dir/yread"
#echo $yread_path

if [ "$1" = "" ] || [ "$1" = "-h" ] || [ "$1" = "-l" ] || [ "$1" = "-r" ]; then
    $yread_path $*
else 
    rv=`$yread_path $*`
    if [ "$rv" != "" ]; then
        #echo "cd $rv"
        cd $rv
    fi
fi
