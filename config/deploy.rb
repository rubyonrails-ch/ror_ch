set :application, 'ror_ch'
set :repo_url, 'git@github.com:panterch/ror_ch.git'

# Default deploy_to directory is /var/www/my_app
set :deploy_to, '/home/app/app'
set :user, 'app'

# SSH options
set :ssh_options, user: 'app'

# Setup rbenv
set :rbenv_ruby, open(File.expand_path('../../.ruby-version', __FILE__)).read.strip

# Setup bundler
set :bundle_jobs, 2

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
set :log_level, :info

# Default value for :pty is false
# set :pty, true

set :linked_files, %w(config/database.yml config/secrets.yml)
set :linked_dirs, %w(log tmp/cache)

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }
set :rails_env, 'production'

# Default value for keep_releases is 5
# set :keep_releases, 5

namespace :deploy do
  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      with rails_env: fetch(:rails_env) do
        execute '$HOME/bin/unicorn_wrapper', 'restart'
      end
    end
  end

  after :publishing, :restart
end
