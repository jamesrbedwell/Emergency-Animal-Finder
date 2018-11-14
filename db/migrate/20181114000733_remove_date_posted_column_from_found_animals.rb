class RemoveDatePostedColumnFromFoundAnimals < ActiveRecord::Migration[5.2]
  def change
    remove_column :found_animals, :date_posted, :date
  end
end
