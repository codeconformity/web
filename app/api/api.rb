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
      if warden.authenticated?
        return true
      else
        error!('401 Unauthorized', 401)
      end
    end
  end

  mount UsersApi
end
