Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, Settings.facebook.id, Settings.facebook.secret, :scope => 'email', :display => 'touch'
end 