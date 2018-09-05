##!/bin/bash
#!/system/bin/sh
#set -x
# function: dump the PMI8994's power rail, GPIO, MPP and clock for PM debug
#   author: yangjq
#   remark: Use tool pmic_dump to convert it to a readable analysis file
#  history: 2015-4-9, yangjq, support PMI8994
#         : 2014-3-31, yangjq, initial version

# dump registers one by one
dump_registers_1by1()
{
	if [ -z "$1" ]; then
		echo "No start address!"
		return
	fi
	if [ -z "$2" ]; then
		COUNT=1
	else
		COUNT=$2
	fi

#	echo "p1="$1 "p2="$2
	i=0
	base=$1
#	echo "base="$base "COUNT="$COUNT
	cd /sys/kernel/debug/spmi/spmi-0
	echo 0x1 > count
	while [ $i -lt $(($COUNT)) ]; do
		address=$(($base+$i))
#		echo "i="$i "base="$base "address="$address
##		echo "obase=16;"$address | bc
		echo $address > address 
		cat data_raw
		i=$(($i+1))
	done
}
# dump registers
dump_registers()
{
	if [ -z "$1" ]; then
		echo "No start address!"
		return
	fi
	if [ -z "$2" ]; then
		COUNT=1
	else
		COUNT=$2
	fi

#	echo "p1="$1 "p2="$2
	address=$1
#	echo "address="$address "COUNT="$COUNT
	cd /sys/kernel/debug/spmi/spmi-0
	echo $COUNT > count
	echo $address > address 
	echo "<register address='"$address"'>"
	cat data_raw
}

# dump ranges
dump_ranges()
{
	if [ -z "$1" ]; then
		echo "No start address!"
		return
	fi
	if [ -z "$2" ]; then
		RANGE_SIZE=1
	else
		RANGE_SIZE=$2
	fi
	if [ -z "$3" ]; then
		RANGE_DELTA=1
	else
		RANGE_DELTA=$3
	fi
	if [ -z "$4" ]; then
		RANGE_COUNT=1
	else
		RANGE_COUNT=$4
	fi

#	echo "p1="$1 "p2="$2 "p3="$3 "p4="$4
	range_base=$1
#	echo "range_base="$range_base "RANGE_SIZE="$RANGE_SIZE "RANGE_DELTA="$RANGE_DELTA "RANGE_COUNT="$RANGE_COUNT
	i_range=0
	while [ $i_range -lt $RANGE_COUNT ]; do
		address=$(($range_base+$i_range*$RANGE_DELTA))
#		echo "i_range="$i_range "range_base="$range_base "address="$address
		dump_registers $address $RANGE_SIZE
		i_range=$(($i_range+1))
	done
}

dump_header()
{
	echo "<timestamp>"
	date
	echo "</timestamp>"
	echo "<generator>adb shell</generator>"
	echo "<pmic model='pmi8994'>"
}

dump_header

#Power Rail
#Sx_CTRL
dump_ranges 0x31400 0x50 0x300 3
#Sx_FREQ
dump_ranges 0x31600 0x58 0x300 3
#LDO
dump_ranges 0x34000 0x50 0x100 1

#GPIO
dump_ranges 0x2c000 0x50 0x100 10

#MPP
dump_ranges 0x2a000 0x50 0x100 4

