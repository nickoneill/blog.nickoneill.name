---
title: "UX Considerations for the Dragon 2 Spacecraft"
date: "2014-05-30"
tags: ["space", "ux"]
description: "Changes I would make to the controls of the Dragon 2"
---
Yesterday evening Elon Musk presented the next generation of the SpaceX Dragon 2 module; the top part that actually makes it to the space station and back. The existing Dragon module has already delivered cargo to the ISS three times, splashing down in the ocean after reentry and descent via parachute.

The [new Dragon 2 module](http://www.spacex.com/dragon) is a step beyond that. It should descend through the atmosphere, slowed only by friction until it lights reentry and landing rockets (the SuperDraco rockets namedropped in the presentation video), slowing the craft until it comes to a comfy stop on the ground.

{{% aside %}}the combustion chamber is fully 3d-printed, probably warranting a post all by itself{{% /aside %}}

Awesome as that is, I didn't start typing just so I could describe this thing to you. The configuration Musk revealed is for a 7-person crew, two of which sit at a control console which pulls down from the ceiling above them. And as Musk tried out the seats and explained the controls, the UX decisions jumped out at me.

{{% aside %}}does a spacecraft have a ceiling? is that same surface the ceiling in space?{{% /aside %}}

Here's a shot from the webcast of Musk at the pilot's seat as he's describing the controls:

![Dragon 2 control configuration](/images/dragon-normal.jpg)

He goes on to note that the pilot can take control of the spacecraft with the joystick above and to the left of his hand. Now, I'm not sure if you've used a joystick before but generally it's more comfortable to rest your arm on something while you manipulate it. Not only is it a pain to hold your arm up for extended periods of time (this is why we don't all have giant touchscreen iMacs) but you get much better fine control of your hand and wrist when your lower arm is supported. So move that sucker down to just above the arm rest in the center.

Before you all shout "But there's no gravity in space! Holding your arm up is trivial!" at once, keep in mind that the stabilization argument still holds in zero G **and** you may have to use the joystick during high-G periods at launch or descent.

Secondly, some of those buttons seem pretty far away from both the pilot and copilot.  Having the control panel rotate down means you gain a lot of space that would otherwise be used for astronaut ingress and egress, let's take advantage of it! Now that we have some extra space that's just been freed up from moving the joystick, and assuming we're clear of the bulky astronaut suits, line those buttons up along the bottom of the displays so the pilot and copilot can get to them easily.

On the extreme side, the Soyuz control panel is so far away from the pilots that they have to use a little extension stick (called a 'ykazka') to push buttons. Let's not do that.

With those modifications in place, the new configuration looks like this:

![Reconfigured Dragon 2 controls](/images/dragon-reorg.jpg)

Much more suitable! Those were the glaring issues I saw with the layout but I'm also slightly concerned with the size and proximity of those screens to the astronauts' faces. The important information should all sit within a space that can be focused on easily, everything extraneous demoted in brightness and location.

I have no idea what information is shown on the displays themselves but I suspect that it's too much. It looks like two vertically-oriented 24" displays sitting a foot in front of your face! That's a ton of distracting material and it would probably overload the pilot if they needed to take control and understand the state of the craft in a hurry. We've made a bit of space in the center of the console where the buttons used to be, it's possible we could condense the second screen for each pilot into a central shared screen with less critical info.

{{% aside %}}and we know from experience that [bad UX can actually kill people](http://blog.nickoneill.name/the-control-system-transition/){{% /aside %}}

It seemed pretty obvious that the whole thing is a mock up but for sure someone at SpaceX actually needs to design the way astronauts use the controls, and when they do, I implore them to consider the user experience - no matter how unusual the experience may be - of the astronauts who have to actually use the thing.

{{% aside %}}an "astronaut experience designer"{{% /aside %}}