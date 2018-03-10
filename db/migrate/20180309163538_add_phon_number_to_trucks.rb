class AddPhonNumberToTrucks < ActiveRecord::Migration[5.1]
  def change
    add_column :trucks, :phone_number, :integer
  end
end
