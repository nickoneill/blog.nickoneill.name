---
title: "An Oculus Rift Tap Menu"
date: "2014-03-28"
tags: [ "oculus", "ui" ]
---
With the big Oculus/Facebook news this week I’m finally compelled to write on the blog about a fun thing I wrote for the VR headset last month. *TL;DR:* this video:

<iframe width="800" height="450" src="//www.youtube.com/embed/HU7HOWj04Bw?rel=0" frameborder="0" allowfullscreen></iframe>

A little background: I got an Oculus Rift late last year after hearing some really impressive reviews for how it changes gaming. After playing a few (there are only a few) games with the headset I was a little disappointed as most developers didn’t really understand the changes required by a new medium. While bad design on the web might have negative consequences on sales or brand recognition, giving your users headaches and nausea is a step beyond any negative feeling the web can typically induce.

In general, the gameplay was pretty good. Actions that used projectile motion were so much more intuitive in VR (lobbing a grenade, throwing a basketball, etc) that it made dealing with a weird screen door in front of your face bearable. <span>“poor UI bothers Nick, news at 11” yeah, I know</span> It was the UI parts in between action that really bothered me.

### the ui

There’s a sweet spot for UI elements to appear in front of your face. Too far away and the text isn’t readable on the limited resolution screen of the developer kit hardware. Too close and your eyes have to quickly change their focal length back and forth, a process that can cause headaches. No one had done a really great job with these elements so far and, to be fair, it was because they wanted to focus on the fun part of games in a new medium.

My biggest issue with UI made for the headset was the strange interaction of head movements and mouse. Sometimes you clicked to select things but moved the cursor with your head, other times you were jarringly disconnected from your head movement and expected to use the mouse entirely to navigate menus.

The experience might have been slightly better for those people who played games paired with a controller, I don’t think there’s the intuitive sense that a controller will move your cursor like there is with a mouse.

Regardless, I thought I could improve on the user experience for games, even if only through the UI where users adjusted the volume or similar.

The headset has an accelerometer mounted on the front for head tracking (that is how it works, after all) and it can be used for input if filtered properly. So, instead of hovering over items and selecting them by waiting or using a button, you can simply tap the side of the headset and the accelerometer will pick up the ‘jolt’ and take some action.

### javascript and headsets

I mocked up a quick menu system with Three.js and Oculus-bridge to show off the idea. The menu is just a randomly generated tree of menu items. Use your head to point to a menu item and tap the headset on the side to select. To traverse up the menu, point at the back button and tap.

[Oculus-bridge](https://github.com/Instrument/oculus-bridge) is an excellent project from Ben Purdy ([not the first time I’ve mentioned Ben!](http://blog.nickoneill.name/tiny-nes-cartridge/)) for getting headset data into a javascript environment. It takes data from the ODK and forwards them to the local machine via websockets so any language speaking websockets can access it. Considering the small list of supported languages for the ODK, this is invaluable if you use something other than C++ or Unity and want to integrate the headset.

From there it was just a matter of getting data from the headset into Three.js and creating a scene that created and navigated menus. The former was pretty easy as boilerplate code from Oculus-bridge was available for lens distortion and head tracking. <span>despite overall questionable docs quality</span>I’ve never used Three.js previously but my idea was simple enough that I could implement most of the scene with a cursory reading of the docs.

My biggest issue turned out to be processing accelerometer data into actions reliably. <span>surprise! signal analysis is hard!</span>After a few simple moving average attempts that yielded poor results, I recorded some raw data and charted it so I could rerun different algorithms without having to put the headset on. Eventually first derivatives and moving averages solved most of my problems (I checked the [charting stuff](http://blog.nickoneill.name/oculus-menu/chart.html) into github as well).

I did fail in one of my planned features though; I wanted navigating up the tree to be a left side tap while selecting was a right side tap. The part of the ODK that combines and feeds data from all the different sensors is capped at 60Hz and while this makes sense for most uses (it is highly suggested for VR that your game run at 60 FPS), it’s not quite enough resolution to see the directionality of taps.

This is one of the key points that my chart debugging turned me onto. In accelerometer data, a headset tap looks like a big spike in the direction of tap followed by a damped response in the opposite direction, repeating until your head is fully stabilized by your neck. Acceleration data is really quick, most of the sensors out there run at 1000+Hz, and for a trimmed stream of 60Hz data some of that data is just lost. In my case, the largest initial spike was frequently dropped entirely, leaving a detectable jolt but in the opposite direction. <span>youtube comments indicate people are worried about how jarring this is, but I barely notice it</span>It wasn’t a good experience to tap left and navigate opposite of the intended direction so I dropped it for a more simplistic approach.

That said, it’s totally possible to access the 1000Hz stream directly from the accelerometer on the headset and fix this problem. It didn’t seem like a worthwhile approach in this case though, the modifications I would have to make to Oculus-bridge are almost certainly outside the scope of what the app should do for 99% of users.

### future headsets

I expect this to be available for developers targeting DK2 and the commercial version of the headset in the future. Even though the DK2 uses that fancy camera tracking system now for positioning, the accelerometer sensor is still available (and most likely used to improve tracking).

Since the UI expects you have a hand free to tap the headset, it’s probably not likely to make it into any application where you are also holding a controller or keyboard. If this method is going to been seen in the future on one of the many competing VR headsets, it will most likely be some very niche application that requires users have their hands free. <span>kinect integration maybe?</span>

All the code is [up on github](https://github.com/nickoneill/oculus-menu), or you can just [try it live](http://nickoneill.github.io/oculus-menu/) if you've got a headset and the [Oculus-bridge app](https://github.com/Instrument/oculus-bridge) already.
