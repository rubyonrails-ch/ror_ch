# heroku workaround for free bg processing, see https://coderwall.com/p/fprnhg/free-background-jobs-on-heroku
before_fork do |_server, _worker|
  @sidekiq_pid ||= spawn('bundle exec sidekiq -c 2')
end
