class Participant
  include Mongoid::Document

  embedded_in :event

  field :meetup_id, type: String
  field :name, type: String
  field :image_url, type: String
  field :status, type: String

  validates :meetup_id, presence: true
  validates :name, presence: true
  validates :status, presence: true
end
