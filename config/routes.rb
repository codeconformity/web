require 'routing_constraints'

Web::Application.routes.draw do
  root 'pages#index'

  authenticate do
    root 'ember#index', as: :dashboard

    mount Api, at: '/'

    constraints RoutingConstraints::Format.new(:html) do
      get '*foo', to: 'ember#index'
      get '/',    to: 'ember#index'
    end
  end

  devise_for :user_accounts,
    controllers: { omniauth_callbacks: 'omniauth_callbacks' }
end
