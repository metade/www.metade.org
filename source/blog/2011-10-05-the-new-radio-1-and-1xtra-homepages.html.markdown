---
title: The new BBC Radio 1 and 1Xtra homepages
published: true
sharing: false
categories: []
tags:
- bbc
- musicbrainz
- radio1
---

Last week, Radio 1 and 1Xtra launched their new homepages:
- [http://www.bbc.co.uk/radio1/](http://www.bbc.co.uk/radio1/)
- [http://www.bbc.co.uk/1xtra/](http://www.bbc.co.uk/1xtra/)

I’ve [written a “under-the-hood” post on the BBC Internet blog](http://www.bbc.co.uk/blogs/bbcinternet/2011/09/radio1_homepage_software_technical.html), describing how we approached the technical challenges to meet the editorial ambitions for the new homepage.

I was on attachment with the Radio 1 and 1Xtra Interactive team when the design was conceived, and although the site was built by the [fantastic team at Kite](http://www.madebykite.com) I’ve been heavily involved throughout it’s development.

![The new BBC Radio 1 and 1Xtra homepages](/blog/images/BBC_-_Radio_1_20110930.png)

I might be a bit biased, but I think it’s pretty special! What I’m most happy with is how we’re pushing content to the page using [BBC PushFeeds](http://www.bbc.co.uk/blogs/radiolabs/2009/11/pushfeeds.shtml) (i.e. [XMPP PubSub](http://xmpp.org/about-xmpp/technology-overview/pubsub/) over [Websockets](http://en.wikipedia.org/wiki/WebSocket) or Flash as a fallback) to enable the live experience. On top of that, we’ve delivered an admin system that allows producers to promote content to the homepages within seconds.

![The new BBC Radio 1 and 1Xtra homepages](/blog/images/BBC_-_Radio_1Xtra_20111005.png)

Track now playing information has been present on the BBC national radio networks sites for a number of years, but in the new homepage they are put into the spotlight. The beautiful packshots (album art) are mainly taken from the Radio 1/1Xtra charts and playlists.  Using [MusicBrainz](http://musicbrainz.org/) identifiers we’re able to surface content from [BBC Music](http://www.bbc.co.uk/music), including artist biography, latest clips and album reviews.

![The new BBC Radio 1 and 1Xtra homepages](/blog/images/image003_570.jpg)

I believe this reinvents the way the stations present themselves online, and potentially on air. Whenever something happens in the studio, it’s on the website in seconds in the form of an update, photo or live video stream. The audience’s reaction to the show can be surfaced online in the form of their texts, tweets or Facebook comments.

It’s opened up a new toy box of possibilities, and I’m really looking forwards to see how both the audience and the stations engage with what we’ve built.
