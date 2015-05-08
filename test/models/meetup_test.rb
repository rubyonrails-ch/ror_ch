require 'test_helper'

class MeetupTest < ActiveSupport::TestCase
  describe 'events' do
    let(:meetup_events) { mock_meetup { Meetup.new.events } }

    it 'should get events from meetup api' do
      assert_equal 5, meetup_events.count
    end

    it 'should return json' do
      assert meetup_events.is_a? Array
    end
  end

  describe 'participants' do
    let(:meetup_participants) { mock_meetup { Meetup.new.participants('dtxpxdythbrb') } }

    it 'should get participants for event from meetup api' do
      assert_equal 5, meetup_participants.count
    end

    it 'should return json' do
      assert meetup_participants.is_a? Array
    end
  end
end
