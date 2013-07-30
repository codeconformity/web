class UsersApi < Grape::API
  resource :users do
    desc 'Return the signed in user'
    get :current do
      { user: current_user }
    end
  end
end
