#!/system/bin/sh

#Copyright (c) 2015 Lenovo Co. Ltd	
#Authors: yexh1@lenovo.com

LOGDISK=$(getprop persist.sys.lenovo.log.disk)
LOGFOLDER=$(getprop persist.sys.lenovo.log.folder)
APLOG_DIR=$LOGDISK"/log"

DIAGNOSE_MINI=$LOGDISK"/log_out/diagnose_mini.txt"
DIAGNOSE_TXT=$LOGDISK"/log_out/diagnose.txt"

KE_KEY="Kernel panic"
KE_WD_KEY="Watchdog bark"
#KE_PS_HOLD_KEY="Power-off reason: Triggered from PS_HOLD"
SE_KEY=">>> system_server <<<"
SE_SP_KEY="FATAL EXCEPTION IN SYSTEM PROCESS:"
SE_WD_KEY="WATCHDOG KILLING SYSTEM PROCESS:"

	cd $LOGDISK	
	if [ ! -e $LOGDISK"/log_out" ]; then
    	    mkdir log_out
	fi           
	
	if [ ! -e $LOGDISK"/log" ]; then
    	    mkdir log
	fi           
	   
    LASTKMSG="/data/local/log/lastkmsg"  
	cd $APLOG_DIR  && rm -fr lastkmsg
   [ -d $LASTKMSG ] && cp -a $LASTKMSG $APLOG_DIR/lastkmsg
	
	cd $APLOG_DIR	
	    
        echo "********Kernel check*****\\n"  > $DIAGNOSE_MINI	   
		grep -B 4 -A 10 --exclude-dir="out" -r "$KE_KEY" .  >> $DIAGNOSE_MINI    #-B n lines before; -A n lines after

        echo "\n****Kernel watchdog check*****\\n"  >> $DIAGNOSE_MINI  
        grep -B 15 -A 2 "$KE_WD_KEY" -r . >> $DIAGNOSE_MINI

#        echo "\n***************Kernel Triggered * from PS_HOLD check**************\n"  >> $DIAGNOSE_MINI
#        grep  -C 2 "$KE_PS_HOLD_KEY" -r . >> $DIAGNOSE_MINI

	    echo "\n******Framework check*********\n" >> $DIAGNOSE_MINI
        grep -B 5 -A 15	"$SE_KEY" -r . >> $DIAGNOSE_MINI

        echo "\n****Framework FATAL EXCEPTION * IN SYSTEM PROCESS check*****\n"  >> $DIAGNOSE_MINI
        grep -B 5 -A 15 "$SE_SP_KEY" -r . >> $DIAGNOSE_MINI

        echo "\n****Framework WATCHDOG * KILLING SYSTEM PROCESS check****\n"  >> $DIAGNOSE_MINI
        grep -B 5 -A 15 "$SE_WD_KEY" -r . >> $DIAGNOSE_MINI

        echo "\n**********Check end********\n" >>  $DIAGNOSE_MINI
		
	rm $DIAGNOSE_TXT	
		
	/sbin/busybox tr -s "[\000][\252]"	< $DIAGNOSE_MINI > $DIAGNOSE_TXT   #remove 0x00 and 0xAA character
	
	#echo "at last"
	
	rm $DIAGNOSE_MINI
	
    echo "******SW_BSP_CRASH  Kernel check***\n"  > $DIAGNOSE_MINI
	grep -a "$KE_KEY" $DIAGNOSE_TXT >> $DIAGNOSE_MINI    
	grep -a "$KE_WD_KEY" $DIAGNOSE_TXT >> $DIAGNOSE_MINI  
	#grep -a "$KE_PS_HOLD_KEY" $DIAGNOSE_TXT >> $DIAGNOSE_MINI 
	echo "***SW_FRAMEWORK_CRASH Framework check****\n"  >> $DIAGNOSE_MINI
	grep -a "$SE_KEY" $DIAGNOSE_TXT >> $DIAGNOSE_MINI
	grep -a "$SE_SP_KEY" $DIAGNOSE_TXT >> $DIAGNOSE_MINI
	grep -a "$SE_WD_KEY" $DIAGNOSE_TXT >> $DIAGNOSE_MINI
	
	
	K1=$(grep -a "$KE_KEY" -c $DIAGNOSE_MINI)
	K2=$(grep -a "$KE_WD_KEY" -c  $DIAGNOSE_MINI)
	#K3=$(grep -a "$KE_PS_HOLD_KEY" -c  $DIAGNOSE_MINI)
	
	#echo $K1 $K2 $K3	  
	Kernel=$(/sbin/busybox expr $K1 + $K2)
	#echo Kernel is $Kernel
	
	S1=$(grep -a "$SE_KEY" -c  $DIAGNOSE_MINI)
	S2=$(grep -a "$SE_SP_KEY" -c  $DIAGNOSE_MINI)
	S3=$(grep -a "$SE_WD_KEY" -c  $DIAGNOSE_MINI)
	
	#echo $S1 $S2 $S3	  
	System=$(/sbin/busybox expr $S1 + $S2 + $S3)
	#echo System is $System

    am broadcast -a android.intent.action.DIAG_LENOVO_LOG_DONE --es path $DIAGNOSE_MINI --es path_result $DIAGNOSE_TXT --es KE_count $Kernel --es SE_count $System
 	#send diagnose done broadcast





