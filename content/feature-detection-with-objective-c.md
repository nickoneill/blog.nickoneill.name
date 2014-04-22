---
published: true
title: "Feature Detection with Objective-C"
date: "2012-06-12"
tags: ["ios", "code"]
---
*(I'm at WWDC this week, I figure I should probably release something of my own)*

I wasn't being completely modest when I recently [praised line simplification](http://blog.nickoneill.name/line-simplification.html) for bringing a method to the masses. It's not a great example though, so let me explain in a little more detail.

For any large group of people interacting with a technology, the vast majority are using it as a means to an end. I say this in a positive way. In fact, one sign of a truly successful technology is when people can ignore the amazing technical steps that enable them to do things they couldn't otherwise do.

It's a matter of technical chops. I don't know how to write my own touchscreen driver but I can make apps that run on an iPhone because of the abstraction given to me by Apple.

Apple happens to be particularly good at technical complexity abstraction but open source projects are my favorite examples of technical movement because they're not driven by an obvious monitary incentive (I'm sure there's an argument that OS is driven by ego, but let's move on).

Before javascript frameworks, a limited number of people were using (and hating) straight javascript for everything. jQuery may have not been the first framework but it was the most effective at abstracting the hard/dumb parts of javascript away so that it was less intimidating to write.

Considering that javascript is already one of the easiest languages to get started with (everybody already has an interpreter!), it's not much of a stretch to suggest that jQuery made more programmers.

Arduino has done the same thing for microcontrollers. I spent some time on microcontroller projects just before arduino hardware started gaining popularity and the technical challenges at the time were huge. It was incredibly difficult to get started without having a pool of knowledge across multiple domains.

Arduino gave people a device that didn't require testing and soldering before they were writing code and making things blink.

I think Arduino is still stronger on the hardware side than software (there are so many tiny rules in C one must know…), but the adoption is amazing. It was difficult to turn around without smacking your head on an Arduino at Maker Faire this year.

The fascinating thing about these projects is that they didn't necessarily invent anything new. Touchscreens existed before the iPhone (though Apple made them suck less) but it wraped the experience in an intuitive way. Everyone wrote their own javascript framework for projects before jQuery, but they packaged it together and made it fast. Arduino just made hardware that had the exact functionality that hobbyists wanted.

I'm a particular fan of one subgenre: Projects that take complex methods that exist in academic research and making them available in a familiar format. That brings me to my own project that I've been working on for a while: [Feature Detection](http://github.com/nickoneill/LAFeatureDetection), which finds features in images programmatically.

The most obvious computational method of finding a feature in an image is to look at each pixel in the image. It's pretty straightforward; anyone who understands that images are made of pixels could write a simple algorithm to do it.

You can improve on that basic method a little bit but there are no incredible gains to be had with an iterative method.

Generalized, the problem is essentially how to find the location of some two dimensional submatrix within a larger matrix. It sounds like a problem with a clever mathematical solution and it, in fact, is.

The Fast Fourier Transform is usually used in digital signal processing (i.e. one dimension) to decompose a signal into its constiuent parts. Interestingly, performing discrete FFTs on images (i.e. two dimensions) is a process known as convolution where (roughly) the two images are superimposed on eachother at every point. You can use this method to find parts of a large image that are similar to a smaller image.

None of this is new research. The fast fourier transform is a common and useful function that is used in image processing. It also has the added benefit that it can be significantly sped up with specialized vector instructions on CPUs and GPUs.

There are a number of packages that exist for doing image processing via FFT on different platforms but none that take advantage of the accelerated vector libraries that exist on all recent Mac and iOS devices and that are easy for anyone with a passing knowledge of Objective-C to use. That's what I set out to do.

**Feature Detection exposes an easy interface for Objective-C developers to identify features in images.** The more technical details are on [the github project](http://github.com/nickoneill/LAFeatureDetection )if you're interested, as well as some example images.
