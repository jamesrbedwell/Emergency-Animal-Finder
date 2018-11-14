class UpdateClaimStatusOnFoundAnimals < ActiveRecord::Migration[5.2]
  def change
    remove_column :found_animals, :claim_status, :string
  end
end
