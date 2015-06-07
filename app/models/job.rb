class Job < ActiveRecord::Base
  validates :title, presence: true
  validates :url, presence: true
  validates :description, presence: true

  scope :by_date, -> { order('created_at DESC, id DESC') }
end
