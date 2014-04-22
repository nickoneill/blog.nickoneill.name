---
published: true
title: "Go-powered Beer at Original Gravity Pub"
date: "2012-08-15"
tags: ["booze", "code", "golang"]
---
Last month saw the official opening of San Jose's newest drinking establishment, [Original Gravity Public House](http://www.originalgravitypub.com/). Dan is a friend from before he became a full-time beer slinger and I offered to whip up something for the website a while back.

As a craft beer bar they had the opportunity to change their selection of beers regularly and wanted a way to reflect those changes on their website and in the bar with minimal effort. You can see the virtual result on their website which has an up-to-date list of all their current beers. The other solution was showing a list of all their current beers on a 40" TV above the bar, you can see a picture of how it turned out here:

<span class="blogimage">
![Original Gravity Beer List](http://blog.nickoneill.name/images/ogtv.jpg)<br />
From [Yelp](http://www.yelp.com/biz_photos/uXCsgEdownjTGlQtnWvkjQ?select=Gxg_cJOzDkKUv8pnprOiBQ#Gxg_cJOzDkKUv8pnprOiBQ)
</span>

Designing for a big screen TV is not something I remember doing since webTV stopped being *a thing*. It was a fun exercise in scaling and clarity, and it seems like it has been successful so far.

The behind-the-scenes wiring is pretty minimal. I built a small Go-powered web service that allows Dan to add to, remove from and reorder the beer list which is written to disk. Whenever an item changes, templates are built and put in their proper locations. Static publishing at its best.

The bar view on the TV is just a fullscreen view of a special website in Chrome, it periodically refreshes to pick up the updated beer list. Nothing is particularly complex about the system, just adding together all the right components. I've been spending more time writing servers and other tools in Go so this was a good way to learn more of the standard library. As far as I know this is the first Go-powered craft beer bar, though I haven't spent a lot of time asking around at bars.

Dan and friends at Original Gravity have a really welcoming space and some very tasty beers on tap. Stop by if you need a drink in San Jose!
