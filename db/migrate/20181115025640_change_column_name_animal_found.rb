class ChangeColumnNameAnimalFound < ActiveRecord::Migration[5.2]
  def change
    rename_column :found_animals, :claim_status, :reunited
    change_column :found_animals, :reunited, 'boolean USING CAST(reunited AS boolean)', :default => false
  end
end
