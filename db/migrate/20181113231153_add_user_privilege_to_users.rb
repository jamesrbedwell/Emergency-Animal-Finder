class AddUserPrivilegeToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_privilege, :string
  end
end
