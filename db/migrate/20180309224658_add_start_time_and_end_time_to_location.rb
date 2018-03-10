class AddStartTimeAndEndTimeToLocation < ActiveRecord::Migration[5.1]
  def change
    add_column :locations, :start_time, :datetime
    add_column :locations, :end_time, :datetime
  end
end
