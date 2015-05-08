# Ensure the jobs run only in a web server.
FistOfFury.attack! if defined?(Rails::Server)
