#!/system/bin/sh

umask 022

LOGFILE="/data/local/log/aplog/dmesglog"

PMLOGSHELL_ENG="/system/bin/pmlog.sh"
PMLOGSHELL_USER="/data/local/log/pmlog.sh"
PMLOGFILE="/data/local/log/aplog/pmlog"
SMD_LOGFILE="/data/local/log/aplog/smd_log"
LASTKMSG_LOGFILE="/data/local/log/aplog/lastkmsg"

# mv files.x-1 to files.x
mv_files()
{
	if [ -z "$1" ]; then
	  echo "No file name!"
	  return
	fi
	if [ -z "$2" ]; then
	  LAST_FILE=5
	else
	  LAST_FILE=$2
	fi

#	echo $1 $2 $LAST_FILE
	i=$LAST_FILE
	while [ $i -gt 0 ]; do
#	for ((i=$LAST_FILE; i>=0; i--)); do
	  prev=$(($i-1))
	  if [ -e "$1.$prev" ]; then
#	    echo mv $1.$prev $1.$i
	    mv $1.$prev $1.$i
	  fi
	  i=$(($i-1))
	done

	if [ -e $1 ]; then
#	  echo mv $1 $1.1
	  mv $1 $1.1
	fi
}

mv_files $LOGFILE
mv_files $PMLOGFILE
mv_files $SMD_LOGFILE

if [ -e /d/le_rkm ]; then
	mv_files $LASTKMSG_LOGFILE
	cat /d/le_rkm/last_kmsg > $LASTKMSG_LOGFILE
fi

while [ 1 ]
do
	date  >> $LOGFILE
	echo "" >> $LOGFILE
# /data/local/log/pmlog.sh can bypass /system/bin/pmlog.sh
# You can push pmlog.sh to /data/local/log after change it
	if [ -e $PMLOGSHELL_USER ]; then
# Use . to inherit the environment
		. $PMLOGSHELL_USER $LOGFILE $PMLOGFILE
	else
		if [ -e $PMLOGSHELL_ENG ]; then
# Use . to inherit the environment
		. $PMLOGSHELL_ENG $LOGFILE $PMLOGFILE
		fi
	fi
	dmesg -c >> $LOGFILE
	sleep 2
done

