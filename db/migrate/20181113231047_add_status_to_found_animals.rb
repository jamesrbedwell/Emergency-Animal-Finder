class AddStatusToFoundAnimals < ActiveRecord::Migration[5.2]
  def change
    add_column :found_animals, :claim_status, :string
  end
end
