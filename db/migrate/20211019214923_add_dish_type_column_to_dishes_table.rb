class AddDishTypeColumnToDishesTable < ActiveRecord::Migration[6.1]
  def change
    add_column :dishes, :dish_type, :string
  end
end
