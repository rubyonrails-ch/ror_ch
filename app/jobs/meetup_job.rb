class MeetupJob < ActiveJob::Base
  include FistOfFury::Recurrent

  queue_as :default
  recurs { hourly(1) }

  def perform
    events = Meetup.new.events
    events.each do |event|
      e = Event.find_or_initialize_by(meetup_id: event.meetup_id)
      e.assign_attributes(event.attributes)
      e.save!
    end
  end
end
