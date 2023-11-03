require 'sidekiq/web'

Sidekiq.default_job_options = { 'backtrace' => true }

Sidekiq::Web.use(Rack::Auth::Basic) do |user, password|
  [user, password] == [Rails.application.credentials.sidekiq_username, Rails.application.credentials.sidekiq_password]
end

Sidekiq.configure_server do |config|
  config.redis = { url: 'redis://redis:6379/0' }
end

Sidekiq.configure_client do |config|
  config.redis = { url: 'redis://redis:6379/0' }
end
