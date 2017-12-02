# require "dotenv-rails"

sidekiq_redis_conf = {
  :host => ENV['REDIS_HOST'] || 'redis',
  :port => ENV['REDIS_PORT'] || 6379,
  :db => 0
}

Sidekiq.configure_client do |config|
  config.redis = sidekiq_redis_conf
end

Sidekiq.configure_server do |config|
  config.redis = sidekiq_redis_conf
end
