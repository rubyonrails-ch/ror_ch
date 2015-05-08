require 'test_helper'

class MeetupJobTest < ActiveJob::TestCase
  let(:perform_job) { mock_meetup { MeetupJob.new.perform } }

  it 'should create events' do
    assert_difference -> { Event.count }, 5 do
      perform_job
    end
  end

  it 'should assign participants' do
    event = Fabricate(:event, meetup_id: 'dtxpxdythbrb')
    assert_difference -> { event.reload.participants.count }, 5 do
      perform_job
    end
  end

  it 'should update existing events' do
    perform_job
    assert_no_difference 'Event.count' do
      perform_job
    end
  end
end
