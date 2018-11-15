class ChangeColumnImageUrlToImageAnimalsFound < ActiveRecord::Migration[5.2]
  def change
    rename_column :found_animals, :image_url, :image
  end
end
