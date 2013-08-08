class Api < Grape::API
  prefix 'api'

  version 'v1', using: :path

  format :json

  helpers do
    def warden
      env['warden']
    end

    def current_user
      UserRepository.find(current_user_account.user_id) if authenticated?
    end

    def current_user_account
      warden.user(:user_account)
    end

    def authenticated?
      warden.authenticated?
    end

    def authenticate!
      unauthorized! unless authenticated?
    end

    def unauthorized!
      error!('401 Unauthorized', 401)
    end
  end

  mount UsersApi
  mount SessionsApi
end
