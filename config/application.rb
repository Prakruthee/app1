require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module App1
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
    config.assets.enabled = true
    # Enable fonts folder to App Root (add app/assets/fonts to the asset path)
    config.assets.paths << Rails.root.join("app", "assets", "fonts")
    config.assets.precompile = ['application.js', 'application.css', 'circle-carousel.js', 'mynetwork-circle-carousel.js', 'api/v1/charts/pie_chart.js', 'api/v1/charts/column_chart.js', 'api/v1/charts/analytics_preview_column_chart.js']
    config.assets.precompile << /\.(?:svg|eot|woff|ttf)$/
    config.assets.precompile += %w[*.png *.jpg *.jpeg *.gif *.ico]
    config.exceptions_app = self.routes
end
end
