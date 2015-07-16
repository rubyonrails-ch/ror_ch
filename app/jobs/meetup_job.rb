class MeetupJob < ActiveJob::Base

  def perform
    meetup = Meetup.new
    meetup.events.each do |result|
      event = to_event(result)
      event.participants = meetup.participants(event.meetup_id).map { |p| to_participant(p) }
      event.save!
    end
  end

  private

  def to_event(result)
    event = Event.find_or_initialize_by(meetup_id: result.id)
    event.assign_attributes(
      meetup_id: result.id,
      name: result.name,
      description: result.description,
      time: Time.zone.at(result.time / 1000),
      url: result.event_url,
      status: result.status,
      address: address_for_venue(result.venue)
    )
    event
  end

  def to_participant(result)
    Participant.new(
      meetup_id: result.rsvp_id,
      name: result.member.name,
      image_url: result.member_photo.try(:thumb_link),
      status: result.response
    )
  end

  def address_for_venue(venue)
    return unless venue
    %w(name address_1 address_2 city).map { |key| venue[key] }.compact.join(', ')
  end
end
