#!/system/bin/sh
#
# mrg logs area operations script
#
#  History:
#    Jun 17,2015: KerryXi, init this file
#
#  Copyright (c) 2015, Lenovo
#  All rights reserved.
#

# mrd offline log, ex:/data/media/0/log/1970_01_02_07_30_22
MRD_OFFLINE_LOG_PATH=$(getprop persist.sys.lenovo.log.path)
MRD_KERNEL_SEQ_PROP=persist.sys.lenovo.Kcrash.cnt

# mrd sw ver node path,such as X3_USR_ST1527_5.3.1_1507020152_Q00039_BMAIN_CN
MRD_SW_VER_PATH=/d/le_mrd/sw_ver

# mrd workspace log path
MRD_WORKSPACE_HOME_PATH=/data/local/log
MRD_WORKSPACE_LOG_PATH=/data/local/log/mrd
MRD_WORKSPACE_LOG_MINIDUMP_FILES_PATH=/data/local/log/mrd/minidump
MRD_WORKSPACE_CRASH_REPORT_FULLNAME=/data/local/log/mrd/summary.txt
MRD_WORKSPACE_CRASH_REPORT_FILENAME=summary.txt

# mrd cached log path
MRD_CACHED_LOG_PATH=/data/local/log/mrd_cache

# mrd persist log path
MRD_PERSIST_LOG_PATH=/data/local/log/mrd_persist

# mrd ue log path
MRD_UE_LOG_PATH=/data/local/log/mrd_ue

BUSYBOX="/sbin/busybox"
CRASH_SEQNO=0

