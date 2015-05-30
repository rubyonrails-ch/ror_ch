require 'ruby_meetup'

RubyMeetup::ApiKeyClient.key = Rails.application.secrets.meetup_api_key
