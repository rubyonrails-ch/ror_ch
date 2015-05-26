module ApplicationHelper
  def meetup_url
    "http://www.meetup.com/#{Figaro.env.meetup_group_slug}"
  end
end
