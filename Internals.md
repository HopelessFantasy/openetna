# Luminance/Brightness/Light sensor #
The value of this sensor can't read directly. It can only be activated/deactived to control the brightness of the backlight.
The kernel references this device under drivers/video/backlight/bl\_bd6083.c

# Audio #
## Audio chip ##
Used by libaudio (hardware/msm7k/libaudio), which interfaces it by ioctl's defined in msm\_audio.h and which are processed by kernel/arch/arm/mach-msm/qdsp5/snd.c
The [MAX9877 amplifier](http://datasheets.maxim-ic.com/en/ds/MAX9877.pdf) is used for speaker and headset amplification.

## Audio routing ##
For the userspace side, see hardware/msm7k/libaudio/AudioHardware.cpp and ioctl SND\_GET\_ENDPOINT.
On the kernelspace side, the endpoints are defined in arch/arm/mach-msm/board-eve.c and structure snd\_endpoints\_list. This list maps a name (which is used in userspace) to an id (which is used by the AMSS).
Those id's are used by userspace and the SND\_SET\_DEVICE ioctl, and the kernel just passes them by rpc to the AMSS. There does not seem to be any means to enumerate the endpoints that the AMSS provides.

# The interface to the modem/radio #
Its all in arch/arm/mach-msm/smd\_rpcrouter`*`
We do rpc calls to the modem or register servers which will answer rpc calls from the modem.
We provide servers in
```
drivers/power/lge_battery.c (our battery status)
arch/arm/mach-msm/rpc_server_misc.c (LG specific, something about FLEX)
arch/arm/mach-msm/rpc_server_time_remote.c
arch/arm/mach-msm/rpc_server_handset.c
arch/arm/mach-msm/rpc_server_dog_keepalive.c
```
[to come](more.md)

# The screen #
The backlight is in kernel/drivers/video/backlight/bl\_bd6083.c. It also includes the automatic brightness control.
The touchscreen is in kernel/drivers/input/touchscreen/msm\_touch.c.
The framebuffer device and the mddi interfaces is under kernel/drivers/video/msm/.

# Other devices #
```
The Home and Back button are driven by kernel/drivers/input/touchscreen/touch_so240001.c.
The VolumeUp/Down buttons and the slide mechanism are driven by kernel/arch/arm/mach-msm/board-eve-keypad.c.
The proximity sensor is in kernel/drivers/input/misc/prox_sharp.c.
The qwerty keyboard is in drivers/input/keyboard/kbd_pp2106.c.
The backlight for the qwerty and the soft buttons is in drivers/input/misc/keyled_pm.c.
The vibrator is in drivers/misc/vibrator_eve.c. To power on/off the vibrator motor, this uses functions from the backlight driver(?).
The camera chip is in drivers/media/video/msm/mv9319.c.
```