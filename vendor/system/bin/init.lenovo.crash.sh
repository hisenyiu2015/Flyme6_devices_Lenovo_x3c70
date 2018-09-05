#!/system/bin/sh

#Copyright (c) 2015 Lenovo Co. Ltd	
#Authors: yexh1@lenovo.com

LOGDISK=$(getprop persist.sys.lenovo.crash.path)

	if [ -s /sbin/busybox ]; then
		LOGSIZE=`/sbin/busybox du -shm $LOGDISK | /sbin/busybox awk '{print $1}'`       
	
		#if log size big than limit,ex. 20M, permit logging
		if [ $LOGSIZE -ge 20 ]; then	    
		         #echo $LOGSIZE $(getprop persist.sys.lenovo.log.limit)	          
		         exit 0		 
		fi
	fi



if [ $1 = KE ]; then

	setprop ctl.start last_dmsglog
else
	setprop ctl.start last_mainlog
	sleep 8
	setprop ctl.stop last_mainlog	
	if [ -s $LOGDISK"/mainlog" ]; then
	    	setprop ctl.start diag_system
	fi
fi




