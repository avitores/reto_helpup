require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RetoHelpUp
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

#     config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
#     config.i18n.enforce_available_locales = true
     config.i18n.default_locale = :es
  end
end

module NewApiApp
	class Application < Rails::Application
	# ...
		config.middleware.use ActionDispatch::Flash
		config.middleware.use Rack::MethodOverride
		config.middleware.use ActionDispatch::Cookies
	end
end
