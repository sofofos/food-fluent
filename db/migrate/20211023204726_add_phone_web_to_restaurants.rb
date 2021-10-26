class AddPhoneWebToRestaurants < ActiveRecord::Migration[6.1]
  def change
    add_column :restaurants, :phone_number, :string
    add_column :restaurants, :website, :string
  end
end
