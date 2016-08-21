role :app, %w{publisher@autopulse72.ru}
role :web, %w{publisher@autopulse72.ru}
role :db,  %w{publisher@autopulse72.ru}

server 'autopulse72.ru', user: 'publisher', roles: %w{web app}, primary: true
set :rails_env, 'production'
set :deploy_to, "/home/publisher/autopulse72"
set :branch, ENV['BRANCH'] || 'production'

set :rvm_ruby_version, '2.3.0@autopulse'