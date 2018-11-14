class AddColumnClaimStatusOnLostAnimals < ActiveRecord::Migration[5.2]
  def change
    add_column :lost_animals, :claim_status, :boolean, :default => true
  end
end
