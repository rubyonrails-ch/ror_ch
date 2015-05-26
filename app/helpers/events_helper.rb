module EventsHelper
  def maps_url(query)
    "http://maps.google.com/maps?q=#{query}"
  end
end
