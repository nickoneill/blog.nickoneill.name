---
published: true
title: "Does the Metro UI Have Room For Smacktalk?"
date: "2012-03-22"
tags: ["ux"]
---

Microsoft is hard at work pushing their new Metro UI in the months leading up to the Windows 8 release sometime in 2012. I don't pay too much attention to most of it but they recently posted a [case study for UI differences between a standard iOS interface and Metro](http://msdn.microsoft.com/en-us/library/windows/apps/hh868262.aspx).

It's fairly dismissive of iOS concepts despite usually telling half the story, but it's an interesting study in mobile UI design nonetheless. The justification that the Microsoft team make for their style is fascinating to see through the lens of an iOS interface developer.

I'll preface this briefly by saying that I'm assuming a bit about the Metro UI. I've looked through a number of examples for how Microsoft expects users to behave in Metro but I haven't installed the Windows 8 preview myself.

I wrote a bit earlier this month about [my issues with the interface for Clear](http://blog.nickoneill.name/on-hidden-touch-gestures.html) and this ties in well. Overall, Metro wants developers to focus on content over chrome. The decision isn't necessarily a bad one in theory but it does provide some interesting tradeoffs if you miss the mark on assumptions about existing user knowledge.

The case study mentions "direct manipulation" a number of times, which is essentially gesture-based interaction. Pinching to move from a single-year view to the hierarchically higher level like a list of all years, swiping down from an item to reveal an "app bar" with contextual commands, swiping from the sides for a standard "charms" view… the list goes on and on.

Microsoft isn't alone in their apparent love of gestures though,
Apple loves to implement hidden gestures in their apps as well.

And for good reason: gesture interactions are great eye candy. Users think they'll look like Tom Cruise in Minority Report sans the headgear. They're fantastic commercial material because they feel like the future is *here*.

The difference is that Apple (usually) uses hidden gestures as a secondary method for taking actions that are available via multiple taps. Non-obvious gestures are a power user feature of sorts.

The problem with Metro is that it hides critical functions under this gesture layer. Users can get into situations in Metro apps where the action they know they want to take is nowhere to be found or worse; they unknowingly activate some gesture and it takes them away from what they were doing with no indication of how that action was invoked. This is not a good user experience.

There is no clear solution to this at the moment. This may all sound familiar if you read through my post on Clear but I'm not sure if users have trouble with hidden gestures because they're so new or because our eyeballs require interface elements that can't simply be swept under the bezel without indicating some hidden function. I'm not exactly advocating for subtle universal indicators for hidden gestures yet, though it's something I'm thinking about.

Of course, some users will know exactly how to navigate Metro apps because they've watched the videos or know what types of gestures to try on the interface. This is a valid chunk of users who will love Metro - but is that the same chunk of users that Metro is aimed at? And even if that is some double-digit percentage of users, what about the rest of them?

I expect that Metro wants to be in place where the iPad has found so much success: the living room. But sometimes good design (or technical complexity) in software manages to outshine the notion that the technology just has to work for its intended audience. I've seen this happen at a number of startups and I doubt Microsoft is immune.

But Metro can probably survive an initial unfamiliarity period if users are constantly beaten (in a good way) into understanding that some of the interface is hidden for cleanliness. This kind of interface can be learned with training and interface training is just reinforcing the concepts with lots and lots of apps that feel the same.

This is why the iOS tab bar and navigation bar that this very document derides have become natural for living room users everywhere. They're easy and cheap to create and they don't look terrible. Even my mother is familiar with them.

So the question becomes one of developer support. How well has Microsoft supported the development of Metro UI in 3rd party apps? For sure they'll launch with a few high-visibility non-Microsoft apps but how is the SDK for everyone else?

And critically, is Microsoft willing to reject apps from their platform if they don't conform to the Metro standards early on?

Just to be clear, I don't think this is a Microsoft vs. Apple conversation. The issue is about how much thought goes into the default look for a platform and how the goals match the implementation. At this point Apple has proven their model with hundreds of Millions of devices and Microsoft has a consumer preview. And who is talking all the smack?

**Update:** Hey, some people talked about this last week on the internets too, both for [all the new OSes](http://reverttosaved.com/2012/03/14/mystery-meat-ui-design-in-windows-8-ios-and-os-x-could-point-to-a-confusing-computing-future/) and specifically for the [new iPhoto for iOS](http://ignorethecode.net/blog/2012/03/14/mystery_meat_iphoto/), via [@walt](https://twitter.com/#!/walt/status/183048316563619841).
