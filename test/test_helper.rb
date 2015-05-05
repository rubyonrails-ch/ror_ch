ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/rails'
require 'minitest/reporters'
require 'mocha/mini_test'

Minitest::Reporters.use! [Minitest::Reporters::ProgressReporter.new]
DatabaseCleaner[:mongoid].strategy = :truncation

module ActiveSupport
  class TestCase
    def setup
      DatabaseCleaner.clean # reset database
      super
    end

    def teardown
      ActionMailer::Base.deliveries.clear
      super
    end
  end
end
