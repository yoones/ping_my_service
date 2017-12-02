job_type :runner, "cd :path && bundle exec rails runner -e :environment ':task'"

every 1.minute do
  command "date >> /tmp/madame_mich"
  runner "CheckAllServicesStatusWorker.perform_async", environment: ENV['RAILS_ENV']
end
