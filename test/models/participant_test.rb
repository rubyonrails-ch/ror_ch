require 'test_helper'

class ParticipantTest < ActiveSupport::TestCase
  it 'should create valid object' do
    participant = Fabricate(:participant)
    assert participant.valid?
  end
end
