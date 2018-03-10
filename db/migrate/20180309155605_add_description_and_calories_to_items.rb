class AddDescriptionAndCaloriesToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :description, :string
    add_column :items, :calories, :integer
  end
end
