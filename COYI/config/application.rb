require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module COYI
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
    config.assets.precompile += %w( home.js )
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    ActionMailer::Base.delivery_method = :smtp
    ActionMailer::Base.perform_deliveries = true
    ActionMailer::Base.smtp_settings = {

      :address => "smtp.gmail.com",
      :domain => 'gmail.com',
      :port => "587",
      :user_name => 'osamaahmed2096@gmail.com',
      :password => 'OsamaAhmed123',
      :authentication => 'plain',
      :enable_starttls_auto => true
    }

  end
end
