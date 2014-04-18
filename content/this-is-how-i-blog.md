---
published: true
title: "This is How I Blog"
date: "2012-02-20"
tags: ["blogging", "golang"]
---

## This is out of date, I don't use this tool anymore. I want to build something similar on a more robust platform but for now I'm just back to <strike>Octopress</strike> Hugo ##

Pinboard is my blog platform. Or at least it was for most of 2011. I let my science blog Fine Structure wane at the start of last year when I stopped having time to research and write long posts about science topics. It was incredibly enlightening to dig deep into a complex topic it but it's not easy.

I still wanted to keep the blog alive even if I was just posting some short links and summaries because I was still reading a plethora of science blogs. I found that wrapping up complex topics in a few sentences is a great way to solidify my understanding of whatever I was reading as well.

Eventually I started Pinboarding links I wanted to write about in an attempt to pick up the habit but I resisted pasting my Pinboard descriptions in the Movable Type interface out of laziness (or intimidation).

There's nothing like a technical challenge to motivate though so I glued together something from existing plugins to grab pinboard links with certain tags and generate posts on Fine Structure. Yes, I put in a bunch of effort upfront in an attempt to reduce the amount of effort I needed to post daily. It sounds contrary.

But the result was great. I felt liberated by the tiny non-wysiwyg text box of Pinboard and the lazy publishing model. I would write a few sentences about a link, add a tag and save it. Sometime in the next 30 minutes it would be posted to Fine Structure and it would float by on twitter.

I was pretty happy with that amount of effort for Fine Structure so I didn't think more about it.

A little later I started writing some posts on topics that weren't science related so I resurrected a personal blog (here! that's this!). I still felt sick of web writing interfaces so I wrote a little static site generator in python. It took a bunch of text files and made a blog. Easy enough, right?

I still wasn't happy though. I fussed with [Octopress](http://octopress.org/) a bit which I felt was a great flexible tool to publish a blog - a (much much) more polished version of the thing I had written previously.

The thing was… I still had to generate my blog on one computer. Even if I had synced my templates and posts and octopres on every computer I own, I still had to do some work between *writing* and being *done*. It was still a pain.

I spoke to [Alex](http://alexba.in) about it over chat one day. I recall saying "what I really want is cloud Octopress, but who has the time to build such a thing?"

As it turns out, I did.

The answer was rooted in Dropbox. I wanted to write stuff and put it on Dropbox from anywhere - what device *doesn't* have a Dropbox client? - and then just have a computer somewhere else do the octopressing for me. Don't make me configure a post, just let me write, save and publish.

I'd been using [Go](http://www.golang.org) on a few small projects and I was really getting into the groove of prototyping things quickly. I figured it'd be a good exercise so I started writing a [Dropbox API wrapper](https://github.com/nickoneill/go-dropbox). Once that was done, a few more lines had me generating a site from files in my Dropbox.

As it stands, [go-publisher](https://github.com/nickoneill/go-publisher) looks at files in Dropbox every 20 minutes or so and generates a site if something has changed. Posts are easy to write, just Markdown and some YAML front matter (ala [Jekyll](https://github.com/mojombo/jekyll/wiki/yaml-front-matter)), most of which is generated for you. Minimally, you can just write until you're done and add `---published: true---` to the top of your post. Everything else is just done.

Back to Pinboard. I loved my Fine Structure posting method so much that I wanted to retain it in this new thing I was building so I wrote a quick addition that makes documents in Dropbox from Pinboard posts (modularity!). This is still my favorite way to keep on top of my blog on a daily basis.

There are a few other projects that I didn't know about at the time, including [Calepin](http://calepin.co/) and [scriptogr.am](http://scriptogr.am/) which [Anil](http://www.dashes.com/anil) tipped me off to. They feel very similar in goals, probably great if you want a simple blog and don't care to run it yourself. I didn't honestly expect to be the only one with this idea. In fact, it feels nice to have my needs reflected by others.

So it [exists on github](https://github.com/nickoneill/go-publisher) now. It's actively used (by me) and I update it whenever I run into something that makes blogging not fun (or, y'know, bugs). It needs a name as well. Something clever. If this is the sort of thing that interests you, you should fork it. Learning Go is fairly enjoyable as well but that's another blog post.

I wrote a few core foundations for my motivation in the readme:

> • you already write long form with your favorite tools<br />
• you already have streams of short form stuff<br />
• you don't want to be constrained to a single computer/device<br />
• you don't want to babysit a publishing platform

Make these tools get out of my way so I can Just Fucking Write. Let's make it a trend.
