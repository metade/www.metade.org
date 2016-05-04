###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

###
# Helpers
###

activate :blog do |blog|
  # This will add a prefix to all links, template references and source paths
  blog.prefix = "blog"

  blog.permalink = "{title}"
  # Matcher for blog source files
  # blog.sources = "{year}-{month}-{day}-{title}.html"
  # blog.taglink = "tags/{tag}.html"
  blog.layout = "layouts/blog_post"
  # blog.summary_separator = /(READMORE)/
  # blog.summary_length = 250
  # blog.year_link = "{year}.html"
  # blog.month_link = "{year}/{month}.html"
  # blog.day_link = "{year}/{month}/{day}.html"
  # blog.default_extension = ".markdown"

  blog.tag_template = "blog/tag.html"
  blog.calendar_template = "blog/calendar.html"

  # Enable pagination
  blog.paginate = true
  blog.per_page = 10
  # blog.page_link = "page/{num}"
end

activate :directory_indexes

page "/feed.xml", layout: false

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Build-specific configuration
configure :build do
  # Minify CSS on build
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript
end

redirect "blog/about/index.html", to: "/"
redirect "blog/archives/index.html", to: "/blog/"
redirect "blog/2007/04/18/exposing-allegrograph-as-a-joseki-sparql-end-point/index.html", to: "/blog/exposing-allegrograph-as-a-joseki-sparql-end-point/"
redirect "blog/2007/05/12/semantic-web-resources-and-tools-for-cultural-heritage/index.html", to: "/blog/semantic-web-resources-and-tools-for-cultural-heritage/"
redirect "blog/2008/05/11/augmented-reality-from-bbc-radio-1-band-in-your-hand/index.html", to: "/blog/augmented-reality-from-bbc-radio-1-band-in-your-hand/"
redirect "blog/2008/06/23/my-mashed-2008-hack-recommending-bbc-radio-shows-and-artists/index.html", to: "/blog/my-mashed-2008-hack-recommending-bbc-radio-shows-and-artists/"
redirect "blog/2008/07/30/bbc-musicmusicbrainz-bookmarklet/index.html", to: "/blog/bbc-musicmusicbrainz-bookmarklet/"
redirect "blog/2008/11/15/my-take-on-regression-testing-css/index.html", to: "/blog/my-take-on-regression-testing-css/"
