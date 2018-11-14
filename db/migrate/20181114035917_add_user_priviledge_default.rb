class AddUserPriviledgeDefault < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :user_privilege, :admin_privilege
    change_column :users, :admin_privilege, 'boolean USING CAST(admin_privilege AS boolean)', :default => false
  end
end

