require 'yaml'
require 'ruby_meetup'

if ENV['MEETUP_API_KEY'].blank?
  raise "Please set MEETUP_API_KEY environemnt variable (see README.md)"
end

RubyMeetup::ApiKeyClient.key = Rails.application.secrets.meetup_api_key
