---
published: true
title: "Headless Mac Mini with Ubuntu"
date: "2012-04-03"
tags: ["tech", "hardware"]
---
It's time for another episode ([yet again](http://blog.nickoneill.name/ice-cream-sandwich-preview-on-galaxy-tab-101-google-io-edition.html)) of *A Technical Guide to a Niche Topic*! This episode is sponsored by my insistence that personal research not be lost to the void.

Last weekend I spent an inordinate amount of time getting Ubuntu running without a monitor on a mac mini so I figure I'd write up my findings. FYI, this is a 2009 Core Duo Mac Mini. It's not the newer unibody design though I expect many of the details still apply.

The hardest part of the whole damn thing is getting the mini to boot into Ubuntu at all since all new Macs boot with EFI and support for anything other than BIOS is rare for Linux. Luckily Boot Camp does the hard work for us since it's designed to run anything on that partition in a compatibility BIOS mode.

A fresh install of OS X would be great, but an existing install is fine as long as your disk isn't too full. To maintain our Boot Camp compatibility mode we're going to keep a small OS X partition around forever. We'll can get potential Apple firmware updates this way too.

We start in our fresh (or not) OS X machine. Download and install rEFIt, a tool that lets you choose your boot disk when you start up. **You will not see the rEFIt menu the first time you reboot**. It takes two reboots, don't ask me why - but don't reboot yet.

Open up the Boot Camp utility and set the OS X partition to something small (~10gb) and set the rest as the Boot Camp partition.

Insert your Ubuntu installation cd (yes, physical media) and reboot. Twice. The second time your rEFIt menu should show up and a smug penguin should be holding a CD. Choose that option.

Go through the Ubuntu installation as normal until you get to the disk setup. Choose to manually partition, then format your big empty Boot Camp partition as ext3 and **don't create any more partitions**. Ubuntu will probably hate on this setup as you're writing it to disk, but it will let you do it. Go through the rest of the ubuntu install.

You may be able to add a swap partition later but it's not required to boot and run Ubuntu. I'm running mysql, php-fpm, nginx, etc. and I'm only at 20% RAM usage (of 2gb).

The machine will restart after installation and rEFIt should show smug penguin again but as a disk this time. Boot it! Everything should come up OK… assuming you have a monitor plugged in.

This is probably a good time to change the rEFIt config to tell it to boot Linux first, particularly later when you won't have a monitor. You've got to be in OS X to do it, just edit the config in `/etc/EFI/refit/`.

I wanted this mini to live somewhere hidden away without a monitor so having a monitor constantly plugged in was not something I was interested in. And, of course, without a monitor plugged in the system was never getting to Ubuntu.

After restarting a number of times with screens plugged in or not, I determined that grub was halting the boot for whatever reason. To the googs!

Failure again. I set `GRUB_CMDLINE_LINUX_DEFAULT="nomodeset"` and a few other grub options, updated grub and rebooted a few times before being unable to fix the issue. I had to go to plan B.

When searching for headless Ubuntu boot issues, I came across an interesting solution that people running folding@home devised. According to them, most systems don't power a second GPU (or a first for that matter) if a monitor isn't plugged in. They wanted to run the folding stuff on an alternate GPU so they had to come up with a method for powering that GPU without actually having a second monitor.

The solution is stupidly simple. VGA connections can "simulate" a monitor by having resistance across 3 sets of pins. This can be done by literally inserting resistors into a VGA connector, as shown below. It's the DVI-to-VGA connector that shipped with the mini.

![DVI to VGA adapter with resistors](http://blog.nickoneill.name/images/dvivgaadapter.png)

I searched around for exact specifications and most people say 75 or 68ohm resistors (purple-green-black or blue-gray-black). I only had a few 68ohm resistors on hand so I used those. Apparently anything from 50-150ohm will work (not tested, explosions lol!).

Now grub loves me and restarts jump right into Ubuntu. I tucked the mac mini away and it has been happily chugging away since. Thanks, internet!
