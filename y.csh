#!/bin/tcsh

set y_path     = `alias y | cut -d" " -f2`
set y_dir      = `dirname $y_path`
set yread_path = "$y_dir/yread"

if ("$1" == "" || "$1" == "-h" || "$1" == "-l" || "$1" == "-r") then
    $yread_path $*
else
    set rv = `$yread_path $*`
    if ($rv != "") then
        cd $rv
    endif
endif
