#!/bin/bash

jarBaseName=$1
tempSmaliDir=$2

moveDirs=("android/app" "android/media")

if [ "$jarBaseName" = "framework" ];then
    echo ">>> fix the AppIconTheme not flyme style in $jarBaseName"
    rm -rf $tempSmaliDir/smali/android/app/ApplicationPackageManager*.smali
	cp -rf ../base/framework.jar.out/smali/android/app/ApplicationPackageManager*.smali $tempSmaliDir/smali/android/app/
fi

if [ "$jarBaseName" = "framework" ];then
    echo ">>> in custom_jar $jarBaseName"
    for dir_name in "${!moveDirs[@]}"
    do
        mv -v $tempSmaliDir/smali/${moveDirs[$dir_name]} $tempSmaliDir/smali_classes2/${moveDirs[$dir_name]}
    done
fi
