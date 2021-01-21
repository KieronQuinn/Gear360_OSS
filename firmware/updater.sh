#!/bin/sh
mount -o bind /sdcard/ /opt/usr/media
/usr/sbin/fw_upgrade_start <binfile>.bin