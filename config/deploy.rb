# config valid only for current version of Capistrano
lock '3.6.0'

set :application, 'autopulse72'
set :repo_url, 'git@github.com:irenliber/store.git'

#add log file to shared folder
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system', 'public/uploads')

namespace :deploy do
  before 'check:linked_files', 'puma:config'
end