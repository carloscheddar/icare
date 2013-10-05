# DO NOT SET SENSITIVE DATA HERE!
# USE ENVIRONMENT VARIABLES OR 'local.rb' INSTEAD

SimpleConfig.for :application do
  group :facebook do
    set :cache_expiry_time, 1.minute
    set :namespace, ENV['FACEBOOK_NAMESPACE']
    set :app_id, ENV['FACEBOOK_APP_ID']
    set :secret, ENV['FACEBOOK_SECRET']
  end
  group :map do
    # defaults to Italy
    set :center, '18.217612,-66.472993'
    set :zoom, 8
    group :bounds do
      set :sw, '17.918636,-67.295594'
      set :ne, '18.467886,-65.557008'
    end
  end
  group :itineraries do
    # Enable this option if you want to restrict itineraries inside a geographic area
    set :geo_restricted, false
    group :bounds do
      # Island of Ischia
      set :sw, [40.69205729999999, 13.850980400000026]
      set :ne, [40.7615088, 13.966879699999936]
    end
  end
end
