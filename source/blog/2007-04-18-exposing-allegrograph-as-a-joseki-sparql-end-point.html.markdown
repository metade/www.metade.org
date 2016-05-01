---
title: Exposing AllegroGraph as a Joseki SPARQL end-point
published: true
sharing: false
tags:
- code
- semweb
- sparql
---

Back when I was [working](http://metade.org/research.html#Sculpteur) on the [Sculpteur](http://www.sculpteurweb.org) project, we had real issues with semantic web triple store performance, in particular in regards to the amount of data they could handle.

So we took a more traditional relational database/Z39.50 SRW approach, finally resulting in the [OpenMKS](http://openmks.sourceforge.net) system.

So it's great to see how far triple stores have come: the [AllegroGraph](http://www.franz.com/products/allegrograph/) triple store server from [Franz Inc.](http://www.franz.com/) can  handle billions of triples. They offer a free version that supports up to 50 million triples - that's a lot of data! For example, the [E-Culture](http://e-culture.multimedian.nl/) demonstrator (part of the [Multimedian](http://www.multimedian.nl) project in the Netherlands) incorporates a number of cultural heritage vocabularies/thesauri, Wordnet and three museum/archive collections and takes up only 9 million triples (according to this [paper by Schreiber et al.](http://www.cs.vu.nl/~guus/papers/Schreiber06a.pdf)).

So I've been experimenting with AllegroGraph, in particular so it can act as a back-end to an [mSpace](http://www.mspace.fm) interface. Although AllegroGraph supports SPARQL queries, it doesn't expose an HTTP SPARQL endpoint (at least I couldn't find one!).

Here's how I went about exposing AllegroGraph through a Joseki SPARQL endpoint. It's not the most efficient way of doing it, but it was the easiest to implement and it works!

AllegroGraph provides a Jena layer, so inspired by the [D2R server](http://sites.wiwiss.fu-berlin.de/suhl/bizer/d2r-server/) code, I created a Jena Assembler for the AllegroGraph Jena graph. With this, you can then set up a Joseki data set:

`` _:allegro   rdf:type ja:RDFDataset ;     rdfs:label "Allegro" ;     ja:defaultGraph        [ rdfs:label "Allegro Graph" ;         a ag:AllegroModel ; ag:modelName "test"; # the name of the AllegroGraph model name ag:modelLocation "/tmp/ag/"; # the location of the AllegroGraph model       ] ;       .  ag:AllegroModel     rdfs:subClassOf ja:Object;     ja:assembler "org.metade.allegrograph.AllegroGraphAssembler";     . ``

I've assembled a [Maven project with the code which you can download](http://metade.org/blog/wp-content/uploads/2007/04/allegrograph.zip "AllegroGraph - Joseki bridge"), maybe it'll be of use to someone. Give me a shout if you need help getting it going.

Now I mentioned that this isn't the best approach. We've done some basic testing on it, and although it manages to cope with some complex queries far better than other systems we've tried, it can be slow on others. There is a lot of overhead in this approach. From the top of my head (i.e. this might not be very accurate!) each SPARQL query goes through:
-  Jena ARQ SPARQL library
-  Jena graph model
-  AllegroGraph Jena wrapper
-  AllegroGraph Java layer
-  AllegroGraph native store

But it works...

In terms of future work, AllegroGraph supports SPARQL queries directly so we're planning on developing the SPARQL endpoint that talks to this directly. It will be interesting to compare the two approaches, but my guess is that the direct SPARQL queries will be a lot faster.