#function: limit the size of mrd area
#  arg1: mrd area name, such as mrd_persist,mrd_cache
#  arg2: the max threshhold mrd tranaction count in the dir
#  arg3: the most large reserved amount of mrd transaction count
#        when the mrd transaction count is above arg2,
#        it almost is half of arg2
MAX_MRD_LOG_DIR_SIZE=256
function restrict_size()
{
    total=`ls $1/ | wc -l`
    echo ""
    echo "$1 total files:$total"

    count=$total

    threshhold=$2
    dest=$3

    if [ $count -le $threshhold ]; then
        echo "file $count is smallare or equal than threshhold($threshhold)"
        #calculat the size of current directory,if it is above estemate size,it should have some problem,clean the directory
        LOGSIZE=`/sbin/busybox du -shm $1 | /sbin/busybox awk '{print $1}'`
        if [ $LOGSIZE -ge $MAX_MRD_LOG_DIR_SIZE ]; then
            echo "$1 size is $LOGSIZE that is above limit $MAX_MRD_LOG_DIR_SIZE M size,remove it"
            rm -r $1/*
        else
            echo "$1 size is $LOGSIZE M that is low limit $MAX_MRD_LOG_DIR_SIZE M size"
        fi
        return
    fi

    #remove the mrd log count until to the dest count
    echo "file $count is large than threshhold($threshhold),cut to $dest"
    cd $1
    for file in `/sbin/busybox ls -tr`; do
        if [ $count -le $dest ]; then
           echo "dest is ok!"
           break
        fi

        echo "count=$count $file"
        echo "rm -r $file"
        rm -r $file
        count=$((count-1))
    done
    cd -
}

#function: record the kernel crash subject for the post-sale doctor check
#   append the log/mrd_ue/summary.txt subject line to the crash doctor file
#   the max record limit is 30 times,almost 120 lines
MRD_CRASH_DOCTOR_LOG_PATH=$(getprop persist.sys.lenovo.crash.path)
MRD_CRASH_DOCTOR_FILE_NAME=kernel.txt
MRD_CRASH_DOCTOR_FILE_NAME_TMP=kernel.txt.tmp
MAX_MRD_CRASH_DOCTOR_RECORDS_CNT=30
MAX_MRD_CRASH_DOCTOR_RECORDS_CNT_LINE=$((($MAX_MRD_CRASH_DOCTOR_RECORDS_CNT-1)*4))
function append_one_record()
{
    SUBJECT_LINE=`$BUSYBOX grep -e "Subject:" -e "Crash tag:" $MRD_UE_LOG_PATH/$MRD_WORKSPACE_CRASH_REPORT_FILENAME`
    echo $SUBJECT_LINE

    if [ ! -e $MRD_CRASH_DOCTOR_LOG_PATH ] ; then
        echo "*** MRD_CRASH_DOCTOR_LOG_PATH $MRD_CRASH_DOCTOR_LOG_PATH doesn't exit!"
        return
    fi
    echo $SUBJECT_LINE | $BUSYBOX grep "SYSTEM_RESET_UNKNOWN"
    if [ $? -eq 0 ] ; then
        echo "SYSTEM_RESET_UNKNOWN crash ignore,don't record in kernel.txt"
        return
    fi
    echo "record one: $SUBJECT_LINE"

    if [ ! -e $MRD_CRASH_DOCTOR_LOG_PATH/$MRD_CRASH_DOCTOR_FILE_NAME ] ; then
        echo "produce one empty $MRD_CRASH_DOCTOR_LOG_PATH/$MRD_CRASH_DOCTOR_FILE_NAME file"
        echo "" > $MRD_CRASH_DOCTOR_LOG_PATH/$MRD_CRASH_DOCTOR_FILE_NAME
    fi

    cp $MRD_CRASH_DOCTOR_LOG_PATH/$MRD_CRASH_DOCTOR_FILE_NAME $MRD_CRASH_DOCTOR_LOG_PATH/$MRD_CRASH_DOCTOR_FILE_NAME_TMP

    TIME=$(date "+%Y_%m_%d %H:%M:%S")
    COUNT=$CRASH_SEQNO
    echo "$TIME     No. $COUNT\n$SUBJECT_LINE\n" > $MRD_CRASH_DOCTOR_LOG_PATH/$MRD_CRASH_DOCTOR_FILE_NAME
    cat $MRD_CRASH_DOCTOR_LOG_PATH/$MRD_CRASH_DOCTOR_FILE_NAME
    echo "$BUSYBOX head -n $MAX_MRD_CRASH_DOCTOR_RECORDS_CNT_LINE $MRD_CRASH_DOCTOR_LOG_PATH/$MRD_CRASH_DOCTOR_FILE_NAME_TMP >> $MRD_CRASH_DOCTOR_LOG_PATH/$MRD_CRASH_DOCTOR_FILE_NAME"
    $BUSYBOX head -n $MAX_MRD_CRASH_DOCTOR_RECORDS_CNT_LINE $MRD_CRASH_DOCTOR_LOG_PATH/$MRD_CRASH_DOCTOR_FILE_NAME_TMP >> $MRD_CRASH_DOCTOR_LOG_PATH/$MRD_CRASH_DOCTOR_FILE_NAME
    chmod 644 $MRD_CRASH_DOCTOR_LOG_PATH/$MRD_CRASH_DOCTOR_FILE_NAME

    rm $MRD_CRASH_DOCTOR_LOG_PATH/$MRD_CRASH_DOCTOR_FILE_NAME_TMP
}

#update the sw ver info
echo -n `$BUSYBOX grep internal_framework /etc/version.conf  | $BUSYBOX cut -d',' -f2` > $MRD_SW_VER_PATH

#package the miniramdump files
if [ -e $MRD_WORKSPACE_CRASH_REPORT_FULLNAME ]; then
    echo "Detect a crash during last reboot $MRD_WORKSPACE_CRASH_REPORT_FULLNAME !"

    #the mrdparer is working, wait for a while
    if [ ! -e $MRD_WORKSPACE_CRASH_REPORT_FULLNAME ]; then
        echo "the mrd is working,wait for a while"
        sleep 5
    fi

    #backup newest summary file to the mrd_ue directory
    echo "cp $MRD_WORKSPACE_CRASH_REPORT_FULLNAME $MRD_UE_LOG_PATH"
    cp $MRD_WORKSPACE_CRASH_REPORT_FULLNAME $MRD_UE_LOG_PATH
    chmod 644 $MRD_UE_LOG_PATH/$MRD_WORKSPACE_CRASH_REPORT_FILENAME

    CRASH_SEQNO=$(getprop $MRD_KERNEL_SEQ_PROP)
    if [ -z "$CRASH_SEQNO" ]; then
        CRASH_SEQNO=0
    fi
    CRASH_SEQNO=$(($CRASH_SEQNO + 1))
    echo "crash seqno = $CRASH_SEQNO"
    setprop $MRD_KERNEL_SEQ_PROP $CRASH_SEQNO

    MRD_SEQNO=$(getprop  persist.sys.lenovo.mrd.lastseq)
    if [ -z "$MRD_SEQNO" ]; then
        MRD_SEQNO=0
    fi
    MRD_SEQNO=$(($MRD_SEQNO + 1))

    MRD_COMRESSED_FILENAME="mrd_crash_dumps_$MRD_SEQNO.tar.gz"

    echo "chmod the mrd workspace dir"
    $BUSYBOX chmod -R a+r $MRD_WORKSPACE_LOG_PATH

    #compress workspace log and delete minidump
    if [ -e $MRD_WORKSPACE_LOG_MINIDUMP_FILES_PATH ]; then
        cd $MRD_WORKSPACE_LOG_PATH
        /sbin/busybox tar zcf $MRD_COMRESSED_FILENAME minidump *.txt
        chmod 644 $MRD_COMRESSED_FILENAME
        cd -
        #remove the parsed mini ramdump files
        rm -r $MRD_WORKSPACE_LOG_MINIDUMP_FILES_PATH
    fi

    #rename the mrd workspace directory name
    MRD_LOG_DIRNAME="mrd_crash_"$CRASH_SEQNO"_$(date +%Y_%m_%d_%H_%M_%S)"
    mv $MRD_WORKSPACE_LOG_PATH $MRD_WORKSPACE_HOME_PATH/$MRD_LOG_DIRNAME

    if [ $(getprop persist.sys.lenovo.log) = TRUE ]; then
        #copy the mrd workspace log to offline area
        echo "move the mrd workspace log to offline area"
        cp -r $MRD_WORKSPACE_HOME_PATH/$MRD_LOG_DIRNAME $MRD_OFFLINE_LOG_PATH

        #chown the owner and group name to media_rw
        echo "chown -R media_rw:media_rw $MRD_OFFLINE_LOG_PATH/$MRD_LOG_DIRNAME"
        chown -R media_rw:media_rw $MRD_OFFLINE_LOG_PATH/$MRD_LOG_DIRNAME
    else
        echo "move the mrd workspace log to mrd cache area"
        #copy mrd workspace log to cached logdir
        cp -r $MRD_WORKSPACE_HOME_PATH/$MRD_LOG_DIRNAME $MRD_CACHED_LOG_PATH
    fi

    #backup mrd workspace log summary to mrd ue area
    echo "cp -r $MRD_WORKSPACE_HOME_PATH/$MRD_LOG_DIRNAME $MRD_UE_LOG_PATH"
    cp -r $MRD_WORKSPACE_HOME_PATH/$MRD_LOG_DIRNAME $MRD_UE_LOG_PATH
    cd $MRD_UE_LOG_PATH/$MRD_LOG_DIRNAME && rm !($MRD_WORKSPACE_CRASH_REPORT_FILENAME)
    chmod 644 $MRD_UE_LOG_PATH/$MRD_LOG_DIRNAME/$MRD_WORKSPACE_CRASH_REPORT_FILENAME
    cd -

    #record the crash subject for post-sale doctor check
    append_one_record

    #move mrd workspace log to persist
    echo "mv $MRD_WORKSPACE_HOME_PATH/$MRD_LOG_DIRNAME $MRD_PERSIST_LOG_PATH"
    mv $MRD_WORKSPACE_HOME_PATH/$MRD_LOG_DIRNAME $MRD_PERSIST_LOG_PATH
else
    echo "there is no crash during last reboot!"
    if [ $(getprop persist.sys.lenovo.log) = TRUE ]; then
        #backup mrd cache logs to offline log area
        echo "backup mrd cache logs to offline log area"

        if [ -e $MRD_CACHED_LOG_PATH ]; then
            mrd_cache_files=`ls $MRD_CACHED_LOG_PATH`
            echo "cache_file is $mrd_cache_files"
            if [ -n "$mrd_cache_files" ]; then
                #move the mrd cache log to offline area
                echo "mv  $MRD_CACHED_LOG_PATH/* $MRD_OFFLINE_LOG_PATH"
                cp -r  $MRD_CACHED_LOG_PATH/* $MRD_OFFLINE_LOG_PATH
                rm -r  $MRD_CACHED_LOG_PATH/*

                #chown the owner and group name to media_rw
                echo "chown -R media_rw:media_rw $MRD_OFFLINE_LOG_PATH/mrd_crash*"
                chown -R media_rw:media_rw $MRD_OFFLINE_LOG_PATH/mrd_crash*
            fi
        fi
    fi
fi

setprop sys.lenovo.lenovolog "finish"
restrict_size $MRD_CACHED_LOG_PATH 16 10
restrict_size $MRD_PERSIST_LOG_PATH 48 32
restrict_size $MRD_UE_LOG_PATH 128 100
