#!/system/bin/sh

#Copyright (c) 2015 Lenovo Co. Ltd	
#Authors: yexh1@lenovo.com

#LOGDISK="/data/local/log/lastlog"
LOGDISK=$(getprop persist.sys.lenovo.crash.path)

RESULT_MINI=$LOGDISK"/kernel_mini.txt"
RESULT_TXT=$LOGDISK"/kernel.txt"

DIAGNOSE_MINI=$LOGDISK"/k_temp_mini.txt"
DIAGNOSE_TXT=$LOGDISK"/k_temp.txt"

LASTKMSG_LOGFILE=$LOGDISK"/lastkmsg"   #yexh1 

KE_KEY="Kernel panic"
KE_WD_KEY="Watchdog bark"

function mergeK()
{
	TIME=$(date +%Y_%m_%d_%H_%M_%S)
	COUNT=$(getprop persist.sys.lenovo.Kcrash.cnt)
	if [ -z "$COUNT" ]; then
		COUNT=0
	fi
	COUNT=$(($COUNT + 1))
	setprop persist.sys.lenovo.Kcrash.cnt $COUNT
	
    	echo "\n-------***KERNEL CRASH(No. $COUNT)***-------\n Just before time: $TIME . Type: $1 " > $DIAGNOSE_MINI
	cat $DIAGNOSE_MINI >> $RESULT_MINI
	
	cat $DIAGNOSE_MINI $DIAGNOSE_TXT >> $RESULT_TXT

	rm $DIAGNOSE_MINI
	#rm $DIAGNOSE_TXT
	rm $LASTKMSG_LOGFILE

	cd $LOGDISK && cd .. &&  chmod -R 777 lastlog
	
}



grep -a -B 30 -A 2 "$KE_KEY" $LASTKMSG_LOGFILE  > $DIAGNOSE_TXT

if [ -s $DIAGNOSE_TXT ]; then
    mergeK "$KE_KEY"
	exit 0	
fi

grep -a -B 15 -A 2 "$KE_WD_KEY" $LASTKMSG_LOGFILE  > $DIAGNOSE_TXT

if [ -s $DIAGNOSE_TXT ]; then
    mergeK "$KE_WD_KEY"
	exit 0	
fi

rm $DIAGNOSE_MINI
rm $DIAGNOSE_TXT
rm $LASTKMSG_LOGFILE



