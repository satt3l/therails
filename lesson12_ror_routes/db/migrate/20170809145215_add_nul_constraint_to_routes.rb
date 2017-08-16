class AddNulConstraintToRoutes < ActiveRecord::Migration[5.1]
  def change
    change_column_null :routes, :name, false
  end
end
