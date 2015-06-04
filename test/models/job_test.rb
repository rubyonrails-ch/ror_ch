require 'test_helper'

class JobTest < ActiveSupport::TestCase
  it 'should fabricate valid object' do
    event = Fabricate(:job)
    assert event.valid?
    assert event.persisted?
  end
end
