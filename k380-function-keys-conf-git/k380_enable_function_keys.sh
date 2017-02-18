#!/usr/bin/sh

if [ "$ACTION" == "add" ];
then
  DEVNAME=$( cat $1/device/hidraw/hidraw*/uevent | grep DEVNAME )
  echo /dev/${DEVNAME#*=}
  /usr/bin/k380_conf -d /dev/${DEVNAME#*=} -f on
fi
