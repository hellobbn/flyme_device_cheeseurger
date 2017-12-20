#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:28222764:d706d80a19b11b4cea66c9cf5188c7bd108849be; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:18375976:e5e76867c5d4d854dc5119dd0b269eab31644ebd EMMC:/dev/block/bootdevice/by-name/recovery d706d80a19b11b4cea66c9cf5188c7bd108849be 28222764 e5e76867c5d4d854dc5119dd0b269eab31644ebd:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
