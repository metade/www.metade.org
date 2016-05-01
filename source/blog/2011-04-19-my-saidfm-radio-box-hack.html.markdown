---
title: My Said.fm Radio Box Hack
published: true
sharing: false
categories: []
---

![My Said.fm Radio Box Hack](/blog/images/GeoSoundboards_Radio_Box-Coffee_20110419.png)

Photo by [Jenny Ekelund](http://twitter.com/#!/fnirp)

A few weeks ago I took part in the [Said.fm](http://said.fm) [Radio Box Hack weekend](http://blog.said.fm/radiobox-hacks-visualising-stories), where I did some experiments with Mobile HTML5 geolocation and audio playback on mobile devices.

I had been playing with what I was calling a “GeoSoundBoard”, where users could walk around unlocking sounds when they reached certain locations. My demo was using sound clips from a [BBC Radio 1 soundboard for Tim Westwood](http://www.bbc.co.uk/radio1/westwood/soundboard.shtml) - imagine walking around the corner and hearing Westwood drop a bomb!

You can [try it out for yourself](http://geosoundboards.heroku.com/soundboards/westwood) - drag and drop the blue marker onto one of the nearby orange markers to hear it go off.

On my iPhone I found that while the HTML5 audio would play fine when I dragged and dropped the marker, it wouldn’t play when I actually walked towards one. I never got to the bottom of this issue but it’s likely to be because HTML5 audio playback on mobile devices must be triggered by direct user interaction to avoid excessive data charges or battery consumption.

![My Said.fm Radio Box Hack](/blog/images/media_httpfarm6static_cvCBt.jpg)

So at the Said.fm hack day I decided to change the UI so that it would display information about the track a user had unlocked such as an image and description and offer the option to play the track. I also wanted to prototype an authoring solution so that curators could produce audio playlists around a certain theme and scatter those tracks in the real world. And with Abdel's help we got a more robust player implementation for the audio playback.

You can check out what we built at [http://geosoundboards.heroku.com](http://geosoundboards.heroku.com). It uses:
- Ruby and [Sinatra](http://www.sinatrarb.com)
- [JQuery Mobile](http://jquerymobile.com/)
- JPlayer for the audio playback (thanks [Abdel](http://twitter.com/abdels "Abdel")!)
- Google Docs for the CMS [check out the instructions](http://geosoundboards.heroku.com/faqs) and [a sample playlist](https://spreadsheets.google.com/pub?hl=en_GB&hl=en_GB&key=0Am0wZ9CftXYqdGwyd2FxeVBqWF80eVpsQTd4YURlaGc&output=html)

And the [source is on GitHub](https://github.com/metade/geosoundboards).

Thanks to the Said.fm guys and all of the other Radio Box hackers - it was fun!
