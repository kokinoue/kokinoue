require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Kokinoue
  class Application < Rails::Application
    config.load_defaults 6.0
    config.i18n.default_locale = :ja
    config.time_zone = 'Asia/Tokyo'
    config.generators do |g|
      g.assets false
      g.helper false
      g.test_framework :rspec,
                       view_specs: false,
                       helper_specs: false,
                       routing_specs: false,
                       controller_specs: true,
                       request_specs: false,
                       fixtures: true
      g.fixture_replacement :factory_bot, dir: "spec/factories"
    end
  end
end
