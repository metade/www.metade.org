---
title: ! 'Improving music recommendations step one: ignoring bad data'
published: true
sharing: false
tags:
- bbc
- code
- mashed2008
- music
- musicbrainz
---

When I presented my music recommendations hack at Mashed last weekend, I showed some examples by randomly browsing around the artists and brands pages.

When I came to the [Giles Peterson](http://www.bbc.co.uk/programmes/b006wq8d) show, I was surprised that the system was recommending artists such as 'The Automatic' and 'Arctic Monkeys'.

This struck me as extremely unusual recommendations for a show featuring "Latin, funk, soul and hip-hop", but I suspected that the data rather than the system was at fault. I had a quick look at the source data that had been fed into the system for this show and found:
- The Wombats (1)
- My Chemical Romance (1)
- Hard-Fi (1)
- Gideon Conn (1)
- Armand Van Helden (1)
- Editors (1)

Looking at this list, it seems that the recommendations actually make sense: there is very little data for the show, and actually it doesn't even look correct!

This data has been generated from the digital play out system but we are unable to track some of the shows, especially specialist music shows such as Giles Peterson. The DJ might play directly off their own vinyl/cd/computer/other crazy device, or the show might be pre-recorded.

So what I've done is simply ignore brands with a low average artist play count (brand/[artist](http://music-recommendations.metade.org/artists/f90e8b26-9e52-4669-a5c9-e28529c47894.json)/[last.fm profile](http://music-recommendations.metade.org/recommend/lastfm/bbc_zanelowe.json) URLs to get a JSON feed of the data.
