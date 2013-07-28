class UsersApi < Grape::API
  format :json

  resource :users do
    desc 'Return the currently signed in user'
    get 'current' do
      { user: current_user }
    end
  end
end
