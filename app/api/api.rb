class Api < Grape::API
  prefix 'api'

  version 'v1', using: :path

  format :json

  helpers do
    def warden
      env['warden']
    end

    def current_user
      warden.user
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
