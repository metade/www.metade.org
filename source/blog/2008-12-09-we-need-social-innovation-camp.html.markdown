---
title: We Need @ Social Innovation Camp
published: true
sharing: false
tags:
- code
- sicamp
---

This weekend I attended [Social Innovation Camp](http://www.sicamp.org/), (SICamp) where I had an absolutely fantastic time! SICamp is an experiment to bring together people over a weekend and get them to build/prototype web apps that will drive social change - check out what the Guardian had to say about it on [Saturday](http://www.guardian.co.uk/media/pda/2008/dec/06/socialinnovationcamp-startups) and then on [Sunday after the projects were presented](http://www.guardian.co.uk/media/pda/2008/dec/07/socialinnovationcamp-events).

I worked on the [we-need.org](http://www.we-need.org/) project, which was led by Craig Griffin from [Fresh Voice](http://www.fresh-voice.com/). The idea is to provide a web site where people with disabilities are able to express their needs through an accessible web interface rather than having their needs assessed by the system as it is currently (i.e. by filling in a 50-odd page form). The site would then aggregate and present interactive visualisations of the needs in a given community so they can be more efficiently handled. Hopefully the video of the pitch we presented on Sunday will be made available online soon, where our team explained the concept far better than I can!

For the weekend, we built a Ruby on Rails application where users could use a [basic html form](http://metade.org/code/weneed/edit.html) to express their needs. We also experimented with a graphical radial interface which is better suited for people with certain types of disabilities. We used the Geokit Rails plugin to geocode users' addresses so that their needs could be plotted on a map. We used [Simile Exhibit](http://simile.mit.edu/exhibit/) to prototype the [visualisation of the aggregated needs of communities on a map](http://metade.org/code/weneed).

As mentioned during the project presentation, we required some sample data so I put together some Ruby to randomly generate some users and their needs. So here is the infamous Ruby "random needs generator" one-liner:

`` (0..rand(3)).to_a.map { |a| rand(@@need_count)+1 }.uniq ``

I've bravely put all of the [we-need code on github](http://github.com/metade/weneed), but do keep in mind that it was all built in less than 24 hours!

I had a really amazing time, worked with some fantastic people on We Need and also really enjoyed the post-SICamp discussions in the pub on Sunday! Big thanks to the [SICamp team](http://www.sicamp.org/?page_id=158) for organising everything - I'm already looking forward to the next SICamp meetup!
