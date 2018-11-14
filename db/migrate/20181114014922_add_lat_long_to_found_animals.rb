class AddLatLongToFoundAnimals < ActiveRecord::Migration[5.2]
  def change
    add_column :found_animals, :lat, :string
    add_column :found_animals, :long, :string
  end
end
