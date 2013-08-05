require 'oauth_authentication_service'

class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  attr_writer :authentication_service

  def github
    user = authentication_service.process(auth_hash)
    user_account = UserAccount.where(user_id: user.id).first
    sign_in_and_redirect user_account, event: :authentication
  end

  private

  def auth_hash
    @auth_hash ||= request.env['omniauth.auth'] || {}
  end

  def authentication_service
    @authentication_service ||= OAuthAuthenticationService.new
  end
end
