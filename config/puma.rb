workers Integer(ENV['WEB_CONCURRENCY'] || 1)
threads_count = ENV.fetch("RAILS_MAX_THREADS") { 1 }.to_i
threads threads_count, threads_count

preload_app!

port        ENV.fetch("PORT") { 3000 }
environment ENV.fetch("RAILS_ENV") { "development" }
plugin :tmp_restart

app_root = File.expand_path("../..", __FILE__)
bind "unix://#{app_root}/tmp/sockets/puma.sock"

stdout_redirect "#{app_root}/log/puma.stdout.log", "#{app_root}/log/puma.stderr.log", true
