# Introduction #

Please fill in

# Gitlog #
```
build:
1ddfc98 build: Add "mka" function for fast multiproc builds
66d159d build: allow different kernel flags for recovery
82e8fe7 armv7-a build: allow for board customization of CPU/FPU target
527955b build: Try some additional standard paths for e2fstools
45d5ffb build: Use 4KiB block size for Ext2 FS image generation
3710ed6 fix ups
7a5158c build: Generate ext3 images if it is define in BoardConfig.mk
e9a5ed0 build: add ARMv6 w/ VFP processor combo option
dalvik:
51ab0ad Use GCC visibility to reduce the size of libdvm by 10%
27ed151 dalvik: Finish armv6-vfp support
c8257fd dalvik: add support for armv6-vfp processor target
development:
af323d7 Development: update monkey keycodes
22d492a Fix DOS end-of-lines in winusb INF file.
external/opencore:
57c9fb9 remove framerate limit for QSD8x50 devices
66e10b7 OpenCore: Support to avoid mem copy to improve the camcorder performance
external/skia:
ee90255 compile skTextBox needed by Samsung libtvout
frameworks/policies/base:
5c23e02 Fix code style and stray braces.
4fe255e Lockscreen.java Fixed mSelector2 crash if not creation succed
ace70b6 lockscreen: Fix NPE if new sliding tabs fail to load.
84e5b7a quickkeys: Check for quick keys in window manager
2b7c9d5 Change hide() to dismiss() to avoid memory leak.
0736870 Add Phone and Messaging SlidingTab to LockScreen
hardware/qcom/mm-core:
d11e359 Add common platform name
e3f1464 omx-mm-core: 7630: Latest version from CodeAurora
hardware/qcom/mm-video:
3804cda vidc: Fix 7x30 device detection.
0f002de mm-video: vidc: Update VIDC from CodeAurora
packages/apps/ADWLauncher:
4426d3f Updated French translations
27f76c1 ADWLauncher: update french translation
packages/apps/AndroidTerm:
4f323a9 Avoid potential memory leak in String8::set
5ca34d7 Bump version number.
3bd063f Fix broken translation dir name.
226cdb5 term: Change package name to jackpal.androidterm2
383abd8 Add Japanese translations.
e9a0be0 French translations: initial commit
4a67b46 Russian: Initial Translation
5d77254 German: initial translation
9a76a59 Italian translations: initial commit
363e01a update Simplified Chinese translation.
packages/apps/Browser:
ea56c44 Browser: Browser settings are getting used before its initialization
bdc8a6b fix some Simplified Chinese translation errors.
packages/apps/CMParts:
45af684 Russian: "Phone and Messaging" and Overscroll
57d0dbe Translated CMParts to Spanish
c49591c Italian: Fix some translations
bf54472 French translations: Overscrolling weight + Quick keys
c4b744f fixed german translation: overscrolling settings
8337d58 Update Japanese translation.
e2b4426 Update Japanese translation.
6ab5cda updated german translation: overscrolling settings and quickkeys
49822cd Updated italian translations: overscrolling weight and vision quick keys
d286e85 Added the overscrolling bounce/weight as a preference
bc157b6 quickkeys: Support for Vision user keys
9e9753a updated german translation: overscrolling
dc92e26 French translations: Telephone and Messages in lockscreen
1ff3edf updated german and fixed english translation: Phone and Messaging
358b3a9 Updated Italian translations: Phone and Messaging SlidingTab
cb27db7 Update Japanese translation
5b8d290 Phone and Messaging SlidingTab to LockScreen Options
e041f69 Update French translations: Overscrolling + Max 6 widgets
4b5fd6c Update Japanese taranslation
0f23841 Disable overscrolling by default.
601134c Updated Italian translations: Overscrolling toggle
e3aea8f CMParts: Add overscroll toggle to UI preferences
packages/apps/CMPartsHelper:
c52a373 Translation CMPartsHelper to Spanish
packages/apps/CMStats:
bd2e61b Translation CMStats to Spanish
packages/apps/CMWallpapers:
2fa8981 Translation CMWallpapers to Spanish
packages/apps/Camera:
50b6d6d Fix FC problem when trying to zoom after switching focus modes in camcorder.
cc596c7 Correctly switch focus modes in camcorder. Re-enable continuous autofocus in camcorder for droid, without zoom.
d102228 Camera: Make sure hardware is unlocked before starting encoder
6041ab3 Restore macro mode half-press focus functionality, and fix zoom breaking in continuous mode (was broken again in previous commit)
c0df2d1 camera: Set default video focusmode to infinity
15397be updated german translation: Camera classic mode
b09b4c5 camera: Set video focus mode on startup
70cb0e2 Updated Italian translations: Camera classic mode
31cfac3 camera: Fix update of touch-focus and touch-aec
99667a1 camera: Fix crash when attaching video to MMS.
3174e2c Add "Classic" mode to camera (mimics stock camera behavior regarding focus/shutter button)
5488e59 camera: Remove unused translations
b4abbf3 Droid - enable zoom in camcorder mode. This requires stability checking to be disabled. Camcorder will behave like stock (focus on rec. start) but allow zooming in/out.
3e04fa2 Droid fixes: Reimplement legacy AF callback in camera mode. Use instant zoom for camera instead of smooth. Video camera - disable zoom in/out
packages/apps/Contacts:
770e085 Contacts: Handle the call event only for KeyUp event.
d25225a Check the parent for null in edit_delete
7241445 Contact icon cannot be replaced when set from gallery.
acd3213 Allow user to add a phone only contact even when other contact accounts are available
packages/apps/Email:
6fbed55 Update Portuguese Translation: Account Color
c50ca00 Fix Portuguese Tranlation
188a9ce Added/updated provider settings for Yahoo-related mail domains.
abc71a1 Update Portuguese Translations: Move and Inbox Combined View
packages/apps/FM:
eff98a0 FM: Changed stepsize from 50KHz to 100KHz for these regions:
8d4ee68 FM: Fix frequency stepping and defaults
packages/apps/Gallery3D:
a43845b CacheService :: Prevent division by zero It seems that there are some situations in which thumbnailWidth will be 0. Since thumbnailWidth is used as a divisor in writeBitmapToCache, this can lead to a nasty Force Close.
0f77276 Respatch :: Changed the divisor to 9 and commented related values 9 seems as the most appropriate value for the respatch (works on default devices and allows for high res images on custom ones). Also added comments for App.RESPATCH_FACTOR (with a guide on how to tune the respatch, including how to disable it) and for App.RESPATCH_DIVISOR.
27a8e52 Calculate respatch on startup from App.java The respatch related code has now been moved into the class App which is initiated on application load. This way, the factor doesn't have to be calculated on each image load, but is calculated only once (on startup) leading to some performance improvements. Since the factor is now a part of the App class, it can be accessed from any part of the code with App.RESPATCH_FACTOR (which is now used instead of the old code in Utils.java). Also, a comment explaining the respatch in short has been added.
packages/apps/Mms:
72c9b7b Add support for chunked encoding when downloading MMS PDUs
2b02327 Fix Email.DISPLAY_NAME returns always null, use Phone.DISPLAY_NAME instead.
packages/apps/Music:
0590fc4 Play previous song when headset button is clicked thrice (tested on htc evo)
packages/apps/Torch:
6be9b32 torch: Increase timer frequency
packages/inputmethods/LatinIME:
761d186 Bulgarian явертъ (qwerty) input
system/vold:
c64a4ad vold: replace strsep by strtok_r
38a9bd9 vold: fix an offset one bug that makes partition 4 unusable
df2b594 vold: set state back to idle on formatting error
604b892 vold: remove unnecessary code from VolumeManager::unshareVolume()
e203f56 Avoid array overrun. We can now mount the /sdcard partition on our boot sdcards
bionic:
5437e94 bionic: Add NASTY_PTHREAD_CREATE_HACK
63fb162 Bionic: Aliasing problems with frexpf
20fc79a bionic: Add akm8975 header
1ecff73 bionic: Add vidc headers and 7x30 PMEM ioctls
c3bbc7e Posix-compliance: raise() didn't work with threads
e88cc3d [bionic] implement work around for tegra errata 657451
27ea3e6 link libthread_db against libc
121059d bionic: use correct TLS code path
bc9a0e1 bionic: update atomic_swap to be safe on ARMv6 and ARMv7 architecture
aff93ca bionic: don't use NEON memcpy if mfpu!=neon
device/lg/eve:
26abc72 liblights: Added caps led by Gorgonzoland
b1d6aab Copied liblights from hardware/msm7k/liblights
2f25a2d Revert "Added russian layout."
9f938df Remove config_gps_xtra_download_on_boot
frameworks/base:
bf68c70 Revert part of "GPS: Don't set XTRA download pending flag at boot time."
564dc92 overscroll: Don't overshoot unless the item is an explicit scrollable list
0ec72d9 Add the characters <>`^ to the alt-sym dialog.
f862969 Hide overscroll APIs
21c00cf Update Japanese translation
6493542 libstagefright: Fix handling of 'skip' atom in MPEG4Extractor
a611ed2 Dont store video genre metadata as audio genre in MediaScanner
8bec2da Prevent MediaScanner from removing Micro thumbnail database after scan.
dbb48f4 Avoiding cyclic references when unbinding from a service
dfc1149 Phone crash when old callback func is woken up when enabling BT.
78a97b9 Clear reference to the IIntentReceiver in order to avoid memory leak
fb43561 Fix for missing status reports for delayed messages
880f537 Light behind keyboard does not get turned off in sleep mode
8db8709 Media Player fix for pause after system suspend/resume
4311875 libstagefright: Dynamically allocate memory for esds & avcC atoms
25cea7a White energy widget icons for black statusbar (STOCK_Black)
3a79f7c Added the overscrolling bounce/weight as a preference
dc55b05 quickkeys: Add needed elements for Vision quick keys.
11a52b7 frameworks: WindowManagerService: Fix out of memory for surface error
9c3709a mouse: fix cursor movements after rotations
6d4022f Revert "Fix HID support on orientation change."
99cd468 Fix 2g/3g toggle on UMTS networks (the same fix has been already applied to Settings app power widget)
e3eedb4 updated german translation: phone and messaging sliders
b9ce135 French translations: Phone and Messaging in lockscreen
05d4804 Improve performance when getting styled string.
c777019 Release reference when putting RILRequest back into the pool.
e15ccee Fix sometimes mExpandedView will appear while screen transforming.
46e26a0 Use a system property to determine mobile interfaces
eb65905 Updated Italian translations: Phone and Messaging SlidingTab
9a982ac Phone and Messaging Lockscreen resources
adb6903 Unsolicited informational event should not be put in the response queue. It can break e.g. the reading of the asec list returned from vold - package manager then assumes no secure containers on sdcard, which can result in system_server being killed by vold during sdcard unmount, in case it keeps a recently run pkg.apk file in an asec opened.
1f63c7e libstagefright: Add check for corrupted header in mp4 file
0c6fcd9 libstagefright: Add support for files with short audio track and long video track
fd00237 libstagefright: Add check for zero chunk size.
ad23bf6 libstagefright : Fix for grey frame displayed on Seek in HTTP Streaming
1338afc Fixed issue with MPEG4 with 0 audio channels.
1c82483 libstagefright: Add support to decode mp3 data in mp4 container.
e2bb31d DropBox: Read until the end of stream has been reached
f1c1b1d Without SD card the shutdown sequence was delayed
e9b69c9 Reorder lock acquision vs try.
65569cb Fixes Issue 7907 in the public bugs database (http://code.google.com/p/android/issues/detail?id=7907).
f3e1faa TabWidget orientation
8c273e2 Adding pan behavior on preference dialog.
bda38da Make the base direction of the Arabic error pages RTL
ff52093 Set the base direction of the Hebrew error pages to RTL
8bd6b8b Change to allow separate drawable for notification counts without disturbing layout of battery percent display (HDPI).
2320814 input: Handle extra keys on Vision and Espresso separately
9cfafcd Fixed: cannot read out correct heap size from dalvik.vm.heapsize
45d9fcf Fix Expanded View showing when you disable it, and reboot.
bbc338a Added georgian glyphs to the stcok DroidS*.ttf from equivalent dejavu fonts
c454620 libstagefright: changes to enable nvidia encoder
4f7c126 [opengl] implement work around for tegra errata 657451
bcee4ac [egl] return error code for NULL num_config output parameter
d220107 [egl] add support for vendor-specific GL extensions
5336923 egl: return success for eglSwapInterval
4e26473 Revert "Make the ADB connected notification non-persistent."
2d0ec35 GPS: Initialize XTRA support when GPS is enabled
8860663 GPS: Don't set XTRA download pending flag at boot time.
261b1e3 Revert "location: Add config to control download of XTRA data on boot."
e6cca8c Add missing korean translation
dc00383 framework: Update API
ebb5e47 input: Fix keymapping and handle www/com key.
691845d Disable overscrolling by default.
8935fad Restore Overscrolling
65fd231 cameraservice: Use default overlay format unless flag set.
aad9f21 camera: Wrap getBufferInfo code in ifdefs.
731adc4 cameraservice: Changes for using overlay on 7X30
3921537 Camera: Add support for getBufferInfo API
246a451 revert Use MDPI notification count bubble for HDPI devices. It dealign status bar stuff on HDPI devices, the battery percentage is off the battery
3d0965b StagefrightMediaScanner: Call endFile() for MIDI and OGG files.
fcea37f Fix spelling error in Omit FM code when HAVE_FM_RADIO - Change I99fde73b http://review.cyanogenmod.com/210
hardware/msm7k:
4d91b26 liblights: remove our modifications for eve
e37d84a libaudio: Fix low volume bug
e804137 Revert "msm7k: Revert QCOM changes to librpc"
2f56b1c msm7k: Revert QCOM changes to librpc
1e1e2d5 librpc: Remove "backwards compatibilty" code.
a77dfc2 librpc: Do not start server thread for callback servers
8557ef5 librpc: Use infinite timeout for select call.
330e537 librpc: merging in qcom changes
f81d057 msm7k: Fix libaudio-qsd8k when FM radio isn't present.
8b7de48 msm7k: Don't build libaudio for 7x30 if BOARD_PREBUILT_LIBAUDIO
kernel:
5b5f924 Turn down the touch button led brightness a bit.
5e48a44 smd_rpcrouter_device: dump traffic for gps
fa41ac4 Fix for speakermode. Thanks to JoseMariaAraujo!
ffd3e1d Fixed AXI bus frequency, I was asking too much :)
packages/apps/Settings:
5493e3d Revert "Added option for Russian keyboard layout."
21b1c58 Update korean translation
7387a35 Settings: Display information about an additional volume
3bd953a Update korean translation
8b40f1c Update Japanese translation
d52eb12 Update korean translation
e92eede Settings: Display information about an additional volume
628674e Update korean translation
8d067ba Update Japanese translation
aa31d70 reinstate agps config in settings
system/core:
2d651dd init: Add permission to net.gannet to AID_RADIO
78080ec init: update device permissions
a96bae8 liblog: I <3 you Kineto, but STFU.
0bbff7c init: Add permissions for /dev/htc-acdb
95bf2c8 init: Add akm8975 devices for 7X30
2431c4d Add support for emmc@ prefix when mounting in init.rc
fad33eb enabel ARM_HAVE_VFP for armv5te-vfp.mk and fix vfp.S for armv5-vfp
vendor/cyanogen:
91404d4 Update prelink map for 2.2 props and prepare for RC2
393ca07 legend: Update prelink map. Prepare RC2.
863ca75 CHANGELOG
9e7c12f espresso: Changes for new libs + RC2
80c3c39 vision: Use "HTC Vision" as model name.
02ff4aa vision: Bump to 6.1.0-RC2
7dbba9c glacier: Add cyanogen_glacier target
04ec545 Add vendor information for nvidia Harmony (Viewsonic G Tablet)
0ba22bf Added glacier lunch combo
dac552f Updated 6.1.0 changelog to include updates to Incredible builds as well as updated current build name to RC2.
130a7c6 vision: Update internal build strings
5c80348 vision: Update internal build strings
ba1b81e rc4 droid - kernel/cam fixes
8609763 Removed Duplicate MMS APN Vodafone Portugal, was causing send/receive of MMS to fail.
d6b73f8 vision: Bump to RC1 \o/
hardware/qcom/gps:
ebd7a90 Hack to show satellites used in fix.
b27c53d log error if occurs on final write
6fdeec0 bit more debug
111d12e Revert "make xtra download ioctl complete without error"
4ef660f only call agps status callback when status has changed
4dc7924 queue event callbacks
2b4c29d make xtra download ioctl complete without error
4d4cd52 Fix race conditions and make code more sane
d432d56 Enabled and add debugging output
b7884b7 fix ArrayIndexOutOfBoundsException in GpsStatus
d7431a6 fix reboot after disabling and re-enabling gps with the widget
```