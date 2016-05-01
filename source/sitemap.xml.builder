xml.instruct!
xml.urlset xmlns: "http://www.sitemaps.org/schemas/sitemap/0.9" do
  sitemap
    .resources
    .select { |page| page.path =~ /\.html/ && page.path !~ %r{^code/} }
    .each do |page|
    xml.url do
      xml.loc "http://www.metade.org#{page.url}"
      xml.changefreq page.data.changefreq || "monthly"
      xml.priority page.data.priority || "0.5"
    end
  end
end
