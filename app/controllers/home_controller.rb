class HomeController < ApplicationController
  def index
    @events = Event.where('time > ?', Time.zone.now.beginning_of_day).order(:time)
  end
end
