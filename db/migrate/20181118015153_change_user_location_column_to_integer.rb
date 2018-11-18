class ChangeUserLocationColumnToInteger < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :location, 'float USING CAST(location AS float)'
  end
end
