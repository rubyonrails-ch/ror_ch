class Meetup
  GROUP_ID = '1700659'
  GROUP_SLUG = 'rubyonrails-ch'

  def client
    @client ||= RubyMeetup::ApiKeyClient.new
  end

  def events
    call_api('events', group_id: GROUP_ID, page: 5)
  end

  def participants(event_meetup_id)
    call_api('rsvps', event_id: event_meetup_id)
  end

  def join(event_meetup_id)
    result = client.post_path("/2/rsvp", event_id: event_meetup_id, rsvp: 'Yes')
  end

  private

  def call_api(path, params)
    result = client.get_path("/2/#{path}", params)
    JSON.parse(result, object_class: OpenStruct).results
  end
end
