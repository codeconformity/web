source 'https://rubygems.org'

ruby '2.0.0'

gem 'coffee-rails', '~> 4.0.0'
gem 'devise'
gem 'draper'
gem 'ember-rails'
gem 'ember-source', '~> 1.0.0.rc6.3'
gem 'emblem-rails'
gem 'grape'
gem 'jquery-rails'
gem 'omniauth-github'
gem 'pg'
gem 'puma'
gem 'rails', '~> 4.0.0'
gem 'therubyracer', platforms: :ruby
gem 'uglifier', '>= 1.3.0'

group :development do
  gem 'dotenv-rails'
  gem 'foreman'
  gem 'guard'
  gem 'guard-bundler'
  gem 'guard-cucumber'
  gem 'guard-konacha'
  gem 'guard-rspec'
end

group :test do
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
  gem 'ember-konacha-rails', github: 'kristianmandrup/ember-konacha-rails'
  gem 'konacha', github: 'jfirebaugh/konacha', tag: 'v2.7.0'
  gem 'poltergeist', require: false
end

group :development, :test do
  gem 'rspec-rails'
end
