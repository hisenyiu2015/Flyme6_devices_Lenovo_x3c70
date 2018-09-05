#!/system/bin/sh

#Copyright (c) 2015 Lenovo Co. Ltd	
#Authors: yexh1@lenovo.com

setprop sys.lenovo.lenovolog "start"

if [ $(getprop ro.boot.mode) = "usb_cable" ]; then
	setprop persist.sys.lenovo.log.disk "/data/media/0"

	LOGDISK="/data/media/0"
	if [ -e "/data/media/0/log_cfg" ]; then
        	cd /data/media/0 && chmod -R 777 log_cfg
	fi

else
	setprop persist.sys.lenovo.log.disk "/storage/emulated/0"

	LOGDISK="/storage/emulated/0"
	if [ -e "/storage/emulated/0/log_cfg" ]; then
		cd /storage/emulated/0 && chmod -R 777 log_cfg
	fi
fi

CURRENT_OFFLINE_LOG_DIR_LINK=/data/local/log/curlog
# setup log service. For eng variant, we set all log on.
if [ $(getprop persist.sys.lenovo.log) = TRUE ]; then

	FILENAME=$(date +%Y_%m_%d_%H_%M_%S)

	while true
	do
	if [ ! -e $LOGDISK ]; then
		sleep 1
	else
		break
	fi
	done

	cd $LOGDISK

	if [ ! -e $LOGDISK"/log" ]; then
            mkdir log && chmod 777 log
	fi

	#Tony sun, we need remove follow cmd "chmod 777 log" at last.
	chmod 777 log

	LOGSIZE=`/sbin/busybox du -shm $LOGDISK"/log" | /sbin/busybox awk '{print $1}'`       
	setprop persist.sys.lenovo.log.size $LOGSIZE
	#if log size big than limit, permit logging
	if [ $LOGSIZE -ge $(getprop persist.sys.lenovo.log.limit) ]; then	    
                 #echo $LOGSIZE $(getprop persist.sys.lenovo.log.limit)	
                setprop ctl.start am_loglimit          
                 #am broadcast -a android.intent.action.LENOVO_LOG_OVERLIMIT --es log_size $LOGSIZE   #send broadcast		 
	fi

	cd $LOGDISK"/log"
	if [ -e ./aplog.txt ]; then
		LASTLOGDIR=`cat aplog.txt`
		chown -R media_rw:media_rw $LASTLOGDIR
	fi
	mkdir $FILENAME && chmod 777 $FILENAME
	echo $FILENAME > ./aplog.txt
	chown media_rw:media_rw aplog.txt
	rm $CURRENT_OFFLINE_LOG_DIR_LINK
	ln -s $LOGDISK"/log/"$FILENAME $CURRENT_OFFLINE_LOG_DIR_LINK
	chown -h shell:shell $CURRENT_OFFLINE_LOG_DIR_LINK

        setprop persist.sys.lenovo.log.path $LOGDISK"/log/"$FILENAME
        setprop persist.sys.lenovo.log.folder $FILENAME
	echo "persist.sys.lenovo.log: TRUE" >> $LOGDISK"/log/"$FILENAME/lenovolog_property
	echo "persist.sys.lenovo.log.system: $(getprop persist.sys.lenovo.log.system)" >> $LOGDISK"/log/"$FILENAME/lenovolog_property
        if [ $(getprop persist.sys.lenovo.log.system) = TRUE ]; then
            setprop ctl.start mainlog
            setprop ctl.start eventslog
        else
            setprop ctl.stop mainlog
            setprop ctl.stop eventslog
        fi
	
	echo "persist.sys.lenovo.log.kernel: $(getprop persist.sys.lenovo.log.kernel)" >> $LOGDISK"/log/"$FILENAME/lenovolog_property
        if [ $(getprop persist.sys.lenovo.log.kernel) = TRUE ]; then
            setprop ctl.start kernellog
        else
            setprop ctl.stop kernellog
        fi

	echo "persist.sys.lenovo.log.other: $(getprop persist.sys.lenovo.log.other)" >> $LOGDISK"/log/"$FILENAME/lenovolog_property
        if [ $(getprop persist.sys.lenovo.log.other) = TRUE ]; then
            setprop ctl.start performance
            setprop ctl.start tcplog
            setprop ctl.start radiolog
            setprop ctl.start qsee_log
            setprop ctl.start qsee_bsp_log
        else
            setprop ctl.stop performance
            setprop ctl.stop tcplog
            setprop ctl.stop radiolog
            setprop ctl.stop qsee_log
            setprop ctl.stop qsee_bsp_log
        fi  
        if [ $(getprop persist.sys.lenovo.log.bt) = TRUE ]; then
            BTDIR="btsnoop"
            BTPATH=$LOGDISK"/log/"$FILENAME"/"$BTDIR
            cd $LOGDISK"/log/"$FILENAME
            mkdir $BTDIR && chmod 777 $BTDIR
            setprop persist.sys.bt.btsnooppath $BTPATH
            setprop persist.sys.bt.btsnoop true
        else
            setprop persist.sys.bt.btsnoop false
        fi

	echo "persist.sys.lenovo.log.qxdm: $(getprop persist.sys.lenovo.log.qxdm)" >> $LOGDISK"/log/"$FILENAME/lenovolog_property
        if [ $(getprop persist.sys.lenovo.log.qxdm) = TRUE ]; then
            setprop sys.diag.config diag_en
            sleep 3
            setprop ctl.start qxdmlog
            setprop ctl.start cnss_diag
        else
            setprop ctl.stop qxdmlog
        fi 
else
    setprop ctl.stop kernellog
    setprop ctl.stop mainlog
    setprop ctl.stop eventslog
    setprop ctl.stop performance
    setprop ctl.stop tcplog
    setprop ctl.stop radiolog
    setprop ctl.stop qxdmlog
    setprop ctl.stop cnss_diag
    setprop ctl.stop qsee_log
    setprop ctl.stop qsee_bsp_log
    echo "persist.sys.lenovo.log: FALSE" >> $(getprop persist.sys.lenovo.log.path)/lenovolog_property
    setprop persist.sys.bt.btsnoop false
    chown -R media_rw:media_rw $(getprop persist.sys.lenovo.log.path)
    setprop persist.sys.lenovo.log.path INVALID
fi

setprop ctl.start mrdlog


