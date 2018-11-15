class ChangeColumnNameAnimalLost < ActiveRecord::Migration[5.2]
  def change
    rename_column :lost_animals, :claim_status, :reunited
    change_column :lost_animals, :reunited, 'boolean USING CAST(reunited AS boolean)', :default => false
  end
end
