class ChangeLatLongToFloatLostAnimals < ActiveRecord::Migration[5.2]
  def change
    change_column :lost_animals, :lat, 'float USING CAST(long AS float)'
    change_column :lost_animals, :long, 'float USING CAST(long AS float)'
  end
end
