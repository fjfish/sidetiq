require 'sidekiq'
require 'sidetiq'

require 'sidekiq/web'
require 'sidetiq/web'

require './workers/simple.rb'

Sidekiq.configure_client do |config|
  config.redis = { :size => 1 }
end

run Sidekiq::Web
