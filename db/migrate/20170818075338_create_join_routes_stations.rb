class CreateJoinRoutesStations < ActiveRecord::Migration[5.1]
  def change
    create_table :routes_stations do |t|
      t.belongs_to :route
    	t.belongs_to :station
    end
  end
end
