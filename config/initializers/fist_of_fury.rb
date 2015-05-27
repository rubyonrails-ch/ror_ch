# Ensure the jobs run only in a web server.
FistOfFury.attack! do
  MeetupJob.recurs { minutely(1) }
end if defined?(Rails::Server)
