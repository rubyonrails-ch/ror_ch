source 'https://rubygems.org'
ruby '2.2.2'

# essentials
gem 'rails', '4.2.1'
gem 'multi_json'
gem 'pg'

# frontend
gem 'haml'
gem 'bootstrap-sass', '~> 3.3.4'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'execjs'
gem 'therubyracer', platforms: :ruby

# app
gem 'ruby_meetup2' # meetup api client

# hosting
gem 'unicorn'
gem 'rollbar', '~> 1.5.1' # error reporting
gem 'whenever', require: false

group :development, :test do
  gem 'byebug'
  gem 'web-console', '~> 2.0'
  gem 'spring' # app preloader
  gem 'rubocop', require: false # ruby style guide

  # Deployment
  gem 'capistrano', require: false
  gem 'capistrano-rails', require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano-rbenv', require: false
end

group :test do
  gem 'minitest-rails'
  gem 'minitest-reporters' # test output formatting
  gem 'mocha' # mocking
  gem 'fabrication' # fixtures
  gem 'codeclimate-test-reporter', require: false
  gem 'webmock' # mocking http calls
  gem 'vcr' # recording http calls for mocking
end

group :doc do
  gem 'sdoc', '~> 0.4.0'
end
