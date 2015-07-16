require 'codeclimate-test-reporter'
CodeClimate::TestReporter.start

ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/rails'
require 'minitest/reporters'
require 'mocha/mini_test'

Minitest::Reporters.use! [Minitest::Reporters::ProgressReporter.new]
DatabaseCleaner.strategy = :truncation

VCR.configure do |c|
  c.cassette_library_dir = 'test/vcr'
  c.hook_into :webmock
  c.ignore_hosts 'codeclimate.com'
end

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

    def mock_meetup
      VCR.use_cassette('meetup', record: :new_episodes, match_requests_on: [:method, :host, :path]) do
        yield
      end
    end
  end
end
