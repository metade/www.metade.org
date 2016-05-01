---
title: ! 'Buy a brick '
published: true
sharing: false
categories:
- projects
tags:
- charity
- childsi
---

![Buy a brick ](/blog/images/buyabrick.png)

A couple of years ago I helped develop a fundraising application for the [Child’s i Foundation](http://www.childsifoundation.org/), a charity and worldwide community aiming to build a home for abandoned babies in Uganda.

At the time the charity was raising money to set up a home in Kampala, so the team at Childsi came up with [Buy a Brick](http://buyabrick.childsifoundation.org/), a web app where users donate from £2.50 to £500 to purchase a brick to build a virtual wall.

In the 2 years since it launched, the Child’s i Foundation community has bought nearly 400 bricks, raised nearly £18,000!

I implemented the backend of the application in Ruby on Rails, in particular the integration with the payment gateway for processing donations. It was the first (and only) e-commerce website that I’ve ever deployed and maintained - I learnt a lot!

Over the last couple of weeks,  we’ve been tinkering with the application so it uses the [Just Giving](http://apimanagement.justgiving.com/) donations API instead of the original payment gateway. We ended up using (and [patching](https://github.com/mintdigital/just_giving/pull/1)) the [Just Giving Ruby gem](http://rubygems.org/gems/just_giving/), so the switch over was pretty simple to implement.

What wasn’t so simple was upgrading an old, pre-Bundler Rails 2.2 application to Rails 2.3 and getting the right combination of gems versions to play together on Heroku! But I got there in the end…

The application is at [buyabrick.childsifoundation.org/](http://buyabrick.childsifoundation.org/) and the code is all on Github: [github.com/childsi/buyabrick/](https://github.com/childsi/buyabrick/)
