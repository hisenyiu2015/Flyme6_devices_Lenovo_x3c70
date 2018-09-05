#!/system/bin/sh

#Copyright (c) 2015 Lenovo Co. Ltd	
#Authors: yexh1@lenovo.com

if [ -z "$1" ]; then        
	SAVEFLAG=$(getprop persist.sys.lenovo.log.save)
else
        SAVEFLAG=$1
fi


LOGDISK=$(getprop persist.sys.lenovo.log.disk)
LOGFOLDER=$(getprop persist.sys.lenovo.log.folder)

LASTKMSG="/data/local/log/lastkmsg" 
LASTLOG="/data/local/log/lastlog"
WLAN_INI="/system/etc/wifi/WCNSS_qcom_cfg.ini" 
GPSLOG_DIR=/data/gps/log
ANR_DIR=/data/anr
RECOVERY_DIR=/cache/recovery
CRASH_DIR=/data/tombstones
#BT_ENABLE=$APLOG_DIR/bluetooth.enable
BT_DIR=/data/misc/bluedroid
BT_ETC_DIR=/system/etc/bluetooth
WLAN_DIR=/data/misc/wifi
DRPOBOX_DIR=/data/system/dropbox

mkdir -p $LOGDISK"/log"

# 
if [ $SAVEFLAG = TRUE ]; then

	APLOG_DIR=$LOGDISK"/log/"$LOGFOLDER
        mkdir -p $APLOG_DIR

	ps -t -p -P > $APLOG_DIR/ps.txt
	top -n 1 -m 10 > $APLOG_DIR/top.txt
	cat /proc/interrupts > $APLOG_DIR/interrupts.txt
	cat /proc/meminfo > $APLOG_DIR/meminfo.txt
	getprop > $APLOG_DIR/prop.txt
	[ -e /system/build.prop ] && cp /system/build.prop $APLOG_DIR/
	[ -e /system/etc/version.conf ] && cp /system/etc/version.conf $APLOG_DIR/
        
	DATAAPLOG="/data/local/log/aplog"
	[ -d $DATAAPLOG ] && dumpsys alarm > $DATAAPLOG/alarm.txt
	[ -d $DATAAPLOG ] && dumpsys power > $DATAAPLOG/power.txt
	[ -d $DATAAPLOG ] && dumpsys cpuinfo > $DATAAPLOG/cpuinfo.txt
        [ -d $DATAAPLOG ] && dumpsys meminfo > $DATAAPLOG/dumpmeminfo.txt
        [ -d $DATAAPLOG ] && dumpsys usagestats > $DATAAPLOG/usagestats.txt
        [ -d $DATAAPLOG ] && dumpsys media.audio_flinger> $DATAAPLOG/audioflinger.txt
	[ -d $DATAAPLOG ] && cp -a $DATAAPLOG/* $APLOG_DIR && cd $DATAAPLOG && rm -rf *

	[ -d $BT_ETC_DIR ] && cp -a $BT_ETC_DIR $APLOG_DIR/bluetooth
	[ -d $BT_DIR ] && cp $BT_DIR/* $APLOG_DIR/bluetooth
	[ -d $WLAN_DIR ] && cp -a $WLAN_DIR $APLOG_DIR/wlan
	[ -e $WLAN_INI ] && cp $WLAN_INI $APLOG_DIR/wlan

	cd $APLOG_DIR && chown -R media_rw:media_rw alarm.txt power.txt cpuinfo.txt dumpmeminfo.txt bluetooth \
						wlan ps.txt top.txt interrupts.txt meminfo.txt prop.txt build.prop version.conf

	APLOG_DIR=$LOGDISK"/log"
	mkdir -p $APLOG_DIR
                 

	cd $APLOG_DIR  && rm -fr lastkmsg lastlog gps anr recovery tombstones dropbox
	[ -d $LASTKMSG ] && cp -a $LASTKMSG $APLOG_DIR/lastkmsg
	[ -d $LASTLOG ] && cp -a $LASTLOG $APLOG_DIR/lastlog
	[ -d $GPSLOG_DIR ] && cp -a $GPSLOG_DIR $APLOG_DIR/gps
	[ -d $ANR_DIR ] &&  cp -a $ANR_DIR $APLOG_DIR/anr
	[ -d $RECOVERY_DIR ] && cp -a $RECOVERY_DIR $APLOG_DIR/recovery
	[ -d $CRASH_DIR ] && cp -a $CRASH_DIR $APLOG_DIR/tombstones
    [ -d $DRPOBOX_DIR ] && cp -a $DRPOBOX_DIR $APLOG_DIR/dropbox

	cd $APLOG_DIR && chown -R media_rw:media_rw lastkmsg lastlog gps anr recovery tombstones dropbox

fi

if [ $SAVEFLAG = CLEAN ]; then
	cd $LOGDISK

	if [ -e $LOGDISK"/log" ]; then
    	        cd log
		if [ $(getprop persist.sys.lenovo.log) = TRUE ]; then
		    rm -rf !($LOGFOLDER)
		else
		    rm -rf *
		fi
	fi
fi

if [ $SAVEFLAG = FALSE ]; then
	cd $LOGDISK

	if [ -e $LOGDISK"/log" ]; then
    	        cd log
		if [ $(getprop persist.sys.lenovo.log) = TRUE ]; then
		    rm -rf !($LOGFOLDER)
		else
		    #rm -rf *
                    cd $LOGDISK
                    rm -rf log
		fi
	fi

	cd $LOGDISK
	if [ -e $LOGDISK"/log_out" ]; then
    	        #cd log_out
		#rm -rf *
                rm -rf log_out		
	fi
fi

setprop ctl.start am_savelog
#am broadcast -a android.intent.action.SAVE_LENOVO_LOG_DONE --es path $LOGDISK"/log"  


