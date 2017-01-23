namespace :deploy do
  desc 'Restart application'
  task :restart do
    on roles(:all) do |host|
      execute :touch, current_path.join('tmp/restart.txt')
    end
  end

  desc 'Precompile assets locally and then rsync to web servers'
  task :custom_compile_assets do
    run_locally do
      execute 'RAILS_ENV=production bundle exec rake assets:precompile'
      execute 'tar -zcvf assets.tar.tgz public/assets/'
      execute 'rm -rf public/assets'
      execute 'scp assets.tar.tgz ' \
              "deployer@jyaasa.com:#{release_path}/assets.tar.tgz"
      execute 'rm -rf assets.tar.tgz'
    end
    on roles(:all) do |host|
      execute "cd #{release_path}; tar zxvf assets.tar.tgz"
      execute "cd #{release_path}; rm -rf assets.tar.tgz"
    end
    invoke 'deploy:restart'
  end
end
