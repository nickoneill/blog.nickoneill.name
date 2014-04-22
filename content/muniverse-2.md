---
published: true
title: "Muniverse 2"
date: "2012-12-17"
tags: ["ios", "code", "san francisco", "muni"]
---
Many years ago as I was learning Objective-C and Jamison was going through his public transit phase (yes, as far as I know he's still in it), we joined forces to create an epic San Francisco Muni app for the iPhone.

It was my first ground-up project for the iPhone so I found myself wanting to rewrite large swaths of the code every 2-3 weeks. For obvious reasons, I tried to keep the stuff that was ugly but effective and that got us to the release. Unfortunately it was little help for keeping things updated as any Muni route changes were a big pain to incorporate. Eventually new versions of iOS deprecated bits and pieces of APIs we were using and new APIs replaced them. After a while the app started crashing on startup and I didn't have the heart to debug (my) ancient newbie code.

The original Muniverse has since been removed from the app store for those reasons (interestingly, Apple doesn't seem to care if a previously approved app starts crashing on new iOS versions). However, I still stand by our goals for the project; find when your bus or train or street car arrives in the least amount of taps. We literally want you to be in the app for as little time as possible (but every day, of course).

Looking at other Muni apps since then, it's pretty sad to be a rider with an iPhone. Everyone has clunky methods for finding your stops (be they map-oriented or otherwise) and no one makes it as easy as Muniverse to get times for the stop you use every single day. Most of the apps are clearly built by people who don't live in San Francisco or who don't use Muni often enough to know the weird configuration for the KT or which stop names are wrong when they come out of the NextBus API.

That's why Jamison and I have rethought Muniverse from the ground up and are happy to report that an all new Muniverse is currently on the app store. For free.

Why rerelease Muniverse? We both feel that having a showpiece for our separate skills on the App Store is a great example to show potential clients. Jamison's UI/UX contributions are obvious when using the app, though the code is a bit more difficult to evaluate even if the app works as intended.

Rewriting everything gave me an opportunity to explore some of the modern Objective-C features that can make development easier and faster. Muniverse uses storyboards, core data, new literals and eventually will integrate with the new transit routing APIs. To better illustrate my side of the development process and provide a complete, modern reference for those who are learning Objective-C, [the entire codebase is on github](https://github.com/nickoneill/Muniverse2).

However, the open source license doesn't cover everything since we don't want anyone to re-release the very same code as their own. The graphics are included in the project but are not licensed for use. In addition, there's some magic (written in Go) that generates a large file containing relevant information about all the stops and lines in Muniverse which isn't included in the repository. I think this serves the interests of all parties, providing a great mass of code for those who want to learn Objective-C while keeping blatant plagiarism at bay.

Lest you think this project was entirely for the good will of SFers and Obj-C newbies, let me be clear: this is an obvious ploy to bring in more work. Jamison works on UI/UX stuff as [Fat Trash Design](http://fattrash.com) and he's highly recommended if you need this kind of work done. I run a small iOS development shop called [Launch Apps](http://launchapps.net) (yay placeholder website!) doing contract work for big and small companies alike. Feel free to get in touch if you like Muniverse and want to see the same level of quality in your own mobile apps.
