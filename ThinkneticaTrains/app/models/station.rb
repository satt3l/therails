class Station < ActiveRecord::Base
  has_many :routes_station
  has_many :routes, through: :routes_station
end
