class AddPhoneNumberToLocation < ActiveRecord::Migration[5.1]
  def change
    add_column :locations, :phone_number, :integer
  end
end
