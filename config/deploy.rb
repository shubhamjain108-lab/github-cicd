lock "~> 3.19.2"

set :branch, 'main'
set :application, "github-cicd"
set :repo_url, "git@github.com:shubhamjain108-lab/github-cicd.git"
set :deploy_to, "/home/shubhamjain/apps/#{fetch(:application)}"

#append :linked_files, "config/master.key"
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"
#set :rvm_type, :user                     # Or :system
#set :rvm_ruby_version, '3.1.2'
#set :bundle_cmd, '/home/shubhamjain/.rvm/gems/ruby-3.1.2/bin/bundle'
set :keep_releases, 3
set :default_env, {
  PATH: "$HOME/.rvm/bin:$PATH"
}
#set :bundle_binstubs, nil
# config/deploy.rb
set :bundle_without, ''
append :linked_dirs, '.bundle'
SSHKit.config.command_map[:bundle] = '/home/shubhamjain/.rvm/gems/ruby-3.1.2/bin/bundle'
