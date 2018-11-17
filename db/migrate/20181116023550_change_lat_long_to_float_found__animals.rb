class ChangeLatLongToFloatFoundAnimals < ActiveRecord::Migration[5.2]
  def change
    change_column :found_animals, :lat, 'float USING CAST(lat AS float)'
    change_column :found_animals, :long, 'float USING CAST(lat AS float)'
  end
end
