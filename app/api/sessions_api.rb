class SessionsApi < Grape::API
  resource :sessions do
    desc 'Get the current session'
    get :current do
      authenticate!
      { session: { id: current_user.id, email: current_user.email } }
    end

    desc 'Destroy the current session'
    delete :current do
      authenticate!
      warden.logout
      {}
    end
  end
end
