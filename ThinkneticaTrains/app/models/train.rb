class Train < ActiveRecord::Base
	belongs_to :route
  belongs_to :current_station, class_name: 'Station', foreign_key: :current_station_id
	has_many :tickets
end
