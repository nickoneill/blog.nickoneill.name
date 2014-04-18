---
published: true
title: "Ice Cream Sandwich Preview on Galaxy Tab 10.1 Google I/O Edition"
date: "2012-02-18"
tags: ["google io","android"]
---
There are a couple guides for installing CyanogenMod9 preview (Ice Cream Sandwich) on retail versions of the Samsung Galaxy Tab 10.1 but a couple quirks prevented me from readily installing it on my Google I/O limited edition from I/O 2011. I'll run down the details for Mac and Windows.

Google I/O tabs don't have the standard Recovery/Download firmware that you get when you hold POWER+DOWN on boot. Instead they have fastboot/Download. Traditional instructions tell you to use the Odin downloader to install ClockworkMod to the recovery partition, but we just use fastboot to boot to a ClockworkMod image whenever we need it. It's less steps and less chance to fuck something up.

If you've installed the android tools you already have the fastboot command line tool, otherwise you need to download a standalone version (OSX: [this one](http://rootzwiki.com/topic/5697-tool-fastboot-on-your-mac/), Windows: [there's a fastboot download in this post](http://forum.xda-developers.com/showthread.php?p=13499325#post13499325), easily searchable if either of those no longer exist). There used to be an official standalone from HTC but now people just pass around links to standalone versions. Sometimes it's called 'fastboot-mac' for the mac, you can rename it before use if you want.

A brief interlude for Windows users, and stop me if you've heard this before: you need drivers. Not stock ones. Better ones. Download this thing called [PDANet](http://junefabrics.com/android/) which is normally used for sharing your mobile internet connection through USB to your computer. We don't use it for this purpose. During install it'll ask you about reinstalling drivers, say YES and choose Samsung.

Back on both platforms. Booting into ClockworkMod is pretty easy now. Put your Tab into fastboot mode by holding POWER+DOWN on startup and selecting the left option (DOWN to change, UP to select, fastboot is the USB icon). It'll say some things about fastboot being ready. Connect the USB cable to your computer.

Windows users: PDANet will bring up a window recognizing your mobile device - CLICK THIS WINDOW. It'll attempt to connect to your device and fail. That's OK.

Mac users: just kick back and look cool.

You should be able to use your command line tool now: `fastboot devices` should return a list of devices connected to your machine (hopefully just one - your Tab). If not, you did something wrong. Bummer.

[This](http://droidbasement.com/db-blog/?p=2439) is the latest version of ClockworkMod for the Tab. Download the "Fastboot/Nvflash" version and unzip the single img file somewhere convenient.

Presuming your device is still connected and in fastboot mode, just run `fastboot boot /path/to/recovery-cwm_5.0.2.7-sam-tab-10.1.img` (the ClockworkMod image is called something like that) and your Tab will reboot into cwm recovery mode. You must do this every time you want to get into ClockworkMod. Luckily you don't have to do it more than once or twice.

That was the hard part. Now you can follow such instructions as ["How to Root your Samsung Galaxy Tab 10.1"](http://forum.xda-developers.com/showthread.php?t=1239185) which is a requirement of such tutorials as ["How to Install the CyanogenMod 9 ICS Preview Rom on the Samsung Galaxy Tab 10.1"](http://www.youtube.com/watch?v=qcvfmnJdxdQ). Don't bother with the instructions for Odin or flashing your recovery partition - just boot into CWM using the fastboot method when instructions require it.

We haven't actually changed anything on the Tab using these instructions. Both the Root and the CM9 instructions will have you drop zip files onto the flash memory of the device itself which requires you to be booted regularly but none of the fastboot commands I discuss here prevent that. Good luck!
