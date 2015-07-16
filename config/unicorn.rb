# heroku workaround for free bg processing, see https://coderwall.com/p/fprnhg/free-background-jobs-on-heroku
before_fork do |server, worker|
  @sidekiq_pid ||= spawn("bundle exec sidekiq -c 2")
end
