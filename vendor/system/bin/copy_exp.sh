#!/system/bin/sh

#Copyright (c) 2015 Lenovo Co. Ltd	
#Authors: yexh1@lenovo.com

	LOG="/storage/sdcard0/mtklog"
	if [ -e $LOG ]; then		
		AEEEXP="/data/aee_exp" 
		LASTLOG="/data/local/log/lastlog" 
		cd $LOG  && rm -fr aee_exp_new lastlog
		[ -d $AEEEXP ] && cp -a $AEEEXP $LOG"/aee_exp_new"  
		[ -d $LASTLOG ] && cp -a $LASTLOG $LOG/lastlog       
		exit 0
	fi

	LOG="/storage/sdcard0/log"
	if [ -e $LOG ]; then		
		LASTLOG="/data/local/log/lastlog" 
		cd $LOG  && rm -fr lastlog
		[ -d $LASTLOG ] && cp -a $LASTLOG $LOG/lastlog 
	fi


