require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module InstagramMini
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    #config.assets.enabled = true
    #config.assets.paths << Rails.root.join("app", "vendor", "bootstrap","css")
    #config.assets.paths << Rails.root.join("app", "vendor", "bootstrap","js")
    #Paperclip.options[:command_path] = "C:/Users/Michael/Desktop/ImageMagick-6.9.3/bin/identify"
    #Paperclip.options[:command_path] = "/c/windows/system32/convert"
    
    #Paperclip.options[:command_path] = "C:\Program Files (x86)\GnuWin32\bin"
    
    config.assets.version = '1.01020'
  end
end
