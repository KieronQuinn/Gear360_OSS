# Firmware

There are two firmware images for the Gear 360 (2016):

`C200GLU0APE4_160519_1848_REV00_user.bin`

`C200GLU0AQK1_171121_1257_REV00_user.bin` (latest)

And one image for the Gear 360 (2017)

`R210GLU0ARB2_180201_1739_REV00_user.bin` (latest)

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

2.) Copy it to the **root** of the microSD card of the camera

3.) Download [updater.sh](https://raw.githubusercontent.com/KieronQuinn/Gear360_OSS/main/firmware/updater.sh)

4.) Open the shell script and edit the <binfile> line to match the firmware file you downloaded, so for `C200GLU0AQK1_171121_1257_REV00_user.bin` the line would be:

`/usr/sbin/fw_upgrade_start C200GLU0AQK1_171121_1257_REV00_user.bin`

5.) Copy the `updater.sh` file to the **root** of the microSD

6.) Power up the camera, the update will install. Once completed, power off the device.

7.) Remove the firmware and the `updater.sh` file from your microSD card.

### Credits

With thanks to [bankwing](https://forum.xda-developers.com/t/mod-port-samsung-gear-360-manager-for-all-devices-updated-10-jan-20-v1-4-00-4.3400383/post-84325745) for the information of firmware updates can be run from the microSD card.