module ApplicationHelper
  def meetup_url
    "http://www.meetup.com/#{Meetup::GROUP_SLUG}"
  end
end
