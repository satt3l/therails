class Ticket < ActiveRecord::Base
  belongs_to :train
  belongs_to :user

  belongs_to :first_station, class_name: 'Station', foreign_key: :first_station_id
  belongs_to :last_station, class_name: 'Station', foreign_key: :last_station_id
  def save
    if self.train.route.stations.include?(Station.find(first_station_id)) && \
      self.train.route.stations.include?(Station.find(last_station_id))
      super
    else
      raise "First station id and last station id must be from Route #{self.train.route.stations.ids}"

    end

  end
end