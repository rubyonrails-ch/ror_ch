source 'https://rubygems.org'
ruby '2.2.2'

gem 'rails', '4.2.1'
gem 'mongoid', '~> 4.0.0'

# frontend
gem 'haml'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'


group :development, :test do
  gem 'byebug'
  gem 'web-console', '~> 2.0'
  gem 'spring' # app preloader
end

group :production do
  gem 'rails_12factor' # heroku rails compatibility
end

group :test do
  gem 'minitest-rails'
  gem 'minitest-reporters' # test output
  gem 'mocha' # mocking
  gem 'fabrication' # fixtures
  gem 'database_cleaner'
end

group :doc do
  gem 'sdoc', '~> 0.4.0'
end

