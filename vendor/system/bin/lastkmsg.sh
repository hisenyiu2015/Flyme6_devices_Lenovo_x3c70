#!/system/bin/sh

#Copyright (c) 2015 Lenovo Co. Ltd	
#Authors: yexh1@lenovo.com

umask 022

MV_FILES_SHELL="/system/bin/mv_files.sh"

if [ $(getprop persist.sys.lenovo.log.path) = INVALID ]; then
        exit
fi

if [ $(getprop persist.sys.lenovo.log) = TRUE ]; then
	LOGDIR=$(getprop persist.sys.lenovo.log.path)
else  
        if [ $(getprop persist.sys.lenovo.shutdown) = TRUE ]; then
             setprop persist.sys.lenovo.shutdown FALSE
             exit  #do not save last kmsg, if the phone is normal shut down
        fi
        
        if [ ! -e /data/local/log/lastkmsg ]; then
             cd /data/local/log
             mkdir lastkmsg            
        fi  
        LOGDIR="/data/local/log/lastkmsg"   
	 
fi

LASTKMSG_LOGFILE=$LOGDIR"/lastkmsg"   #yexh1 



#save last kmesg
if [ -e /d/le_rkm ]; then
     $MV_FILES_SHELL $LASTKMSG_LOGFILE

     echo "the lastkmsg is saved at time: " > $LASTKMSG_LOGFILE
     date  >> $LASTKMSG_LOGFILE
    #$MV_FILES_SHELL $LASTKMSG_LOGFILE
    cat /d/le_rkm/last_kmsg | /sbin/busybox tr -s "[\000][\252]" >> $LASTKMSG_LOGFILE  #and remove 0x00 and 0xAA chars
	
fi
