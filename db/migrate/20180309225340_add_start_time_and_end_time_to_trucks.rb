class AddStartTimeAndEndTimeToTrucks < ActiveRecord::Migration[5.1]
  def change
    add_column :trucks, :start_time, :datetime
    add_column :trucks, :end_time, :datetime
  end
end
