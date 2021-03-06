source 'https://rubygems.org'

ruby '2.0.0'

gem 'bootstrap-sass'
gem 'coffee-rails', '~> 4.0.0'
gem 'datamappify'
gem 'devise'
gem 'draper'
gem 'ember-rails'
gem 'ember-source', '~> 1.0.0.rc.6.3'
gem 'emblem-rails'
gem 'flat-ui-rails'
gem 'grape'
gem 'jquery-rails'
gem 'omniauth-github'
gem 'pg'
gem 'puma'
gem 'rails', '~> 4.0.0'
gem 'sass-rails'
gem 'slim-rails'
gem 'therubyracer', platforms: :ruby
gem 'uglifier', '>= 1.3.0'

group :development do
  gem 'dotenv-rails'
  gem 'ember-konacha-rails', github: 'kristianmandrup/ember-konacha-rails'
  gem 'foreman'
  gem 'guard'
  gem 'guard-bundler'
  gem 'guard-cucumber'
  gem 'guard-konacha', github: 'alexgb/guard-konacha',
    branch: 'konacha_3_0_compatibility'
  gem 'guard-livereload'
  gem 'guard-rspec'
  gem 'rack-livereload'
end

group :test do
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
  gem 'poltergeist', require: false
  gem 'shoulda-matchers'
end

group :development, :test do
  gem 'launchy'
  gem 'rspec-rails'
end

group :production do
  gem 'heroku-deflater'
end

gem "konacha", group: [:development, :test]