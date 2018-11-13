class AddImageUrlToLostAnimals < ActiveRecord::Migration[5.2]
  def change
    add_column :lost_animals, :image_url, :text
  end
end
