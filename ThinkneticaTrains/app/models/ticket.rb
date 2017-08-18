class Ticket < ActiveRecord::Base
  belongs_to :train
  belongs_to :passenger

  belongs_to :first_station, class_name: 'Station', foreign_key: :first_station_id
  belongs_to :last_station, class_name: 'Station', foreign_key: :last_station_id
  # Implement validations  
end
