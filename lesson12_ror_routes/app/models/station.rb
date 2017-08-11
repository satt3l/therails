class Station < ActiveRecord::Base
  has_many :stations_routes
  has_many :routes, through: :stations_routes
  has_many :trains, foreign_key: :current_station_id
end
