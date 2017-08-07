class CreateTrains < ActiveRecord::Migration[5.1]
  def change
    create_table :trains do |t|
      t.integer :train_number

      t.timestamps
    end
  end
end
