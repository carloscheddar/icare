# DO NOT SET SENSITIVE DATA HERE!
# USE ENVIRONMENT VARIABLES OR 'local.rb' INSTEAD

SimpleConfig.for :application do
  group :facebook do
    set :cache_expiry_time, 1.minute
    set :namespace, ENV['FACEBOOK_NAMESPACE']
    set :app_id, ENV['FACEBOOK_APP_ID']
    set :secret, ENV['FACEBOOK_SECRET']
  end
end
