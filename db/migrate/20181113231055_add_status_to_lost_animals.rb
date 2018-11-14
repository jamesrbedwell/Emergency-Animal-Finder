class AddStatusToLostAnimals < ActiveRecord::Migration[5.2]
  def change
    add_column :lost_animals, :claim_status, :string
  end
end
