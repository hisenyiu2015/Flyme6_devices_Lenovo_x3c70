#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:26531082:ab2cd5d84c9b5994adcb8a80ce91839f9c07011c; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:22783238:3460814c008ce99029572cde192047fec605fb6e EMMC:/dev/block/bootdevice/by-name/recovery ab2cd5d84c9b5994adcb8a80ce91839f9c07011c 26531082 3460814c008ce99029572cde192047fec605fb6e:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
