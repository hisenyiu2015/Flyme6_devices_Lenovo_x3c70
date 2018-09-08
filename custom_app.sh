#!/bin/bash

apkBaseName=$1
tempSmaliDir=$2


if [ "$apkBaseName" = "TeleService" ];then
    echo ">>> in custom_app for $apkBaseName to fix no permission error"
    sed -i '39i\    <uses-permission android:name="android.permission.MANAGE_NETWORK_POLICY"/>' $tempSmaliDir/AndroidManifest.xml
fi
