class AddFirstStationLastStationFKtoTicket < ActiveRecord::Migration[5.1]
  def change
    add_belongs_to :tickets, :first_station
    add_belongs_to :tickets, :last_station
  end
end
