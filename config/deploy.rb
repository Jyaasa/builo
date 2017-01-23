# config valid only for current version of Capistrano
lock '3.5.0'

set :application, 'builo'
set :repo_url, 'ssh://git@phabricator.jyaasa.com/diffusion/43/builo.git'
set :use_sudo, true

set :rvm_type, :system
set :rvm_ruby_version, 'ruby-2.3.1'
set :branch, 'master'

set :bundle_flags, '--deployment'
server 'builo.jyaasa.com', user: 'deployer', roles: %w{web}

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, '/home/deployer/www/builo.staging.com'

# Default value for :scm is :git
set :scm, :git

# Default value for :format is :airbrussh.
set :format, :pretty

# Default value for :log_level is :debug
set :log_level, :info

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true,
# log_file: 'log/capistrano.log', color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
set :linked_files, fetch(:linked_files, []).push('config/database.yml',
                                                 'config/secrets.yml')
# Default value for linked_dirs is []
set :linked_dirs, fetch(:linked_dirs, []).push('log',
                                               'tmp/pids',
                                               'tmp/cache',
                                               'tmp/sockets',
                                               'public/system',
                                               'public/assets',
                                               'public/uploads')

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
set :keep_releases, 3

after :deploy, 'deploy:custom_compile_assets'
