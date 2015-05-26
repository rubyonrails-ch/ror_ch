# Ensure the jobs run only in a web server.
FistOfFury.attack! do
  MeetupJob.recurs { hourly(1) }
end if defined?(Rails::Server)
