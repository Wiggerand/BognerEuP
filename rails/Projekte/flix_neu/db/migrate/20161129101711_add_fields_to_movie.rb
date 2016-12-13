class AddFieldsToMovie < ActiveRecord::Migration[5.0]
  def change
    add_column :movies, :name, :string
    add_column :movies, :price, :decimal
  end
end
