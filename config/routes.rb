require 'routing_constraints'

Web::Application.routes.draw do
  root 'pages#index'

  authenticate do
    root 'ember#index', as: :dashboard
    constraints RoutingConstraints::Format.new(:html) do
      get '*foo', to: 'ember#index'
      get '/',    to: 'ember#index'
    end
  end

  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
end
