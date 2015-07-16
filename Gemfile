source 'https://rubygems.org'

# essentials
gem 'rails', '4.2.1'
gem 'mongoid', '~> 4.0.0'
gem 'multi_json'
gem 'unicorn' # app server
gem 'sidekiq' # background processing

# frontend
gem 'haml'
gem 'bootstrap-sass', '~> 3.3.4'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'

# app
gem 'ruby_meetup2' # meetup api client
gem 'figaro' # rails app configuration via ENV
gem 'rollbar', '~> 1.5.1' # error reporting

group :development, :test do
  gem 'byebug'
  gem 'web-console', '~> 2.0'
  gem 'spring' # app preloader
  gem 'rubocop', require: false # ruby style guide
end

group :production do
  gem 'rails_12factor' # heroku rails compatibility
end

group :test do
  gem 'minitest-rails'
  gem 'minitest-reporters' # test output formatting
  gem 'mocha' # mocking
  gem 'fabrication' # fixtures
  gem 'database_cleaner'
  gem 'codeclimate-test-reporter', require: false
  gem 'webmock' # mocking http calls
  gem 'vcr' # recording http calls for mocking
end

group :doc do
  gem 'sdoc', '~> 0.4.0'
end
