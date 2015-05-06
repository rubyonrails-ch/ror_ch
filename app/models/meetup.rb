class Meetup
  GROUP_ID = 1_700_659

  def client
    @client ||= RubyMeetup::ApiKeyClient.new
  end

  def events
    results = call_api('events', group_id: GROUP_ID)
    results.map { |result| to_event(result) }
  end

  private

  def call_api(path, params)
    result = client.get_path("/2/#{path}", params)
    JSON.parse(result)['results']
  end

  def to_event(json)
    Event.new.tap do |event|
      event.meetup_id = json['id']
      event.name = json['name']
      event.description = json['description']
      event.time = Time.at(json['time'] / 1000)
      event.url = json['event_url']
      event.status = json['status']
      event.address = address_from_venue(json['venue'])
    end
  end

  def address_from_venue(venue)
    return unless venue
    %w(name address_1 address_2 city).map { |key| venue[key] }.compact.join(', ')
  end
end
