require 'codeclimate-test-reporter'
CodeClimate::TestReporter.start

ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/rails'
require 'minitest/reporters'
require 'mocha/mini_test'

Minitest::Reporters.use! [Minitest::Reporters::ProgressReporter.new]

VCR.configure do |c|
  c.cassette_library_dir = 'test/vcr'
  c.hook_into :webmock
  c.ignore_hosts 'codeclimate.com'
end

module ActiveSupport
  class TestCase
    def teardown
      super
      ActionMailer::Base.deliveries.clear
    end

    def mock_meetup
      VCR.use_cassette('meetup', record: :new_episodes, match_requests_on: [:method, :host, :path]) do
        yield
      end
    end

    def perform_job 
      mock_meetup { MeetupJob.new.perform }
    end
  end
end
