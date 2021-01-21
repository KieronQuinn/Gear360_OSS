# Firmware

There are two firmware images for the Gear 360 (2016):

`C200GLU0APE4_160519_1848_REV00_user.bin`

`C200GLU0AQK1_171121_1257_REV00_user.bin` (latest)

And one image for the Gear 360 (2017)

`R210GLU0ARB2_180201_1739_REV00_user.bin` (latest)

## Disclaimer

Installing these updates is at your own risk. While every attempt has been made to make sure the files are complete and not corrupted (they match the SHA256 hash, they are linked correctly in the XMLs, etc.), I do not take responsibility for devices that fail to update, become corrupt etc. If you have access to one, I recommend using an original Samsung phone that was compatible with the camera in the first place (you will still need to use the modded APK), and using WiFi direct to connect to the camera. **Both offically supported and unsupported devices will check the hash of the firmware after downloading it, for safety.** Alternatively, you may find the method of installing via the microSD less risky if you find the app has a flakey connection during general use (the steps below include a note on checking the SHA256 hash).

## Installing

You have two options for installing the firmware to your camera. Make sure the camera is charged fully before doing either of these:

### Option 1: via the app

1.) Install the latest modded version of the Gear 360 Manager from the [XDA thread](https://forum.xda-developers.com/t/mod-port-samsung-gear-360-manager-for-all-devices-updated-10-jan-20-v1-4-00-4.3400383/)

2.) Connect your camera as usual

3.) Open Settings > Mod Settings > Firmware Update and select the firmware you want to update to

4.) Return to the Settings, select Update and Check for Updates. The app will download the latest firmware if you are not already on it.

5.) Once the download has completed, you will be prompted to connect to the camera over WiFi or WiFi direct to transfer the file.

6.) The file will be transferred and the camera will install the update.

### Option 2: via the microSD card

1.) Download the firmware you want to update to from [this XDA post](https://forum.xda-developers.com/t/mod-port-samsung-gear-360-manager-for-all-devices-updated-10-jan-20-v1-4-00-4.3400383/page-93)

Note: You can check the SHA256 hash with the hash files in the firmware/<model> directory for your chosen firmware.

2.) Copy it to the **root** of the microSD card of the camera

3.) Download [updater.sh](https://raw.githubusercontent.com/KieronQuinn/Gear360_OSS/main/firmware/updater.sh)

4.) Open the shell script and edit the <binfile> line to match the firmware file you downloaded, so for `C200GLU0AQK1_171121_1257_REV00_user.bin` the line would be:

`/usr/sbin/fw_upgrade_start C200GLU0AQK1_171121_1257_REV00_user.bin`

5.) Copy the `updater.sh` file to the **root** of the microSD, unmount the microSD and put it into the camera.

6.) Power up the camera, the update will install. Once completed, power off the device.

7.) Remove the firmware and the `updater.sh` file from your microSD card.

### Credits

With thanks to [bankwing](https://forum.xda-developers.com/t/mod-port-samsung-gear-360-manager-for-all-devices-updated-10-jan-20-v1-4-00-4.3400383/post-84325745) for the information of how firmware updates can be run from the microSD card. 

Additional thanks to whoever ran the archive.org save on [this](https://web.archive.org/web/20160310193011/http://www.samsungimaging.com/common/support/firmware/downloadUrlList.do?prd_mdl_name=SAMSUNG%20NX300&loc=global) firmware update endpoint for the Samsung NX300 camera back in 2016, pointing to the (at the time of writing) [still active](http://az335309.vo.msecnd.net/xmlcontainer/customer/data/firmware/xml/SAMSUNG_NX300_global_201504020451.xml) host for the XML files (giving us the format of the files), as well as archiving the [link](https://web.archive.org/web/20201011003035/http://www.samsungimaging.com/file/download?XmlIdx=138&file=NX300_FW_v1.45.zip) to the actual firmware for that device, pointing to `http://secaz-wearable-dn.samsungdm.com/firmcontainer/customer/data/firmware/fw/`, the *also* still active endpoint for the actual firmware. Appending the full firmware bin name to that URL will (at the time of writing) still work to download the firmware. 

Thanks to https://github.com/ultramango/gear360reveng/ for (dead) links to the firmware, which contained the crucial filenames required  to download from the aforementioned endpoint.

And finally, additional thanks to Lloyd Summers of FileArchiveHaven for [this article](https://www.filearchivehaven.com/2018/04/12/samsung-gear-360-2017-hacks-download-the-firmware-without-a-mobile-device/) \[[archived link](https://web.archive.org/web/20201123170010/http://www.filearchivehaven.com/2018/04/12/samsung-gear-360-2017-hacks-download-the-firmware-without-a-mobile-device/)\] containing some (partly-outdated) information on how the update XMLs are formatted, including the hash XML. This was also the source of the full filename for the R210.
