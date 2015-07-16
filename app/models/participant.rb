class Participant < ActiveRecord::Base
  belongs_to :event

  validates :meetup_id, presence: true
  validates :name, presence: true
  validates :status, presence: true
end
