class CreateTrains < ActiveRecord::Migration[5.1]
  def change
    create_table :trains do |t|
      t.belongs_to :route
      t.string :name
      t.timestamps
    end
    add_belongs_to :trains, :current_station
  end
end
