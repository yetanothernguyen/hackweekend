class AuthenticationsController < ApplicationController

  def create
    omniauth = request.env["omniauth.auth"]
    authentication = Authentication.first(:conditions => {:provider => omniauth['provider'], :uid => omniauth['uid']})
    if authentication && authentication.user
      sign_in_and_redirect(authentication.user)
    else
      user = User.create_from_omniauth(omniauth)
      sign_in_and_redirect(user)
    end
  end
end
