CyanogenMod 11 Device Configuration for Samsung Galaxy Core Prime [SM-G360H]

###Setup Vendor Blobs
- You must have a system dump of the device on your build machine.
- When done, open terminal in cm11 source root and `cd device/samsung/core33g`. Then `./extract-files.sh <path to system dump folder`. For example let the system folder be in *~/android/dump/system*, then I would type `./extract-files.sh ~/android/dump/system`.


**Where it may go wrong?**
- Sepolicies might return error.

