---
title: My take on regression testing CSS
published: true
sharing: false
tags:
- bbc
- code
- css
- music
- regression testing
- test driven development
---

As we add new features to the [BBC Music Beta](http://www.bbc.co.uk/music/beta), we have more pages to check before making a new release.

We're using [test-driven-development](http://en.wikipedia.org/wiki/Test-driven_development) on the code generating the pages, but obviously these techniques don't cover the visual appearance of the site. As we reuse the same visual modules on different pages across the site, CSS bugs creep up unexpectedly on different pages across the site.

For example, the code generating the links module is reused on three different pages:

- [http://www.bbc.co.uk/music/reviews/2h54](http://www.bbc.co.uk/music/reviews/2h54)
- [http://www.bbc.co.uk/music/artists/cc197bad-dc9c-440d-a5b5-d52ba2e14234](http://www.bbc.co.uk/music/artists/cc197bad-dc9c-440d-a5b5-d52ba2e14234)
- [http://www.bbc.co.uk/music/artists/cc197bad-dc9c-440d-a5b5-d52ba2e14234/links](http://www.bbc.co.uk/music/artists/cc197bad-dc9c-440d-a5b5-d52ba2e14234/links)

And to illustrate the problem, I just noticed a CSS quirk with the background of the links module on that third link. So I started thinking about how one might go about regression testing CSS and hacked a simple solution together using [CutyCapt](http://cutycapt.sourceforge.net/), [ImageMagick's compare tool](http://www.imagemagick.org/script/compare.php) and [Ruby Rake](http://rake.rubyforge.org/).

The result is illustrated here:
<table>
  <tr>
    <td>
      Stable version of BBC Music Beta artist profile page
      <img src="/blog/images/media_httpfarm4static_hnIzy.jpg">
    </td>
    <td>
      Development Version of BBC Music Beta artist profile page
      <img src="/blog/images/media_httpfarm4static_glxqk.jpg">
    </td>
    <td>
      Difference between the stable and development versions of the site
      <img src="/blog/images/media_httpfarm4static_aueIk.jpg"></td>
  </tr>
</table>

The first image is a screen capture of the stable version of an artist's profile page, taken directly from the live BBC Music Beta. The second image is taken from our development version of the site. The third image shows the difference between the two - in our upcoming release we are shuffling some of the modules around so these changes are very noticeable.

At the moment, my tool is very basic: you give it the stable and development host names, and a list of paths to test ([example configuration](http://www.metade.org/code/css-regression/music/pages.yml)). It uses CutyCapt to pull down each of the paths from the stable and development hosts, and then runs the ImageMagick compare tool between each pair of images. It then produces a very simple [HTML file that displays all of the pages being tested](http://www.metade.org/code/css-regression/music/).

While we're just using this tool informally at the moment, it's already been really useful to catch unexpected CSS bugs on our site.
