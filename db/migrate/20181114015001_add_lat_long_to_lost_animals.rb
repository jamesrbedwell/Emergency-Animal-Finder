class AddLatLongToLostAnimals < ActiveRecord::Migration[5.2]
  def change
    add_column :lost_animals, :lat, :string
    add_column :lost_animals, :long, :string
  end
end
