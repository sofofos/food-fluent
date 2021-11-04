class AddImgPathToRestaurants < ActiveRecord::Migration[6.1]
  def change
    add_column :restaurants, :img_url, :string
  end
end
