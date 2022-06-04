require 'sidekiq'

REDIS_HOST = ENV['redis_host'] || ENV['REDIS_HOST'] || '127.0.0.1'
SIKEKIQ_REDIS_URL = "redis://#{REDIS_HOST}:6379/12"

Sidekiq.configure_server do |config|
  config.redis = {
    url: SIKEKIQ_REDIS_URL,
  }
end

Sidekiq.configure_client do |config|
  config.redis = {
    url: SIKEKIQ_REDIS_URL,
  }
end
