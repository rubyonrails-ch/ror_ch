require 'test_helper'

class EventTest < ActiveSupport::TestCase
  it 'should create valid object' do
    event = Fabricate(:event)
    assert event.valid?
  end
end
