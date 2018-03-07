class CreateTruckLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :truck_locations do |t|
      t.references :truck, foreign_key: true
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
