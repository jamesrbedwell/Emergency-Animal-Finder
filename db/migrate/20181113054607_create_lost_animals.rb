class CreateLostAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :lost_animals do |t|
      t.string :species
      t.date :date_lost
      t.string :location_lost
      t.references :incident, foreign_key: true
      t.references :user, foreign_key: true
      t.text :tags, array: true, default: []

      t.timestamps
    end
  end
end
