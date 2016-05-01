---
title: Fun Augmented Reality Stuff
published: true
sharing: false
tags:
- code
- hackdaylondon
---

For my [PhD](http://www.metade.org/research/phd/) I had loads of fun with  tangible augmented reality interfaces. I posted a couple of videos on my work onto Google Video a few weeks back, which shows the kinds of things I ended up doing:

<iframe width="560" height="315" src="http://www.youtube.com/embed/x64nC1VMO8o?list=UUAaeetNuBExb12mF3oz9ZWA" frameborder="0" allowfullscreen></iframe>

This work was done using the [ARToolKit](http://www.hitl.washington.edu/artoolkit/), an augmented reality toolkit that does the computer vision tracking of the marker cards you can see in the video.

I'm very tempted to build something based on this for Hack day!

In collaboration with a couple of guys from the research lab I work at, we recently had the crazy idea to make the ARToolkit into a web service.

The basic idea is as follows: you take a photo of an ARToolKit marker in a fun place, upload it to the web service and it renders some 3D content over the card using the ARToolKit.

I started putting together a basic web app using the Ruby [Camping](http://code.whytheluckystiff.net/camping/) framework. I even managed to get it to upload result to Flickr if the user decided they liked the resulting image.

Here's a [screenshot](http://www.metade.org/research/2007/artheworld-test.jpg) of what we have so far, plus the [Flickr account](http://flickr.com/photos/8483384@N07/) for the service.

The app still needs a lot of work (e.g. letting people choose which 3D model they want rendered), but the basics are there for a nice hack.

What we really need to do is work out an actual application/scenario for this - there probably isn't one and it's just a bit of fun, pointless hackery. But I'm quite intrigued to investigate some kind of whacky "physical meets the digital" experiment...
