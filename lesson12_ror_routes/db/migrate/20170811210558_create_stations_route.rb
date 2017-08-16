class CreateStationsRoute < ActiveRecord::Migration[5.1]
  def change
    create_table :stations_routes do |t|
      t.belongs_to :route
      t.belongs_to :station
    end
  end
end
