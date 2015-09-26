### _This Document is work in progress._ ###

# Warning #

It is **strongly advised** to make a backup of your phone's original firmware before attempting to flash to Open Etna.
Please look at the following tutorial and consider doing so.
http://www.zacpod.com/p/71

**This ROM may make your phone burst into flames, eat your dog and take away all your happiness. Use it on your own risk!**


# Introduction #

This document covers the flashing process of the current ROM.
The steps described in this document use fastboot to flash the new
system. fastboot is a debugging tool included in older LG firmwares.

## Requirements ##
You will need:
  * LG GW620
  * Android SDK: http://developer.android.com/sdk/index.html
    * Note: For windows, you need to add this to your android\_winusb.inf in the android sdk usb driver in the `[`Google.NTx86`]` section for x86 or in `[`Google.NTamd64`]` section for 64bit windows:
```
;LG eve
%SingleAdbInterface%        = USB_Install, USB\VID_18D1&PID_D00D
%CompositeAdbInterface%     = USB_Install, USB\VID_18D1&PID_D00D&MI_01
;LG GW620
%CompositeAdbInterface%     = USB_Install, USB\VID_1004&PID_0C02&MI_01
%SingleBootLoaderInterface% = USB_Install, USB\VID_18D1&PID_D00D
```

  * fastboot
    * Linux: http://android-dls.com/files/linux/fastboot
    * Windows: Included in android-sdk
  * Recent system.img and boot.img from the 'Downloads' section: http://code.google.com/p/openetna/downloads/list


# Install #

  * Backup your data! (use software available from the market, or just sync with your google account, ...)
  * Get your phone in fastboot mode:
  1. Remove battery
  1. Slide out the keyboard
  1. Plug in USB connector (still with the battery removed)
  1. Press SPACE (or SPACE+MENU for newer firmwares) just when you see the screen slightly light up, untill the fastboot text appears on the screen.
  1. If you are unable to enter fastboot, your firmware may not support it. See section "Recover fastboot"

  * If you are flashing an 'OpenEtna' image for the first time, or if the ChangeLog says that you will have to do an wipe, issue the next commands (else skip this step). This will do something similar to a factory reset and remove all userdata. You can backup your apps and their data by the very fine app "Titanium Backup" (market). As root/admin, do:
```
fastboot -w
```
  * Flash the images. As root/admin, do:
```
fastboot flash boot boot-versionXX-.img
fastboot flash system system-versionYY-.img
```
    1. Wait until the commands finished
    1. Unplug the usb
    1. Reinsert the battery
    1. Poweron the phone
    1. Wait (On the first boot, the applications are optimized. This can take up to 10 minutes)

<a href='http://www.youtube.com/watch?feature=player_embedded&v=UJMOv1OEKws' target='_blank'><img src='http://img.youtube.com/vi/UJMOv1OEKws/0.jpg' width='425' height=344 /></a>

<a href='http://www.youtube.com/watch?feature=player_embedded&v=cTbmp2yHn4w' target='_blank'><img src='http://img.youtube.com/vi/cTbmp2yHn4w/0.jpg' width='425' height=344 /></a>
OpenEtna installation videos

# Update the keyboard layout #
See HowToChangeKeyboardLayout

# Install Google Apps #
Download gapps-mdpi-tiny-**20101020**-signed.zip (google for it), copy it to your sdcard by
```
adb push gapps-mdpi-tiny-20101020-signed.zip /sdcard/
```
and reboot.

Warning: Please try to use that **exact file** and no other versions. (Or use an earlier version of the gapps file and **rename it** to gapps-mdpi-tiny-**20101020**-signed.zip - this is not suggested)

## Recover fastboot ##

If you have installed LG official v10I, v10N or some other version that
does not have fastboot, you should downgrade using LG Utils and
LG Mobile Update. (google for it)

Image with fastboot for 900 Mhz 3G:
http://csmg.lgmobile.com:9002/swdata/WEBSW/GW620/ANEUBB/V10g_00/V10G_00.kdz

Image with fastboot for 850 Mhz 3G:
http://csmg.lgmobile.com:9002/swdata/WEBSW/GW620/AORFBB/V10h_00/V10H_00.kdz