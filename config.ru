# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment', __FILE__)
run Rails.application

require ::File.expand_path('../config/environment', __FILE__)

    use Rack::Session::Cookie, :secret => '<my secret is here>'

    use OmniAuth::Builder do
      provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_SECRET'], :scope => 'email,read_stream'
    end


    run Rails.application
