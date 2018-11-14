class RemoveColumnClaimStatusOnLostAnimals < ActiveRecord::Migration[5.2]
  def change
    remove_column :lost_animals, :claim_status, :string
  end
end
