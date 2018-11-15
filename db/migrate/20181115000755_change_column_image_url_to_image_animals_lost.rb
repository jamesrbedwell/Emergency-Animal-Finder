class ChangeColumnImageUrlToImageAnimalsLost < ActiveRecord::Migration[5.2]
  def change
    rename_column :lost_animals, :image_url, :image
  end
end
