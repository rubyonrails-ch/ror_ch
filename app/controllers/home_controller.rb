class HomeController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  def index
    @events = Event.where('time > ?', Time.now.beginning_of_day).order(:time).limit(4)
    @jobs = Job.all.limit(5).by_date
  end

  def join_meetup
    meetup = Meetup.new
    meetup_id = params[:meetup_id]
    meetup.join(meetup_id)

    respond_to do |format|
      format.js
    end
  end
end
