class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :name
      t.integer :long
      t.integer :lat

      t.timestamps
    end
  end
end
