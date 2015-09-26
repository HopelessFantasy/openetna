**Attention: The first boot of a new version always takes a lot of time (up to 10 minutes)**

# v6.3-rc7 #

## Changes ##
  * Reboot phone after a crash
  * After crash&reboot, the last kernel log will be at /proc/last\_kmsg
  * Fixed a bug in the wifi driver, which corrupted memory and eventually killed the device
  * Fixed [issue 393](https://code.google.com/p/openetna/issues/detail?id=393) 'Phone only charges when plugged to pc and not from outlet'
  * Fixed [issue 377](https://code.google.com/p/openetna/issues/detail?id=377) 'no light on hardware keyboard' (by trmfreitas)
  * Fixed [issue 415](https://code.google.com/p/openetna/issues/detail?id=415) 'Brightness sensor does not report a value after waking up/lcd brightness is wrong after waking up' (by trmfreitas)
  * Fixed [issue 396](https://code.google.com/p/openetna/issues/detail?id=396) 'Back button too sensitive when "kill with back button" is activated' (by trmfreitas)
  * Fixed [issue 303](https://code.google.com/p/openetna/issues/detail?id=303) 'Music button works even if screen is locked' (by trmfreitas)
  * Show the "Gps active" icon earlier

## Git log ##
```
frameworks/policies/base:
9f5f04d Corrected PhoneWindowManager.java this is probably the last correction.
caddce3 Made a safety verification on the kill with the back button callback. Only kills if the back button is still pressed.
f69f61d PhoneWindowManager.java changed to correct issue 303 (music plays even if screen is locked) and 396 (back kill too sensitive)
device/lg/eve:
b938066 Corrected values. Changed config.xml autobrightness values issue 377
008efaa Corrected values. Changed config.xml autobrightness values issue 377
frameworks/base:
82a2548 Move HACK to other place
56f2ccd Corrected PowerManagerService.java
e0bff88 Changed PowerManagerService.java
f92c0d8 Changed PowerManagerService.java
hardware/msm7k:
dbbc973 libaudio: Remove unused bluetooth endpoints
kernel:
ed9216e Revert "drivers_mmc: Supersonic/Wimax/mmc/dma updates mmc driver to support wimax sdio funcytion."
b51eaac Revert "Enable memmory mapping for new radio"
d14fa68 msm72k_udc: always call usb_connected(), as we cannot determine wall charger
0f51ba2 rpc_charger: fix race condition
2cca7a8 board-eve: add reset hook, so device can reboot after panic
0269385 bcm4329: destroy wake_lock if module_init failed
50d37d3 board-eve-touchkeys: fix using irq number as gpio
0d6644c bcm4329: call wake_lock_destroy
477885a cm: D/S: Update defconfig
3fe5931 Enable memmory mapping for new radio
a185ce9 cm: supersonic: Update defconfig
6ae90aa msm_q6venc: Fixed a bug in double stop.
84afc46 cm: supersonic: Update defconfig
3196673 drivers_mmc: Supersonic/Wimax/mmc/dma updates mmc driver to support wimax sdio funcytion. this corrects the issues with the wimax SQN driver.
a5567f3 Revert "usb: gadget: Add compatible switch device for UMS"
aa25dbb cm: Update defconfigs
6e30a07 Release 2.6.35.10
6ff639d Fix pktcdvd ioctl dev_minor range check
e9ecd66 Un-inline get_pipe_info() helper function
937026c Export 'get_pipe_info()' to other users
7563e68 Rename 'pipe_info()' to 'get_pipe_info()'
5debb89 nmi: fix clock comparator revalidation
786d862 r8169: fix checksum broken
f9af870 r8169: (re)init phy on resume
a31d06b r8169: fix rx checksum offload
0c3d0ae cfg80211: fix extension channel checks to initiate communication
fb13dc6 rds: Integer overflow in RDS cmsg handling
42f44d7 econet: fix CVE-2010-3848
c0546e2 econet: fix CVE-2010-3850
a8fd852 econet: disallow NULL remote addr for sendmsg(), fixes CVE-2010-3849
aae81ca crypto: padlock - Fix AES-CBC handling on odd-block-sized input
727b780 x25: Prevent crashing when parsing bad X.25 facilities
a19fb37 can-bcm: fix minor heap overflow
8a3cd40 filter: make sure filters dont read uninitialized memory
5ba3f32 net: optimize Berkeley Packet Filter (BPF) processing
94444ed memory corruption in X.25 facilities parsing
ee40602 OMAP3: DMA: Errata i541: sDMA FIFO draining does not finish
91fe45c omap: dma: Fix buffering disable bit setting for omap24xx
1786d9a Input: i8042 - add Sony VAIO VPCZ122GX to nomux list
2588881 net: Limit socket I/O iovec total length to INT_MAX.
c4907d9 net: Truncate recvfrom and sendto length to INT_MAX.
62257ba genirq: Fix incorrect proc spurious output
16924aa nohz/s390: fix arch_needs_cpu() return value on offline cpus
97eaa32 wmi: use memcmp instead of strncmp to compare GUIDs
f67ac93 PM / Hibernate: Fix memory corruption related to swap
ed8f6d4 ARM: 6456/1: Fix for building DEBUG with sa11xx_base.c as a module.
f3e2ae7 perf: Fix inherit vs. context rotation bug
6d1287a Staging: batman-adv: ensure that eth_type_trans gets linear memory
284447d staging: rtl8187se: Change panic to warn when RF switch turned off
266b002 Staging: frontier: fix up some sysfs attribute permissions
3761550 Staging: samsung-laptop: fix up my fixup for some sysfs attribute permissions
a710d8e Staging: samsung-laptop: fix up some sysfs attribute permissions
4cf4674 Staging: iio: adis16220: fix up my fixup for some sysfs attribute permissions
331c33e Staging: iio: adis16220: fix up some sysfs attribute permissions
d972869 Staging: udlfb: fix up some sysfs attribute permissions
490ced3 leds: fix bug with reading NAS SS4200 dmi code
c5c43fa ARM: 6482/2: Fix find_next_zero_bit and related assembly
e34e996 ARM: 6489/1: thumb2: fix incorrect optimisation in usracc
b42e03b ARM: 6464/2: fix spinlock recursion in adjust_pte()
787a0f3 perf_events: Fix perf_counter_mmap() hook in mprotect()
cbbaf9d DECnet: don't leak uninitialized stack byte
9598196 mmc: fix rmmod race for hosts using card-detection polling
5c6cceb x86: Ignore trap bits on single step exceptions
cae7b13 nommu: yield CPU while disposing VM
2e75f26 backlight: grab ops_lock before testing bd->ops
52c7573 uml: disable winch irq before freeing handler data
ab1d750 cifs: fix another memleak, in cifs_root_iget
2e6fbbd do_exit(): make sure that we run with get_fs() == USER_DS
a1ca449 cs5535-gpio: apply CS5536 errata workaround for GPIOs
c108808 saa7134: Fix autodetect for Behold A7 and H7 TV cards
81c2662 PNPACPI: cope with invalid device IDs
ebc69ff ACPI: debugfs custom_method open to non-root
bb9388e acpi-cpufreq: fix a memleak when unloading driver
0c1d7a8 ACPI battery: support percentage battery remaining capacity
cf52c9b e1000: fix screaming IRQ
ba2e828 USB: fix autosuspend bug in usb-serial
bf5eec3 USB: serial: ftdi_sio: Vardaan USB RS422/485 converter PID added
5feae5e USB: ftdi_sio: Add ID for RT Systems USB-29B radio cable
1fb9275 USB: misc: usbsevseg: fix up some sysfs attribute permissions
d51f782 USB: misc: trancevibrator: fix up a sysfs attribute permission
a9acefc USB: misc: usbled: fix up some sysfs attribute permissions
c98635f USB: misc: cypress_cy7c63: fix up some sysfs attribute permissions
f3423a3 USB: atm: ueagle-atm: fix up some permissions on the sysfs files
9faa216 USB: storage: sierra_ms: fix sysfs file attribute
491b74e USB: EHCI: fix obscure race in ehci_endpoint_disable
8f7cbdd Staging: rt2870: Add USB ID for Buffalo Airstation WLI-UC-GN
49cfe5d usb: core: fix information leak to userland
da6269b usb: misc: iowarrior: fix information leak to userland
c4cb8e5 usb: misc: sisusbvga: fix information leak to userland
8a18cd8 USB: option: fix when the driver is loaded incorrectly for some Huawei devices.
fa583e5 USB: ftdi_sio: add device IDs for Milkymist One JTAG/serial
a7c0d2f usb: musb: fix kernel oops when loading musb_hdrc module for the 2nd time
f117ea8 USB: gadget: AT91: fix typo in atmel_usba_udc driver
6193339 xhci: Don't let the USB core disable SuperSpeed ports.
071cfc3 xhci: Setup array of USB 2.0 and USB 3.0 ports.
c8154dd xhci: Fix reset-device and configure-endpoint commands
ec42166 xHCI: fix wMaxPacketSize mask
2201b3a PCI: fix offset check for sysfs mmapped files
cfe6222 PCI: fix size checks for mmap() on /proc/bus/pci files
0ae8306 libata: fix NULL sdev dereference race in atapi_qc_complete()
c863472 sched: fix RCU lockdep splat from task_group()
19884b1 intel-gtt: fix gtt_total_entries detection
bd7c2e5 drm/i915/sdvo: Always add a 30ms delay to make SDVO TV detection reliable
2adb69e exec: copy-and-paste the fixes into compat_do_execve() paths
edf7203 exec: make argv/envp memory visible to oom-killer
2c69505 drm/radeon/kms: fix interlaced and doublescan handling
2d207cf drm/radeon/kms: Fix retrying ttm_bo_init() after it failed once.
c6dca72 drm/radeon/kms: add workaround for dce3 ddc line vbios bug
1d9fc5f drm/radeon/kms: fix typos in disabled vbios code
5b5c8e1 drm/radeon/kms/atom: set sane defaults in atombios_get_encoder_mode()
77d42a4 bio: take care not overflow page count when mapping/copying user data
40179d1 mm/vfs: revalidate page->mapping in do_generic_file_read()
c360976 latencytop: fix per task accumulator
3e31b7c radix-tree: fix RCU bug
250572a netfilter: NF_HOOK_COND has wrong conditional
adae92e netfilter: nf_conntrack: allow nf_ct_alloc_hashtable() to get highmem pages
84107bd ALSA: hda: Use "alienware" model quirk for another SSID
25a9275 ALSA: Fix SNDCTL_DSP_RESET ioctl for OSS emulation
8ceeffe ALSA: HDA: Add an extra DAC for Realtek ALC887-VD
e521ba6 ALSA: hda - Fix ALC660-VD/ALC861-VD capture/playback mixers
3b8d11f ALSA: hda - Use ALC_INIT_DEFAULT for really default initialization
6c5e06d ALSA: hda: Add Samsung R720 SSID for subwoofer pin fixup
761ea5d ALSA: hda: Add speaker pin to automute Acer Aspire 8943G
f616186 ALSA: hda - Added fixup for Lenovo Y550P
4f121e7 ALSA: HDA: Add fixup pins for Ideapad Y550
74c1b17 ALSA: ac97: Apply quirk for Dell Latitude D610 binding Master and Headphone controls
c3fe46a ALSA: hda - Fixed ALC887-VD initial error
87768cb firewire: ohci: fix race in AR split packet handling
b74e707 firewire: ohci: fix buffer overflow in AR split packet handling
201fb29 ASoC: wm8961 - clear WM8961_MCLKDIV bit for freq <= 16500000
8a39cab ASoC: wm8961 - clear WM8961_DACSLOPE bit for normal mode
1c82be4 ASoC: Remove volatility from WM8900 POWER1 register
8fa80a9 KVM: Correct ordering of ldt reload wrt fs/gs reload
921e041 KVM: x86: fix information leak to userland
337921e KVM: Write protect memory after slot swap
8af9b57 drivers/media/video/cx23885/cx23885-core.c: fix cx23885_dev_checkrevision()
fe06c3b hdpvr: Add missing URB_NO_TRANSFER_DMA_MAP flag
931827d gspca - sonixj: Fix a regression of sensors hv7131r and mi0360
aaed338 HID: Fix for problems with eGalax/DWAV multi-touch-screen
e2b4c10 usbnet: fix usb_autopm_get_interface failure(v1)
8714a84 TTY: ldisc, fix open flag handling
b8c56a4 tty_ldisc: Fix BUG() on hangup
11dd808 TTY: restore tty_ldisc_wait_idle
35989f5 tty: prevent DOS in the flush_to_ldisc
db69550 ALSA: hda: Use BIOS auto-parsing instead of existing model quirk for MEDION MD2
8734b5b md: fix return value of rdev_size_change()
55a59c6 md/raid1: really fix recovery looping when single good device fails.
fffaa40 ecryptfs: call vfs_setxattr() in ecryptfs_setxattr()
60f237c eCryptfs: Clear LOOKUP_OPEN flag when creating lower file
7486731 sata_via: apply magic FIFO fix to vt6420 too
4f1d8d9 viafb: use proper register for colour when doing fill ops
6264b2c drivers/char/vt_ioctl.c: fix VT_OPENQRY error value
8769f5e net: NETIF_F_HW_CSUM does not imply FCoE CRC offload
0108740 ipc: shm: fix information leak to userland
089a9f8 ipc: initialize structure memory to zero for compat functions
c401d48 xen: don't bother to stop other cpus on shutdown/reboot
55efdc0 xen: ensure that all event channels start off bound to VCPU 0
628d851 sgi-xpc: XPC fails to discover partitions with all nasids above 128
50b0c4e drivers/misc/ad525x_dpot.c: fix typo in spi write16 and write24 transfer counts
26708e8 ssb: b43-pci-bridge: Add new vendor for BCM4318
bf578b4 wireless: b43: fix error path in SDIO
5e83b5c b43: Fix warning at drivers/mmc/core/core.c:237 in mmc_wait_for_cmd
2a5d644 agp/intel: Also add B43.1 to list of supported devices
7f66f42 mm: fix is_mem_section_removable() page_order BUG_ON check
b59aeda mm, page-allocator: do not check the state of a non-existant buddy during free
da70d26 mm: fix return value of scan_lru_pages in memory unplug
880839d oprofile: Fix the hang while taking the cpu offline
d672d70 hwmon: (lm85) Fix ADT7468 frequency table
f832a4c numa: fix slab_node(MPOL_BIND)
2200e9b um: fix global timer issue when using CONFIG_NO_HZ
d1a35d4 um: remove PAGE_SIZE alignment in linker script causing kernel segfault.
eea6650 ipmi: proper spinlock initialization
121e988 percpu: fix list_head init bug in __percpu_counter_init()
6c6f225 olpc_battery: Fix endian neutral breakage for s16 values
716db34 hpet: unmap unused I/O space
83c975f hpet: fix unwanted interrupt due to stale irq status bit
803eb2f Staging: line6: fix up some sysfs attribute permissions
d95b9f7 ALSA: hda: Use hp-laptop quirk to enable headphones automute for Asus A52J
57db3ae Staging: asus_oled: fix up my fixup for some sysfs attribute permissions
592698f Staging: asus_oled: fix up some sysfs attribute permissions
10e11f7 staging: rt2870: Add new USB ID for Belkin F6D4050 v1
3b58799 reiserfs: don't acquire lock recursively in reiserfs_acl_chmod
37c25bb reiserfs: fix inode mutex - reiserfs lock misordering
3aeb0d3 SH: Add missing consts to sys_execve() declaration
39b2015 pcnet_cs: add new_id
d77be44 drm/i915/overlay: Ensure that the reg_bo is in the GTT prior to writing.
991a0fa drm/i915: diasable clock gating for the panel power sequencer
8316f3c drm/i915: Free hardware status page on unload when physically mapped
0ad4b95 drm/radeon/kms: fix handling of tex lookup disable in cs checker on r2xx
2cc78b0 drm/radeon/kms: make sure blit addr masks are 64 bit
686ffa3 drm/radeon/kms: properly compute group_size on 6xx/7xx
037880a drm/radeon/kms: MC vram map needs to be >= pci aperture size
2868e9d NFS: Don't SIGBUS if nfs_vm_page_mkwrite races with a cache invalidation
8041720 NFSv4: Fix open recovery
dc69d18 NFSv4: Don't call nfs4_state_mark_reclaim_reboot() from error handlers
60f6787 NFSv4: Don't call nfs4_reclaim_complete() on receiving NFS4ERR_STALE_CLIENTID
9d70857 microblaze: Fix build with make 3.82
506d1fa powerpc: Fix call to subpage_protection()
6b203ad ALSA: HDA: Enable internal mic on Dell E6410 and Dell E6510
e4fab7a ALSA: OSS mixer emulation - fix locking
7a699e3 ALSA: hda - Add some workarounds for Creative IBG
4b99eda ALSA: hda - Fix wrong SPDIF NID assignment for CA0110
f48695f drm/radeon/kms: register an i2c adapter name for the dp aux bus
c39ee30 viafb: fix i2c_transfer error handling
edc742b i2c-pca-platform: Change device name of request_irq
52a6bec isdn/gigaset: bas_gigaset locking fix
c4ca9f62 isdn/gigaset: correct bas_gigaset rx buffer handling
531f1fa isdn/gigaset: fix bas_gigaset AT read error handling
a4e5249 mac80211: delete AddBA response timer
ce90a56 mac80211: don't sanitize invalid rates
907bb09 mac80211: Fix ibss station got expired immediately
d386020 mac80211: reset probe send counter upon connection timer reset
5ec886c mac80211: clear txflags for ps-filtered frames
4742876 mac80211: use correct station flags lock
c09c748 mac80211: disable beacon monitor while going offchannel
84dbc99 mac80211: send last 3/5 probe requests as unicast
9c733e7 mac80211: make the beacon monitor available externally
4b0a5d2 mac80211: reset connection idle when going offchannel
fd94a9d mac80211: add helper for reseting the connection monitor
77e4a5b mac80211: Fix signal strength average initialization for CQM events
98301c8 mac80211: fix offchannel assumption upon association
8d79e15 mac80211: fix channel assumption for association done work
e6f32bb cfg80211: fix regression on processing country IEs
e2e7282 cfg80211: fix locking
be6a351 cfg80211: fix BSS double-unlinking
7e9cf03 irda: Fix heap memory corruption in iriap.c
6d18ead irda: Fix parameter extraction stack overflow
443ab0e jme: Fix PHY power-off error
c883bd1 drm/radeon/kms: don't disable shared encoders on pre-DCE3 display blocks
7d9b882 block: check for proper length of iov entries in blk_rq_map_user_iov()
e583ce6 block: take care not to overflow when calculating total iov length
b61ec97 block: limit vec count in bio_kmalloc() and bio_alloc_map_data()
fa26aca block: Fix race during disk initialization
26ede2d block: Ensure physical block size is unsigned int
ef5f21e supersonic: Enable bcm4329 CSCAN for Android 2.3
d5a61c2 cm: bravo(c): updated defconfig
d3f62b7 Various updates from HTC
66eaeb4 supersonic: Update for new camera drivers
058e438 msm: camera: New camera drivers from HTC
1db1c48 cm: mahimahi: Update defconfig
3dfa1fa cpufreq interactive governor: fix crash on CPU shutdown
9d844d2 staging: android: lowmemorykiller: Don't wait more than one second for a process to die
0521dcb lowmemorykiller: don't unregister notifier from atomic context
2ea3561 net: wireless: bcm4329: Update to version 4.218.248-18
f4efec8 cgroup: Remove call to synchronize_rcu in cgroup_attach_task
ba8eef2 cgroup: Set CGRP_RELEASABLE when adding to a cgroup
d9139bb bravo(c): tune handset audio
android:
62a587e Move frameworks/policies/base to openetn
3356857 Release 6.3-rc6
vendor/cyanogen:
d3bda19 eve: disable compcache by default
ndk:
8bff717 Minor doc fixes.
9a99271 Simplify x86-4.4.x toolchain setup.mk
```

# v6.3-rc6 #

## Changes ##
  * Should fix the (A)GPS [issue 354](https://code.google.com/p/openetna/issues/detail?id=354) by downloading xtra data the right way

## Known Issues ##
  * Backlight on the keyboard and touchbuttons is influenced by brightness. This may need some more tuning.

## Git log ##
```
frameworks/base:
32ebf07 Revert "Revert "Revert part of "GPS: Don't set XTRA download pending
flag at boot time."""
android:
5ba06ce Release 6.3-rc5
ndk:
ed000ed Fixed LOCAL_WHOLE_STATIC_LIBRARIES handling.
```

# v6.3-rc5 #

## Changes ##
  * Fixed wifi hangs. Battery will drain faster, if you set "Wifi Sleep policy" to "Never" as that keeps the phone from suspending. Not even Lg could get this to work.
  * Maybe fixed proximity sensor weirdness during call
  * Add a RTL fix to webkit

## Known Issues ##
  * Backlight on the keyboard and touchbuttons is influenced by brightness. This may need some more tuning.

## Git log ##
```
external/webkit:
c757f76 Added Ayman Al Sanad's webkit Arabic shaping integration
frameworks/base:
6f8817e Wifi: lower timeout for sleep as this blocks suspend on the eve
kernel:
57bf4df prox_sharp: aquire wake_lock in isr
f6bfce1 bcm4329: set config values (from lg's /data/misc/wifi/config)
d7836ac bcm4329: keep system from suspending while wifi is active
e5cd3c2 board-eve: increase ramconsole size
e8078ee board-eve: add ramconsole for last_kmsg device
android:
4119942 Move webkit to openetna
0a93518 Release 6.3-rc4
```

# v6.3-rc4 #

## Changes ##
  * Fix some bugs with the backlight, especially the issue where there is a
> dark region in the lower left corner
  * lower up\_threshold for lower cpu latency
  * Added an OpenEtna app, which (for now) will assist in installing google
> apps. It will be automatically launched on boot, if gapps are not installed.

## Known Issues ##
  * The wifi chip will hang, when the device goes to sleep, but should be
> restarted automatically afterwards
  * Backlight on the keyboard and touchbuttons is influenced by brightness.
> This may need some more tuning.

## Git log ##
```
device/lg/eve:
f46021c full_eve: include OpenEtna app
10be184 init.eve.rc: change cpufreq governour to ondemand and lower
up_threshold to 80
kernel:
185edc8 board-eve-backlight: fix various race conditions
a954b2e config: enable frequencies up to 710 Mhz
b28f98d board-eve-backlight: Also enabled led 5 and 6
android:
877cf0b Release 6.3-rc3
d538844 added app OpenEtna
71c7983 Release 6.3-rc2
system/core:
5b03b9e set world-readable permission on /system/etc/init.d/15checkgapps
```

# v6.3-rc2 #
  * Needs google apps file "gapps-mdpi-tiny-20101020-signed.zip" to be put on your sdcard
  * Touch buttons (Home&Back) should react better, vibration feedback added
  * Wifi should recover from hangs automatically
  * Readded LatinIME
  * Made flashlight work, added Torch app
  * Fix detection of headphones
  * Better handling of the proximity sensor
  * Kernel now uses 20MB less ram
  * Finally the light sensor (and thereby automatic backlight) is fixed

```
device/lg/eve:
81fbe5f sensors_ak8973: fix reading of proximity/light sensor state
44b7cd8 AndroidBoard.mk: install more features
8ebbf47 full_eve: add Torch and lights.eve
kernel:
2001252 akm8973: enable/disable proximity sensor dynamically
1ce1cbb prox_sharp: use set_irq_wake and export an interface to the kernel
470b0b3 board-eve-touchkeys: cleanup alot, make more responsive, add vibration
f0a0914 board-eve-wifi: cleanup
15a11d9 board-eve-vibrator: export interface to kernel
5e061f9 msm_ts: remove block_touch()-logic
d5962ad bcm4329: return error if stuck so userspace will restart us
315dd2a eve_flash_light: move the sysfs files to the right place
cbf966c mv9319: remove unused calls into the backlight driver
4ab6194 board-eve-backlight: fix brightness setting and sensor reading
1fa0ad9 board-eve: add detection of headphones
ba1f7c8 eve_flash_led: implement the leds/flashlight interface
22fee91 board-eve: reserve pmem sizes as in lg-2.6.32. Saves 20 MB ram
android:
4afd248 Readd LatinIME
6752177 Release 6.3-rc1
```


# v6.3-rc1 #
  * Needs google apps file "gapps-mdpi-tiny-20101020-signed.zip" to be put on your sdcard
  * System.img and boot.img are released together from now on
  * Finally our shiny new cyanogen based and heavily modfied 2.6.35 kernel
  * Fixed [issue 123](https://code.google.com/p/openetna/issues/detail?id=123) 'video recording doesn't work'
  * Can take 5 MP pictures (thanks to saxando4u)
  * 3D is more than twice as fast as in 6.2-rc1
  * You should not be promoted to choose between two provision apps on first boot
  * Framework for software controled automatic backlight (does not work yet)
  * Bluetooth should work again

```
packages/apps/Camera:
29ad4ba Added 5MP option
packages/inputmethods/LatinIME:
device/lg/eve:
97b9378 BoardConfig: use bcm4329 driver
d2d21e0 Add source of libcamera, but disable for now
4ef9526 BoardConfig: disable BOARD_OVERLAY_FORMAT_YCbCr_420_SP
6bcbba6 overlay: enable automatic brightness
66b34b6 init.eve.rc: use new bluetooth firmware
d7ed5e2 init.eve.rc: cgroups setup from lg's
frameworks/base:
3c10915 Revert "More verbose debugging in AudioFlinger"
kernel:
(switched to branch android-msm-2.6.35-unified)
android:
23892ad Move Camera to OpenEtna
5f0c5c7 Revert "kernel: change branch to android-lg-2.6.32"
3520324 Remove Provision, LatinIME, and Quicksearchbox
82f1d12 Release system6.2-rc1-boot3.0
ndk:
f443f17 rebuild-all-prebult: replace --try-x86 option with --arch
e28115c add the x86-4.4.x toolchain
bc4b67a rebuild-all-prebult: add options for binutils-version, mpfr-version,
sysroot
6e57947 prebuilt-common: Allow versioning of GCC to be 4.4.x
f178bf5 prebuilt-common: Update the PLATFORM and API target for x86
8ac0204 package-release: add the --abi flag
fe1ae51 build-gcc: TMPLOG wasn't being set
a688b1e build-gcc: add the mpfr-version option
1b57d2e build-gcc: add the initfini-array configure flag
57aafae dev-system-import: add sys/procfs.h, fix location of fenv.h
9d5ac07 dev-system-import: Bump the toolchain revision to 4.4.x for x86
b224b2b dev-system-import: Add the option to specify the toolchain-prefix
```

# system v6.2-rc1/boot v3.0 #
  * Needs new google apps file "gapps-mdpi-tiny-20101020-signed.zip" to be put on your sdcard
  * Using lg's proprietary libs from their froyo release
  * New Brightness sensor
  * Camera is working again
  * Using modified 2.6.32 kernel from lg's froyo release

[Detailed changelog](ChangeLogSystem6p2rc1Boot3p0.md)

# boot v2.4.4 #
  * Fixed a touchscreen calibration bug in the bot v2.4.3

# system v6.1-rc5/boot v2.4.3 #

  * A lot of work into gps, fixed [issue 295](https://code.google.com/p/openetna/issues/detail?id=295), mainly by Richard A. Burton
  * Fixed [issue 262](https://code.google.com/p/openetna/issues/detail?id=262) "Speaker Mode doesn't turn on (or doesn't work properly)" by JoseMariaAraujo
  * Turn down the touch button led brightness a bit by Richard A. Burton
  * Fix low volume bug, [issue 210](https://code.google.com/p/openetna/issues/detail?id=210)
  * Added caps led by Gorgonzoland

[Detailed changelog](ChangeLogSystem6p1rc5Boot2p4p3.md)

# system v6.1-rc4/boot v2.4.2 #

  * Fixed [issue 49](https://code.google.com/p/openetna/issues/detail?id=49) 'AGPS is not working' by Richard A. Burton
  * Added support for using the Home- and Backbutton LEDs as notification by Richard A. Burton
  * Fixed [issue 191](https://code.google.com/p/openetna/issues/detail?id=191) 'Gapps does not install on reboot'
  * Added support for overclocking by saxando4u

```
build:
ec33a58 add makerecoveries.sh script
31f2caf Fix build on OS X Snow Leopard.
development:
56bad54 Development: Fix monkey
external/libpng:
89186e1 png: Bug fix for artifact seen in Gallery3D path bar
external/openvpn:
fa86dc0 add HOST header while using http proxy tunel
0a99d82 openvpn update to 2.1.3
523f53f Revert: add HOST header while using http proxy tunel
packages/apps/Browser:
8bad038 Add support for Content-Disposition when save link
074f584 update Simplified Chinese translation.
629e41d Changed zh-rCN/string.xml to follow CM style, updated Simplified
Chinese translation
packages/apps/CMParts:
f65f695 Updated Italian translations: Notification power widget arrays Revised
some strings
825441a German: many updated translations at once
84875a9 German: translate entry arrays
674a811 Update Russian translation
870c60d Update korean translation
packages/apps/CMPartsHelper:
bf9e8dc Add korean localization
packages/apps/CMStats:
9a374a3 Add korean localization
packages/apps/Camera:
82ee615 Update Russian translation
3a9a7dc update Simplified Chinese translation.
61bba4a update Simplified Chinese translation.
046c1bd update Simplified Chinese translation.
packages/apps/Contacts:
186b073 update Simplified Chinese translation.
168580e Updated Simplified Chinese translation
packages/apps/DSPManager:
c231e11 update Simplified Chinese translation.
0622fef German: initial translation
packages/apps/DeskClock:
97669e9 update Simplified Chinese translation.
19db6c7 Make volume button behavior always default to 'none.'
b2c979e German: alarm to go off indefinitely
packages/apps/Email:
367ffd5 German: Email widget
051962f Changed method to get the hostname parameter for the HELO/EHLO SMTP
command. This change is necessary for me to have my outgoing emails not
rejected by my Postfix server.
packages/apps/FM:
061588a German: complete overhaul of translations, added new, removed values_*
in arrays.xml, fix encoding
packages/apps/FileManager:
2c9c906 Updates Simplified Chinese translation
packages/apps/Mms:
c1d3408 Portuguese: MMS Change name, add missing
65c189b German: Attachment save folder
packages/apps/Music:
e750dd0 Handle onPaue/onResume race in StreamStarter
089a65d German: initial translation English: formating and typo fixes
364a42f Make PlaylistBrowserActivity handle missing playlist extras.
6bf872b Fixes issue 1787 by removing progress bar from Music widgets
packages/apps/Torch:
f34cf16 Torch: calibrated Hz, added BPM, lowered minimum frequency, a few
small fixes
bc23381 German: updated translations English: remove white spaces
packages/providers/MediaProvider:
ea685a5 MediaProvider: catch OutOfMemoryError when creating thumbnails.
ef2f5b8 Adding null check on Cursor c in MediaProvider.getAlbumArtOutputUri
system/bluetooth:
e59a328 Revert "System/bluetooth/bludroid:Remove the 3 second delay after
starting bluetoothd"
0eb3c31 System/bluetooth/bludroid:Remove the 3 second delay after starting
bluetoothd
system/vold:
cf91995 vold: Only use EXTERNAL_STORAGE for SEC_ASECDIR (cm-issue 2470)
device/lg/eve:
bfcf00e build out own gps stuff
5523245 add notification light (back & home button)
4fd1d9b 15checkgapps: fix FAT partition detection
b795678 Include LiveWallpapersPicker
frameworks/base:
7b58f10 MountService: Remount all volumes after USB disconnect
b4869cf Revert "Revert "audio: Omit FM code when HAVE_FM_RADIO is not set""
d5b54a8 Revert "audio: Omit FM code when HAVE_FM_RADIO is not set"
b619086 Prevent system crash when OOM in Binder thread.
bc45d41 Use MDPI notification count bubble for HDPI devices.
7313cc3 Don't instantiate unused power buttons in StatusBarService.
c5358c4 audio: Omit FM code when HAVE_FM_RADIO is not set
6c455c8 Monkey Crash: NullPointerException in WebTextView
ff7b4a2 Update korean translation
6bcf8b9 add Simplified Chinese tranlation strings
a9c0f0d Inotify support for TSLib
9b6318d TSLib: Changes made for using TSLib
3cfa1c5 Update korean localization
hardware/msm7k:
2e5ab84 add notification light (back & home button)
b516466 libaudio-qsd8k: Omit FM code without BOARD_HAVE_FM_RADIO
ab74134 copybit: accept any FB devices starting with "msmfb"
kernel:
c835f52 Added support for overclocking. Also slightly changed available
frequencies, there are more available now below 528 MHz. I'm still not sure if
at boot it's set at 528 or higher.
9fdf9b3 Revert "Revert "patch to support better SetCPU frequency detection.
First step towards overclocking...""
1e5459b Revert "patch to support better SetCPU frequency detection. First step
towards overclocking..."
ec3a23b patch to support better SetCPU frequency detection. First step towards
overclocking...
ecd4c09 Minimal change to get accelerated video working. This keeps in Fm
related stuff that was discarded before.
55cdda1 Revert "Ported only part of qdsp5 from gaosp: previous version broke
camera." I hope this is the last time I do this.
241fba8 config: added swap support
packages/apps/Phone:
20f15b6 Update zh-CN translate for Phone setting UI
packages/apps/Settings:
35e37f0 Update korean translation
4644065 add notification light (back & home button)
80318bc Russian: Widget Picker
0517d07 Update Russian translation: PowerWidget and etc...
661f397 German: Silent state, notifications light
f35c085 Updated zh-CN translation for Settings
system/core:
d12a830 init: Add permissions for qcom/CAF audio devices
c89702f init.rc: add net_admin and net_raw permissions to rild
vendor/cyanogen:
1a164b4 Added Buzz to Changelog
aa7a8db Buzz to RC2
a0585e7 Assume ONE/Z71 device maintainership
4a20d92 Z71: Add Commtiva Z71 product
cd1b07d buzz: Add lunch combo for cyanogen_buzz
88c71c0 added working gapps mirrors. changed gapps versions to latest.
e27d5d0 Added HTC Wildfire files
348b52d added Ricco as translator for German
7f8e909 Fix China Mobile apn name.
06e781b Sholes to RC3
60367b4 Add a script to extract gapps files from downloaded zip file.
7781eab bravo: bravoc: build kernel from source
6ef158f squisher: fix OS X darwin compatibility
cdaa0e8 APN: change order of 44010.
dfd6e96 Enabling the FM Radio and Torch applications for the Droid Incredible
Build.
ad536e2 ONE: Move OTA_ASSERT_DEVICE to BoardConfig
96ef03c one: Add Geeksphone ONE product
external/flac:
ffb5049 libFLAC: fix leak in metadata_iterators.c
```

# system v6.1-rc3/boot v2.4.1 #

  * Fixed [issue 93](https://code.google.com/p/openetna/issues/detail?id=93) 'No HSDPA+ connectivity' by Kevin Flynn
  * Fixed [issue 191](https://code.google.com/p/openetna/issues/detail?id=191) 'Gapps does not install on reboot'
  * Fixed [issue 100](https://code.google.com/p/openetna/issues/detail?id=100) 'Korean SMS receive' by trustin
  * Fixed [issue 210](https://code.google.com/p/openetna/issues/detail?id=210) 'In-Call Volume low'
  * Fixed [issue 83](https://code.google.com/p/openetna/issues/detail?id=83) 'Sound glitches'
  * Fixed [issue 85](https://code.google.com/p/openetna/issues/detail?id=85) 'Audio is monophonic only'
  * Fixed [issue 227](https://code.google.com/p/openetna/issues/detail?id=227) 'Code PIN for SIM unlock network'
  * Added support for the flash LED. Attention: Some people say that using
> this too mush will burn your LED. I don't think so but I do not know. You
> can find the flashlight in the status bar dropdown, after you enabled it
> under Settings->CyanogenMod Settings->User interface->Widget buttons

```
external/jpeg:
339e4fa jpeg: Replacing VeNum YCC to RGB color conversion routines.
external/webkit:
07f4f18 Browser crash fix caused by incorrect reference counting leading
Garbage collector cleanup
packages/apps/ADWLauncher:
357a164 Properly change window properties when changing between static
wallpaper/wallpaper hack and lwp/non hack.
1ef244d Fix notification counters not displaying on dockbar shirtcuts
9879772 Fix the old old old bug where hiding the statusbar made the whole
launcher to shift down when scrolling with the trackbal. Also fixes the
"invisible statusbar" hole when expanding the notification bar while the
statusbar being hidden.
23fae6d Avoid refreshing apps adapter if counter is the same
c5aba29 Fix LiveFolders autoclose option not working
676d056 Updated Russian translation.
f480c63 Updated Italian translations: ver.1.2.0
a88d41d Update Japanese translation.
packages/apps/CMParts:
17b33fd Updated Simplified Chinese translation
23bf609 Update korean localization
08c9e25 cmparts: Fix invalid XML in translations
31230c1 Add korean localization.
5fbe88e Minor fixes to previous committed translation. Change-Id: Change-Id:
I75c80d4637bafafdbcd637a71760e0dcac194655
c76b76a Update Russian translation: Flashlight and Max Buttons
75c80d4 Updated Chinese zh-CN translations and some minor corections to the
original res xml.
packages/apps/CMPartsHelper:
08f9f35 Added Simplified Chinese translation
packages/apps/CMStats:
0197a23 Added Chinese translation for CMStats
packages/apps/Contacts:
406343d Contacts: Close cursor object after use
packages/apps/DSPManager:
c81cb18 Add Russian translation
packages/apps/FM:
150f168 Fixed bug where on FM power on, audio output device was null. Now
properly enabling output device based on UI state. Speaker icon now properly
reflects state of audio output device. It is lit if output is loudspeaker,
dark if output device is headset.
packages/apps/FileManager:
83c7824 Update Russian translation: Include/Exclude media scan
packages/apps/Mms:
758100c Updated and restructured Chinese zh-CN translations. Especially to fix
the incorrect translation of "Me".
af3f8fa Update Russian traslation
system/vold:
4ef9c31 vold: Share just the partition to UMS (cm-issue 2236)
device/lg/eve:
002e157 Enable the use of the flashlight LED by the statusbar dropdown widget
281e2e9 init.eve.rc: set right permissions on flashlight device
882e1e6 checkgapps: Use the first vfat partition on sdcard
8ddbcef Fix for issue #93 - No HSDPA+ connectivity The problem appears to be
cosmetic. This change enables the 'H' icon when in HSDPA mode.
bcd10b9 overlay/Phone/config.xml: ignore_sim_network_locked_events
e4dc90d Add fm support, still the app can't work.
aa44b75 BoardConfig.mk: Remove unneeded define
4015c95 Added proprietary libpvasf*
c05e43a Remove custom prelink map
1393b5e full_eve.mk: remove definition of dateformat
frameworks/base:
7943d45 PduPersister: Fix a NPE
bc097e9 Changing string for apn from empty to  when no string is provided by
SIM Card. This fixes the roaming problem with some virtual network providers,
since some of them have an empty string (check with getprop
gsm.sim.operator.alpha). For sure no provider will write empty in their SIM
cards. Data roaming can be disabled after that. Roaming in foreign countrys
will still work since it checks the MCC (Mobile Country Code). Thanks to my
friend Sewi for helping me finding this. :)
6a3b632 Fix stat_sys_headset for MDPI and HDPI
9e6193a Fix encoding when receiving EUC-KR SMS and MMS
22d99c5 Revert "frameworks/base: Add rendering statistics to Stagefright"
hardware/msm7k:
df8d117 Fix openetna issue 134 ' Speaker stays ON after a call and drains
battery life'
580f149 correct libaudio: Make audio routing work without htc lib
28ebd2c Revert my patch to scale max volume to 7
kernel:
0561449 board-eve: Rename the sound endpoints to standard values
ffb4239 eve_flash_led: implement the leds/flashlight interface
vendor/cyanogen:
199bde7 less confusing desire cdma name (desirec is droid eris)
372e89a make get-google-files create /proprietary in it's own directory
without needing to be in that directory when it is called
44ad6d3 Removed myself from CHANGELOG as I don't deserve to be there... yet...
hopefully
973c34f eve: disable custom prelink map

```
# system v6.1-rc2/boot v2.4 #

  * Fixed [issue 118](https://code.google.com/p/openetna/issues/detail?id=118) 'No OpenGL support' by saxando4u
  * Fixed [issue 196](https://code.google.com/p/openetna/issues/detail?id=196) 'Apps cannot be installed to SD card'
  * Fixed [issue 190](https://code.google.com/p/openetna/issues/detail?id=190) 'Google goggles won't work' by skunk73
  * Fixed [issue 86](https://code.google.com/p/openetna/issues/detail?id=86) 'Volume buttons don't adjust audio volume when phone is locked' by grant.bowering
  * Fixed [issue 13](https://code.google.com/p/openetna/issues/detail?id=13) 'Caller Id text garbled' by Kevin Flynn

```
packages/apps/Browser:
5c5de9c Update Russian translation
2df6eed Updated zh-CN translation for Browser
packages/apps/CMParts:
434a476 Added a Toast message to let you know when you reached the max buttons
54fa7a9 Updated Italian translations
47ffbf1 Update Japanese translation.
792d8f0 French translation : CMStats integration
b918b9d Update Russian translation: CMStats, Backlight and HapticTweaks
packages/apps/CMStats:
bc24a0c Add Russian translation
5d053ff Added carrier ID to the list of submitted fields.
packages/apps/Email:
bed7a6e Small hack to ensure color chip changes are applied correctly when
editing account.
2f679b8 Changed unread widget to conform better with stock. (credit to Prash!)
packages/apps/FM:
f410e7f Fixed bug where volume controls quit working after resuming playback
following a telephone call
3932fee FM: fix US mFrequencyBand Stepsize
a8d55c0 French translations: Bluetooth behaviour when removing headset
b8f7d78 add mdpi stuff
packages/apps/Gallery3D:
003208b Revert "Gallery3D: Change bitmap formats to 32 bit"
packages/apps/Music:
481f476 Fully updated Chinese Simplified (zh-CN) translation.
24fffd2 Update Russian translation
packages/apps/Protips:
135910b The Definition of Open- suggested by iShawn
device/lg/eve:
df5a198 proprietaries: Update CM proprietaries to
cm_dream_sapphire_full-220.zip
14da387 Added overlay for Gallery3D from dream_sapphire
b283327 Add qwerty.kl to prebuilt
e35045a stack: fixed directory name
7d7de6e egl.cfg: enabled hardware 3d acceleration
frameworks/base:
73a9d45 Address issue #13 - Caller Id text garbled - Work around incorrect
decoding of name and number causing 'Payphone' to be displayed on certain
networks.
7a1c9db Changed mdpi H (HSPA) icons to better match Android style
eddaed6 Removed Catch error, as it is uneccesary, and causes log spam on
devices with no flash
95d67cf Add framework support for keyboard LEDs (Caps/FN)
hardware/msm7k:
ec64115 libgralloc: Fix gralloc to call cacheflush with correct parameters
99b5ad6 msm7k: Fix device selection priority
78db1d7 msm7k: Add new device filter for Geeksphone ONE
e5a696c 7x30: Enable libaudio for 7X30.
9b98dbd libstagefrighthw: Fix build when using Eclair compatibility
3e6afa7 7x30: Don't build libaudio and gralloc for 7x30.
f1c251c overlay: Add CONFIG_MSM_MDP40
9f77472 support FM Radio
60856ae 7x30: Use the right board name in toplevel makefile.
7633f30 hardware/msm7k/libaudio-msm7x30: Merge in changes from eclair to froyo
16d65f6 libopencorehw: Add 7x30 support from CodeAurora
628cff4 libstagefrighthw: Release the pmem reference and destroy overlay when
destructor is called
6cc1de4 libstagefrighthw: Add FPS stats for 7x30
48fa407 libstagefrighthw: Add overlay renderer for stagefright
2e3d93a Add the overlay HAL module on the Froyo baseline.
kernel:
0e7ccac config: enable twofish
8a259da config: removed unneeded definitions
a62b83f config: enable IPV6
15e1ca2 Made hw3d working :-)
4f6850d Fixed config change for devicemapper
packages/apps/Camera:
a31c4e0 Update Japanese translation.
0f1ea91 Camera: support devices without accelerated GL
packages/apps/Settings:
946027c Updated zh-CN translation for Settings
8efba9e Update Russian translation: Silent state
vendor/cyanogen:
8dcb29b Update version string
d603469 Add a new paragraph for translators in Changelog
7c1c6ee CHANGELOG
be65abf CHANGELOG
1f0408e cm: Update version to 6.1.0-RC1
1c4e66b heroc/Gallery3D: Remove DIRTY UGLY HACK from Gallery3D Overlay
c25bcc1 CHANGELOG
packages/apps/Bluetooth:
2e64587 Reduce GC in Bluetooth application
1f666c5 Sanitise Bluetooth file name hint when receiving a contact
bb12c72 BT - Not possible to accept incoming obex transfers using key-presses.
7121d8c Improved bluetooth notification bar
e39772a Send vCard with Unicode encoded Strings over BT
c23b7ac PullvCardList implemented according to specification
packages/apps/SoundRecorder:
935b5e2 AndroidManifest.xml: make SoundRecorder show in launcher
```
# system v6.1-rc1/boot v2.3 #
See [here](ChangeLogSystem6p1rc1Boot2p3.md)
# system v6.0-rc6/boot v2.2 #
```
Support for korean encoding KSC5601 on SIM/SMS
Support for hardware accelerated video decoding
Capitalized splash screen

Full git log:
device/htc/bravo:
889bee5 bravo: update prebuilt kernel
2d88891 bravo: update agps props
device/htc/dream_sapphire:
d024f28 Remove not needed line - dateformat is 'globally' defined in
vendor/cyanogen/products/common.mk
device/htc/espresso:
2184a10 espresso: fix button/keyboard backlight values
device/htc/legend:
d7b14e3 Clean up lights.c.
326ff89 Ignore LIGHT_ID_ATTENTION.
5a741c2 Updated overlays.
3b98eb2 Use data for dalvik cache only.
device/htc/liberty:
a5bb974 Updated Kernel & modules, added cifs mod
device/htc/supersonic:
afa9215 supersonic: Use new amber-green notification lights code
c2848fb supersonic: Update prebuilt kernel and bcm4329 module.
7a4e357 supersonic: Enable BOARD_USE_OPENSSL_ENGINE
68956c9 supersonic: Additional blobs for WiMAX support
device/htc/vision:
e7a8eb8 vision: Make the LEDs on the G2 not suck.
c9b9977 modified extract-files.sh to remove one file not on device
external/openssl:
3a8111e openssl: Make usage of engine support optional (take 2)
4d43e78 Revert "Make usage of OpenSSL engine support optional."
69fc2d5 Make usage of OpenSSL engine support optional.
external/skia:
4202e72 Revert "skia: use S32A_Blend_BlitRow32_PROC on arm7/neon only"
269f322 Fix a bug in S32A_Blend_BlitRow32
packages/apps/DeskClock:
4eea9fb Added the ability for alarm to go off indefinitely.
4fcbce1 Enable haptic feedback on long-press of snooze button.
packages/apps/Mms:
d186c42 Allow Messaging's ComposeActivity to be started by Search Long Press.
packages/apps/Music:
31e53c6 Music: Add onDestroy function to release Jni Object references
bionic:
864d271 Revert e4fa46e75cd0d433b5c6c064720ed7e195cba7c8. It breaks MonoDroid.
device/lg/eve:
aecec85 Extract some libs from cyanogen, install libGLES_qcom.so
4dddd0e Uploaded capitalized spalsh screen.
frameworks/base:
e1237a9 lights: Enable amber-green related options by default
103944d Support for KSC5601 on SIM.
5eeb8e5 Support devices with amber/green LEDs.
kernel:
84109ba Ported only part of qdsp5 from gaosp: previous version broke camera.
4334e6d Revert "Ported qdsp5 from gaosp, in order to use new libs for video
acceleration."
acb5ec2 Ported qdsp5 from gaosp, in order to use new libs for video
acceleration.
packages/apps/Camera:
20ce356 camera: Disable focus while controls in use.
1f48eb9 camera: Fix is720p() stupidity.
packages/apps/Phone:
a10e83c Revert "Go to the Call log after *all* calls, even incoming calls."
packages/apps/Settings:
432e387 lights: Enable amber-green related options by default.
fbbaaf3 Fixed memory leak in Settings open source license activity.
c24cff7 Add settings for binary amber/green LEDs.
system/core:
e3e5fed init: Add a few things for WiMAX.
vendor/cyanogen:
457ea15 Remove crap from the CYANOGEN_WITH_GOOGLE build.
6b3c708 Update CHANGELOG
a969231 backuptool: Remove stuff we no longer care about.
994d5b0 Use newer 20100930 GApps package + new URL for new mirror system
2943022 apn list refresh from paulweiss
d44041f remove duplicate entry
```

# system v6.0-rc5/boot v2.1.1 #
```
Enable JIT by default
Under Setting->Language & Keyboard->Device keyboard
  you can switch between QWERTY,QWERTZ,AZERTY
Fixed Volume buttons

Full git log:
device/lg/eve:
858a1a8 Install the proprietary libril.so to obj/, too
6496b89 eve_qwerty.kcm: Fixed Alt+Y and Alt+A for AZERTY
50b4b88 Use right dhcpcd.conf
cc6399b Rename the keylayout from the language to their generic name
bc21bab full_eve.mk: enable JIT by default
106b233 packSystem: remove script
frameworks/base:
d551adc libui: rename keylayout property to persist.sys.kl.%s
hardware/ril:
15b99b7 Keep libril.so from building
48338ce Revert "Keep libril.so from building"
kernel:
ec7e843 board-eve-keypad.c: Make volume buttons work
packages/apps/Settings:
0d9a4e7 Implement setting for keyboard layout (QWERTY,QWERTZ,AZERTY)
external/rsync:
743f916 Merge remote branch 'rsync/b3.0.x'
c463617 Some quoting fixes/improvements.
6abb59a If we create an off_t type, define SIZEOF_OFF_T.
d79bc5c Fix rsync_xal_set reference in an error.
10cd07c Avoid infinite loop if the file's length is negative. Fixes bug 4664.
62e9eb7 Mention need of wildcard support in make. See bug 7625.
de20d72 Remove duplication for -x option.
```

# boot v2.1 #
```
Added TUN support
```

# system v6.0-rc3 #
```
Fixed the "cannot dial out" regression
Correct the keymap
```

# boot v2.0 #
```
Include NAT to make android-wifi-tether work better
Rebased ramdisk on cyanogenMod's
  This should fix "Unable to shutdown/reboot"
ATTENTION: This boot.img only works with system v6.0-rc2 (or higher)
```

# system v6.0-rc2 #
```

Starts with 'F', ends with 'royo'

Rebase the rest of our changes cyanogenMod's 6.0.0
  This brings alot of goodies
  This fixed the airplane mode not working
  This should fix the facebook app issue
  And many more
Fixed "adb install" issue
RIL: Fixed(?) responseCallList(). At least added more debbuging output to help the CallerID issue
Video playback works (sometimes a bit slow -> still no hardware acceleration)

ATTENTION: This needs a wipe, a new google apps package
           gapps-mdpi-20100930-signed.zip on your /sdcard,
		   and boot.img v2.0
```

# system v4.5-rc1 #
```
Rebase our changes for the framework, phone and settings on top of cyanogenMod's
  This gives FLAC support and much more
Made our Stk send the STK_APP_INIT_COMPLETED to trigger communcation with the RIL
```

# boot v1.7 #
```
Added iptables multiport filter so one can use DroidWall as firewall
```

# system v4.4 #
```
Fixed wifi. (If wifi still won't work for you, please do adb shell rm -R /data/misc/wifi and reboot. You will have to reenter your wifi passwords.)
Partly fixed voice search (You will have to install voice search from the market. The one installed from optedgapps-... won't work)
  You can use voice search, but afterwards logcat will be unusuable until reboot (!?)
Replaced old libhardware_legacy by the one compiled from source
Increase the volume range for in-call audio. It can be louder now.
Added klogtail.
Applied patches from codeaurora to our telephony framework.
Added more hardware information under Settings->About phone.
```

# system v4.3 #
```
Added /etc/dhcpcd.conf to fix wifi (issues 76) (thanks to Irsscl)
Fixed issue 42: so many app cannot find & see in the market
Fixed issue 86: Volume buttons don't adjust audio volume when phone is locked (thanks to grant.bowering)
Fixed issue 35: Camera does not work (many thanks to saxando4u and nopy for the biggest part of the work)
Removed depedancy on libandroid_runtime_donut
```

# system v4.2 #
```
Probably no wipe needed.
Use boot.img V1.4 or higher
Added more apns - submitted by poisins92
Added one apn for China Unicom 3GWAP - thanks to walteronly1 and poisins92
Added eve_qwerty.kl-french (thanks cioeri)
Fixed GPS
Fixed distorted images
Added JIT to dalvik (saxando4u)
Videos (all formats?) do not play
Fixed "Audio not routed to headset"
Moved most of the JNI calls from donut to eclair source
Written sensor HAL source
Written audio HAL source
  Volume changes work
  Muting and route to loudspeaker works
Written lights HAL source
  Keyboard backlight works
  Automatic brighness is back in
Compile busybox from source (from CyanogenMod)
Automatic/Manual network selection works
Switched to the Music app from CyanogenMod, this should fix the crash

Google apps have been removed due to legal restrictions
  you can reinstall them if you find optedgapps-ds-ere36b.zip, copy it to
  /sdcard/optedgapps-ds-ere36b.zip, and reboot.
```

# system v4.1 #
```
ATTENTION: Wipe needed!
Use boot.img V1.2

Replaced GoogleContactsProvider by ContactsProvider (sync is handled by GoogleContactsSyncAdapter)
Added Anycut and Rootexplorer
Updated apn list to cyanogen mod's
Upgraded libsqlite to android 2.1
Upgraded libnetutils to android 2.1
Upgraded native database functions, 
         android_os_MemoryFile, 
         android_net_NetUtils,
         android_graphics_Typeface to android 2.1 by libandroid_runtime_eclair
         This library contains the functionality of android 2.1's libandroid_runtime
         and is used to overwrite some functions of the libandroid_runtime from
         korean-v10t (which we have to use)

Fixed suid for xbin/su and bin/su. This is set in /system/bin/rc.
    Now applications can again use root

Fixed Issue 27: directional arrows messed up (thanks saxando4u for reporting)
Fixed Issue 21: Notifications Bar issues
Fixed Issue 18: Wifi issues, will connect to wep but not wpa 
    But we have to see if my fix works for networks with only WPA or only WPA2 but not both
    If you have already configured a network in a earlier version, you have to remove it and then add it again

Security issue: Dropbear is not automatically started on boot
                You can change /system/bin/rundropbear if you want it

Fixed signatures for Arc* apps, now market works and and downloading inside the browser works, too
Fixed Issue 17: Cannot import/sync contacts
    and additionally details are now shown
    (even birthday!)
```