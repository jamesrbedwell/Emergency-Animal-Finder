class AddStatusToIncident < ActiveRecord::Migration[5.2]
  def change
    add_column :incidents, :active, :boolean, :default => true
  end
end
