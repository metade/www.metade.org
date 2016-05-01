---
title: Semantic Web resources and tools for Cultural Heritage
published: true
sharing: false
tags:
- semweb
---

After working in the "semantic web meets cultural heritage" domain for a number of years, there are many useful resources and tools I've become familiar with. I thought it would be useful to share some of these - hopefully it will be helpful to someone out there!
### Ontologies

The [CIDOC CRM](http://cidoc.ics.forth.gr/) is an extremely rich core ontology for describing cultural heritage documentation. I know a fair bit about it, having used it in the [Sculpteur](http://www.sculpteurweb.org) and [eCHASE](http://www.echase.org) projects but it's best to look at the official CIDOC CRM site for more details.

Whilst I don't think the [VRA Core model](http://www.vraweb.org/projects/vracore4/index.html) is as powerful as CIDOC CRM, it seems to be more accessible and easier to get to grips with. The [W3C Multimedia Semantics Incubator Group](http://www.w3.org/2005/Incubator/mmsem/) describe how [VRA Core can be used in cultural heritage documentation](http://www.w3.org/2005/Incubator/mmsem/XGR-image-annotation/#solution_culture) in their report on [Image Annotation on the Semantic Web](http://www.w3.org/2005/Incubator/mmsem/XGR-image-annotation/).
### SKOS: Simple Knowledge Organization System

[SKOS](http://www.w3.org/2004/02/skos/) provides an OWL ontology for modeling knowledge organisation systems such as controlled lists/vocabularies/thesauri. It provides the means to describe thesauri concepts and their relationships (e.g. labels, alternative labels, broader and narrower concepts, concept schemes and so on).

The best starting point is the [SKOS Core Guide](http://www.w3.org/TR/2005/WD-swbp-skos-core-guide-20051102/), that shows you how to go about modeling a thesaurus scheme in SKOS.
### Geonames

[Geonames](http://www.geonames.org/) is a fantastic resource that provides information on locations in semantic web format (i.e. RDF). For example, check out [Southampton in RDF](http://sws.geonames.org/2637487/about.rdf)! Their website has a nice Google Maps interface, but the really great thing is the [Geonames web service](http://www.geonames.org/export/) that lets you match a query string (e.g. "Southampton, England") to a specific place. I've used this service to add rich geographical information (e.g. latitude and longitude) to cultural archives that only had ambiguous text entries for place information.
### D2R Server

[D2R Server](http://sites.wiwiss.fu-berlin.de/suhl/bizer/d2r-server/) provides a mapping mechanism to publish relational databases on the Semantic Web. The databases are exposed as RDF, and can be queried using SPARQL.
### Semantic Web Frameworks

There are loads of semantic web development frameworks, and there are a number of useful resources describing them too! Check out:
-  [Developers' guide to semantic web toolkits](http://sites.wiwiss.fu-berlin.de/suhl/bizer/toolkits/) by [Chris Bizer](http://sites.wiwiss.fu-berlin.de/suhl/ueber_uns/team/chris_bizer.htm)
-  [Semantic Web Tools](http://esw.w3.org/topic/SemanticWebTools) on the [ESW Wiki](http://esw.w3.org/topic/FrontPage).

Ones I've found particularly interesting are:
-  [ActiveRDF](http://www.activerdf.org/), which lets you build semantic web applications using [Ruby on Rails](http://rubyonrails.org/).
-  [Semantic Media Wiki](http://ontoworld.org/wiki/Semantic_MediaWiki), which lets you define and extract machine processable (i.e. RDF) information within Wiki content. This is an extension to the popular [MediaWiki](http://www.mediawiki.org/wiki/MediaWiki) system used by [Wikipedia](http://en.wikipedia.org/wiki/Wikipedia).
### Miscellaneous RDF Stuff

If you need to read/write RDF by hand, use [N3](http://www.w3.org/2000/10/swap/Primer) rather than [RDF/XML](http://www.w3.org/TR/rdf-syntax-grammar/) - it's a lot easier!

Also, if you need to write any code to generate RDF data, consider using [NTriples](http://www.w3.org/TR/rdf-testcases/#ntriples). Each triple goes on a separate line, so you don't need to worry about setting up the RDF/XML document structure correctly.
