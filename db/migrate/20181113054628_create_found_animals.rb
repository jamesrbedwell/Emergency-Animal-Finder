class CreateFoundAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :found_animals do |t|
      t.string :species
      t.date :date_found
      t.date :date_posted
      t.string :location_found
      t.string :location_current
      t.text :image_url
      t.string :health_status
      t.references :incident, foreign_key: true
      t.references :user, foreign_key: true
      t.text :tags, array: true, default: []

      t.timestamps
    end
  end
end
