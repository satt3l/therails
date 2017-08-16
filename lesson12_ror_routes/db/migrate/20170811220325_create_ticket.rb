class CreateTicket < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
      t.integer :user_id
      t.integer :train_id
    end
  end
end
