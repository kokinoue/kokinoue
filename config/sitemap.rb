SitemapGenerator::Sitemap.default_host = 'https://kokinoue.com'

SitemapGenerator::Sitemap.create do
  add '/about', changefreq: 'weekly'
  add '/contact', changefreq: 'weekly'
end
