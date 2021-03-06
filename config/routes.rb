Web::Application.routes.draw do
  root 'ember#index'

  devise_for :user_accounts,
    controllers: { omniauth_callbacks: 'omniauth_callbacks' }

  mount Api, at: '/'

  class FormatTest
    attr_accessor :mime_type

    def initialize(format)
      @mime_type = Mime::Type.lookup_by_extension(format)
    end

    def matches?(request)
      request.format == mime_type
    end
  end

  get '*foo', to: 'ember#index', constraints: FormatTest.new(:html)
  get '/',    to: 'ember#index', constraints: FormatTest.new(:html)
end
