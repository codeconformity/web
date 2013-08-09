require 'routing_constraints'

Web::Application.routes.draw do
  devise_for :user_accounts,
    controllers: { omniauth_callbacks: 'omniauth_callbacks' }

  unauthenticated do
    root 'pages#index'
  end

  authenticate do
    root 'ember#index', as: :dashboard

    mount Api, at: '/'

    constraints RoutingConstraints::Format.new(:html) do
      get '*foo', to: 'ember#index'
      get '/',    to: 'ember#index'
    end
  end
end
