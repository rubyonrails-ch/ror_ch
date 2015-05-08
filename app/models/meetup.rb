class Meetup

  def client
    @client ||= RubyMeetup::ApiKeyClient.new
  end

  def events
    call_api('events', group_id: Figaro.env.meetup_group_id, page: 5)
  end

  def participants(event_meetup_id)
    call_api('rsvps', event_id: event_meetup_id)
  end

  private

  def call_api(path, params)
    result = client.get_path("/2/#{path}", params)
    JSON.parse(result, object_class: OpenStruct).results
  end
end
