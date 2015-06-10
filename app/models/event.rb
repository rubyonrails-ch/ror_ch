class Event < ActiveRecord::Base
  has_many :participants

  validates :meetup_id, presence: true, uniqueness: true
  validates :name, presence: true
  validates :description, presence: true
  validates :time, presence: true
  validates :url, presence: true
  validates :status, presence: true
end
