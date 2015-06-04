# config valid only for current version of Capistrano
lock '3.4.0'

set :application, 'ror_ch'
set :repo_url, 'git@github.com:panterch/ror_ch.git'

set :linked_files, fetch(:linked_files, []).push('.env')

# remove dumps made by capystrano-db-tasks
set :db_local_clean, true
set :db_remote_clean, true
