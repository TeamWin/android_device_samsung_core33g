Copyright 2014 - The CyanogenMod Project
===================================

Device configuration for Samsung Galaxy Core Prime SM-G360H (core33g)

		instruction how to build twrp

I think you already set up build enviroment so I will skip this.
After you finshed repo sync go in your working dir/device/ and create folder /samsung/core33g and copy content of core33g that you downloaded from here.
Then create folder kernel/samsung/core33g and copy content from https://github.com/hash07/android_kernel_samsung_core33g to it

		. build/envsetup.sh
		lunch omni_core33g-userdebug && make recoveryimage

Your build will start and you will find your recovery.img in your working dir/out/target/product/core33g

To make it flashable via ODIN you have to make it recovery.tar.md5
Navigate with terminal where you save your recovey.img .
For example cd android/out/target/product/core33g
where android is name of your working dir
and run command:

		tar -H ustar -c recovery.img > recovery.tar
		md5sum -t recovery.tar >> recovery.tar
		mv recovery.tar recovery.tar.md5
        
An now you got recovery.tar.md5 ready to be flashed usin ODIN selected as PDA file

HAppy Building :p