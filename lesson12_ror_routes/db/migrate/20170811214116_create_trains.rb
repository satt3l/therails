class CreateTrains < ActiveRecord::Migration[5.1]
  def change
    create_table :trains do |t|
      t.integer :route_id
      t.string :name

      t.timestamps
    end
  end
end
