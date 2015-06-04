class Job < ActiveRecord::Base
  validates :title, presence: true
  validates :url, presence: true
  validates :description, presence: true
end
