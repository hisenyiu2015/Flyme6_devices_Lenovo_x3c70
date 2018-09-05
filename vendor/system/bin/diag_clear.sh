#!/system/bin/sh

#Copyright (c) 2015 Lenovo Co. Ltd	
#Authors: yexh1@lenovo.com

OUTDISK="/storage/sdcard0"


if [ -e $OUTDISK"/log_out" ]; then
    cd $OUTDISK	
    rm -rf log_out
fi       






