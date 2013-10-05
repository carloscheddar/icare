# DO NOT SET SENSITIVE DATA HERE!
# USE ENVIRONMENT VARIABLES OR 'local.rb' INSTEAD

SimpleConfig.for :application do
  group :facebook do
    set :restricted_group_id, nil
  end

  group :itineraries do
    set :geo_restricted, false
    group :bounds do
      set :sw, [1, 1]
      set :ne, [1, 1]
    end
  end
end
