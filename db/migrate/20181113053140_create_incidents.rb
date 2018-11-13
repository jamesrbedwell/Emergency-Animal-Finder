class CreateIncidents < ActiveRecord::Migration[5.2]
  def change
    create_table :incidents do |t|
      t.string :name
      t.string :type

      t.timestamps
    end
  end
end
