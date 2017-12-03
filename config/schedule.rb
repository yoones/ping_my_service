every 1.minute do
  runner "CheckAllServicesStatusWorker.perform_async", environment: ENV['RAILS_ENV'] # , output: "/tmp/whenever-output"
end
