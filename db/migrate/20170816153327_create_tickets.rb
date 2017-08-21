class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
      t.belongs_to :passenger
      t.belongs_to :train
      t.belongs_to :first_station
      t.belongs_to :last_station

      t.timestamps
    end
  end
end
