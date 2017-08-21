class Station < ActiveRecord::Base
  has_many :trains, foreign_key: :current_station_id
  has_many :routes_station
  has_many :routes, through: :routes_station
end
