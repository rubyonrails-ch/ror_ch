require 'test_helper'

class MeetupTest < ActiveSupport::TestCase
  describe 'events' do
    let(:meetup_events) { mock_meetup('events') { Meetup.new.events } }

    it 'should get events from meetup api' do
      assert_equal 26, meetup_events.count
    end

    it 'should return Event objects' do
      assert meetup_events.all? { |e| e.is_a?(Event) }
    end

    it 'should return valid objects' do
      assert meetup_events.all?(&:valid?)
    end
  end
end
