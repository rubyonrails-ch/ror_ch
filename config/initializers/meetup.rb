require 'ruby_meetup'
RubyMeetup::ApiKeyClient.key = Figaro.env.meetup_api_key
