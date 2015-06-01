# config valid only for current version of Capistrano
lock '3.4.0'

set :application, 'ror_ch'
set :repo_url, 'git@github.com:panterch/ror_ch.git'

set :linked_files, fetch(:linked_files, []).push('config/secrets.yml')


namespace :deploy do

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

end
