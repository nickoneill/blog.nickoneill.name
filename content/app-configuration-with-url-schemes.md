---
published: true
title: "App Configuration with URL Schemes"
date: "2013-03-15"
tags: ["ios", "code"]
---
I just read about a neat feature for [Letterpress 1.4 where savvy users can test Spanish games](http://www.atebits.com/letterpress/experimental/) by loading "letterpress:experimental" in Safari and I wanted to share an alternate example that I build for a client a while back.

In this particular case, the client wanted to distribute a single app binary via enterprise distribution or ad-hoc builds to various clients of his own. The catch was that all these clients wanted the app to look customized to their own brand with logos and colors.

Not only was I opposed to building a system where I would have to build multiple versions of the same app for multiple clients, I was pretty sure that anyone maintaining that sort of system down the road would put in the extra effort to seek me out and chop off each finger that contributed to writing that code.

Instead, I developed a configuration framework that responded to a specially crafted URL scheme. The app was totally functional upon first install but a URL could be sent along in the install email which prompted users to tap on it from their iOS device.

The url scheme was passed along to the app which inferred the location of a JSON configuration file somewhere on the internet, downloaded it, parsed the file for logo urls, offsets and RGBA color components and redrew the app with these visual changes. The JSON document was stored on the local disk for easy parsing sans-connectivity on the next startup.

It required a bit of conversion to drawing customizable elements with drawRect rather than patterning images but the flexibility was worth it many times over.

For this purpose, an unsolicited plug: recreating complex photoshop-made effects in Quartz2D is pretty easy with [PaintCode](https://itunes.apple.com/us/app/paintcode/id507897570?mt=12). Don't let the price throw you off if visual customizability or small app size is important to you, it's an incredible tool.

Depending on your feeling towards these fairly insecure URL schemes, you could package a username and password within them and provide users an automated way of logging in to your app. The possibilities for configuration are nearly endless and mostly underutilized, it seems.
