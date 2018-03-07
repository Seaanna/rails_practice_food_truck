class CreateTruckCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :truck_categories do |t|
      t.references :truck, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
