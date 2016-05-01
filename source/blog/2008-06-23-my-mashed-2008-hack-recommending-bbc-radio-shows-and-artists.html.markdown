---
title: ! 'My Mashed 2008 Hack: Recommending BBC radio shows and artists  '
published: true
sharing: false
categories:
- projects
tags:
- bbc
- code
- mashed2008
- musicbrainz
---

I've just returned from [Mashed 2008](http://mashed08.backnetwork.com/) where I formed part of the [BBC Radio Labs](http://www.bbc.co.uk/blogs/radiolabs/2008/06/radio_labs_at_mashed_08.shtml) contingen

We were providing all sorts of fun things for people to play with, from [live BBC Radio audio streams](http://mashed-audioandmusic.dyndns.org/#livestream), [feeds of what track is being played over the air](http://mashed-audioandmusic.dyndns.org/#livexmpp) and archives of both the audio and metadata feeds. All of the details are available on the [BBC Audio and Music Interactive at Mashed 2008](http://mashed-audioandmusic.dyndns.org/) site.

One of the things that I was directly involved in was the "[How many times brands have played artists](http://mashed-audioandmusic.dyndns.org/#brandsartists)" data set. By matching the music tracks played on air to [MusicBrainz](http://musicbrainz.org) artists, and then work out which radio show the track was played on, we can build this index of which artists were played on what shows. For example, we can see which artist [Jo Whiley](http://www.bbc.co.uk/programmes/b006wkqz) has played the most, or work out who's been playing the [Arctic Monkeys](http://musicbrainz.org/artist/ada7a83c-e3e1-40f1-93f9-3e73dbc9298a.html) the most.

It is also a great resource for recommending artists and shows and shows to people. So what I did for Mashed was feed this data into the [Semantic Space](http://semanticspace.forge.ecs.soton.ac.uk) engine, developed at the [University of Southampton](http://www.ecs.soton.ac.uk) by [Jon Hare](http://users.ecs.soton.ac.uk/jsh2/), and build a web app around it: [music-recommendations.metade.org](http://music-recommendations.metade.org/).

The site let's you browse around artists and shows, and view lists of other artists and shows the system has recommended. It also provides recommendations based on a last.fm profile top artist feed.

There is a little more detail on how the [technique works on the site](http://music-recommendations.metade.org/) (hint: it's based on [latent semantic analysis](http://en.wikipedia.org/wiki/Latent_semantic_analysis)), and I intend to carry on working with Jon to improve both the quality of the recommendations and how they are visualised.
