# With Capistrano 3 capistrano-rbenv doesn't install rbenv and Ruby anymore,
# so instead we install rbenv with cdist, and Ruby/bundler during deploy

# clear this array to disable the rbenv:validate task,
# since on the first deploy we haven't had a chance to setup Ruby yet
set :rbenv_roles, []

namespace :rbenv do
  task :setup do
    # reset the array to all servers
    set :rbenv_roles, :all

    # NOTE: within(release_path) doesn't seem to work here for some reason...
    on roles(fetch(:rbenv_roles)) do
      execute [
        # delete old failed builds to avoid filling up /tmp
        '(rm -rf /tmp/ruby-build.* 2>/dev/null) || true',
        "cd #{release_path}",
        'export PATH=~/.rbenv/bin:$PATH',
        '(cd ~/.rbenv/plugins/ruby-build && git pull -q)',
        'eval "$(rbenv init -)"',
        'rbenv install --skip-existing',
        'gem spec bundler || gem install --quiet --no-rdoc --no-ri bundler'
      ].join(' && ')
    end
  end
end

# install and validate current Ruby version after the repository was updated
after 'deploy:updating', 'rbenv:setup'
after 'rbenv:setup', 'rbenv:validate'
