require 'google/cloud/storage'

SitemapGenerator::Sitemap.default_host = 'https://kokinoue.com'

SitemapGenerator::Sitemap.sitemaps_host = 'https://console.cloud.google.com/storage/browser/kokinoue'

SitemapGenerator::Sitemap.sitemaps_path = 'sitemaps/'

SitemapGenerator::Sitemap.adapter = SitemapGenerator::GoogleStorageAdapter.new(
  credentials: 'config/gcs.json',
  project_id: 'kokinoue',
  bucket: 'kokinoue'
)

SitemapGenerator::Sitemap.create do
  add '/about', changefreq: 'weekly'
  add '/contact', changefreq: 'weekly'
end
