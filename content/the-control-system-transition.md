---
published: true
title: "The Control System Transition"
date: "2012-04-08"
tags: ["airplanes", "ux"]
---
Here's a fascinating look at some unique problems our society is experiencing during the transition between primarily Human to primarily Computer-based control of critical systems.

"[People Make Poor Monitors for Computers](http://www.macroresilience.com/2011/12/29/people-make-poor-monitors-for-computers/)" describes the interesting case of Air France 447 which experienced some loss of instrumentation data while flying through [storms near the equator](http://www.finestructure.com/2009/06/storms-at-the-equator-or-the-itcz/). Control of the aircraft was ceded to the Human operators in the midst of an airspeed indicator failure and the operators couldn't make sense of what was going on (and in fact made very wrong choices) before it was too late to recover.

The article doesn't provide much in the way of solutions but it does break down the problems inherent in control systems that are only controlled by Humans when something goes wrong. The TL;DR version is essentially "complex computer systems have lots of assumptions built in" and "humans are really terrible at switching from monitors to controllers of complex systems".

Our intuition tells us that computers aren't good for problem solving so we design these systems with human fallbacks. And it made perfect sense to design this way as we entered the era of computer control systems. Computers were hardly proficient enough to control everything so we handed off a decision here and there.

Eventually (i.e. now) control systems are so complex that failing over to Humans has become *a bad idea*. Unfortunately we're still of the mind that computers can't be fully trusted with our control systems.

Notoriously, the Space Shuttle was capable of making all of the decisions during launch and landing *except* for lowering the landing gear. Furthermore, the approach for landing could be mostly automated by a system with a reaction time at least a few orders of magnitude better than a Human but has always been Human-controlled. Even enabling Computer control of the landing required an extra cable strung through the main cabin to connect two physically distinct control systems, supposedly purposefully designed to discourage its use.

And maybe it's a valid point that Computer control shouldn't be currently trusted. After all, we design the control systems to be handed off in the event of an emergency rather than try to make sense of a rare and possibly unpredictable event. Hell, **we** design the control systems in the first place.

Or perhaps it's simply an issue of design considerations. The only way we'll develop better control systems is by depending on them in unpredictable situations.

Google takes an interesting approach to control with their self-driving car. If the control system detects a failure that prevents it from continuing on automatic pilot, it warns the driver that manual control will resume in a certain amount of seconds so the driver has time to evaluate the situation before getting dumped into control.

Your basic car has a fairly limited set of systems that one has to be aware of to decently drive, so this doesn't seem too dangerous. However, luxury cars are trending towards more computer monitoring systems such as lane-awareness, distance sensors, turn-aware headlights, etc.

It's not a stretch to expect further automation, particularly as cars that drive themselves become available for general use. Pilots are specially trained yearly (even when they've been pilots for many years) to deal with a range of unexpected situations aboard aircraft. What happens in 20 years when a teenager who has never had manual control of a car (except when practicing for their license test) is subject to a LIDAR failure and has to take control while on the highway?

It seems unlikely that the regulatory bodies in place now would allow this sort of thing to happen without an incredible improvement in systems control technology. And we all want self-driving cars, right?

Yes, this is all speculation on the future but I hardly think it's beyond the bounds of likelihood in the next 10 years. It's more proof that we need to start developing and depending on computer systems that behave well in unexpected situations lest we subject ourselves to the limitations of our own Humanity.
