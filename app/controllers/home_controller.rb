class HomeController < ApplicationController
  def index
    @events = Event.all.asc(:time)
  end
end
