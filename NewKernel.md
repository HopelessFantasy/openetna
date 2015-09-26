# Feature #
  * Wifi is very stable (at least for me)
  * Usb tethering works out of the box without additional apps

# Bugs #
  * Flash light does not work
  * Brightness is not reported correctly, brightness cannot be set
  * OpenEtna boot screen is not shown (VT must be enabled)
  * Does Bluetooth sound forwarding work (use http://nohands.sourceforge.net to test)
  * FM does not work

# Minor #
  * Look at that "LG's hidden reset logic" in the old kernel's pm.c
  * we have brought our own compass driver in drivers/i2c/chips/akm8973.c but there is already one in drivers/misc/akm8973.c. See if we can use that.
  * usb wakelock is hold even if on wall charger
  * The powerbutton is connected to gpio 76?
  * GPIO 58 has something todo with gps?
  * Look at the latency of the home&back key (in touch\_so240001.c), they seem unresponsive from time to time
  * Test softap
  * Implement native decoding of some a/v formats (qdsp5). Need to add ebi1\_pmem, because those use pmem\_kalloc

# Infos #
The motion sensor is bma150, see http://www.bosch-sensortec.com/content/language4/downloads/BST-BMA150-DS000-06.pdf for a full datasheet.
The backlight driver is a [BD6083GUL](http://www.rohm.com/products/databook/driver/pdf/bd6083gul_1-e.pdf).