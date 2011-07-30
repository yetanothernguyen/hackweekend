Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '257805710897508', '3f8f007ada08d086dc67e46fda8fea4e', :scope => 'email', :display => 'touch'
end 