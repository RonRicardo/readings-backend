Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV['google_app_id'],   ENV['google_secret']
end
