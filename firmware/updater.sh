#!/bin/sh
mount -o bind /sdcard/ /opt/usr/media
/usr/sbin/fw_upgrade_start C200GLU0AQK1_171121_1257_REV00_user.bin
