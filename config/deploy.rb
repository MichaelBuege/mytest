# config valid only for current version of Capistrano
lock '3.4.0'

set :application, 'mytest'
set :repo_url, 'git@github.com:MichaelBuege/mytest.git'

set :branch, "zweig"

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, '/var/www/my_app_name'

set :ssh_options, {
    user: 'ubuntu',
    keys: %w(/home/michael/Downloads/devTestKeyIrland.pem)
}

set :scm, :git

set :format, :pretty
set :log_level, :debug

set :keep_releases, 5

namespace :deploy do
  after :finishing, 'deploy:cleanup'
end
