class Job < ActiveRecord::Base
  validates :title, presence: true
  validates :url, presence: true, url: true
  validates :location, presence: true
end
