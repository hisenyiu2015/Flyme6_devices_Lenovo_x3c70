#!/system/bin/sh

#Copyright (c) 2015 Lenovo Co. Ltd	
#Authors: yexh1@lenovo.com

#LOGDISK="/data/local/log/lastlog"
LOGDISK=$(getprop persist.sys.lenovo.crash.path)

RESULT_MINI=$LOGDISK"/system_mini.txt"
RESULT_TXT=$LOGDISK"/system.txt"

DIAGNOSE_MINI=$LOGDISK"/s_temp_mini.txt"
DIAGNOSE_TXT=$LOGDISK"/s_temp.txt"

LAST_LOGFILE=$LOGDISK"/mainlog"   #yexh1 

SE_MTK_KEY="Backtrace:Process: system_server"
SE_KEY=">>> system_server <<<"
SE_SP_KEY="FATAL EXCEPTION IN SYSTEM PROCESS:"
SE_WD_KEY="WATCHDOG KILLING SYSTEM PROCESS:"

function mergeS()
{
	TIME=$(date +%Y_%m_%d_%H_%M_%S)
	COUNT=$(getprop persist.sys.lenovo.Acrash.cnt)
	if [ -z "$COUNT" ]; then
		COUNT=0
	fi
	COUNT=$(($COUNT + 1))
	setprop persist.sys.lenovo.Acrash.cnt $COUNT
	
    echo "\n-------***Android CRASH(No. $COUNT)***-------\n Just before time: $TIME . Type: $1 " > $DIAGNOSE_MINI
	cat $DIAGNOSE_MINI >> $RESULT_MINI
	#echo "\n" >> $RESULT_TXT
	cat $DIAGNOSE_MINI $DIAGNOSE_TXT >> $RESULT_TXT

	rm $DIAGNOSE_MINI
	#rm $DIAGNOSE_TXT
	rm $LAST_LOGFILE
	
	cd $LOGDISK && cd .. &&  chmod -R 777 lastlog

}

grep -a  -A 25 "$SE_MTK_KEY" $LAST_LOGFILE  > $DIAGNOSE_TXT

if [ -s $DIAGNOSE_TXT ]; then
    mergeS "fatal error in system server"
	exit 0	
fi


grep -a -B 5 -A 25 "$SE_WD_KEY" $LAST_LOGFILE  > $DIAGNOSE_TXT

if [ -s $DIAGNOSE_TXT ]; then
    mergeS "system server WDT"
	exit 0	
fi

grep -a -B 5 -A 25 "$SE_SP_KEY" $LAST_LOGFILE  > $DIAGNOSE_TXT

if [ -s $DIAGNOSE_TXT ]; then
    mergeS "fatal error in system server"
	exit 0	
fi

grep -a -A 30	"$SE_KEY" $LAST_LOGFILE  > $DIAGNOSE_TXT

if [ -s $DIAGNOSE_TXT ]; then
    mergeS "system server NE"
	exit 0	
fi

echo "Unknown type"  > $DIAGNOSE_TXT

if [ -s $DIAGNOSE_TXT ]; then
    mergeS "Unknown type"
	exit 0	
fi

rm $DIAGNOSE_MINI
rm $DIAGNOSE_TXT
rm $LAST_LOGFILE
