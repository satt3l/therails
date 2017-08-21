class Route < ActiveRecord::Base
  validates :name, presence: true

  has_many :routes_station
  has_many :trains
  has_many :stations, through: :routes_station
end
