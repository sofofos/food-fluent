class AddImageUrlToDishes < ActiveRecord::Migration[6.1]
  def change
    add_column :dishes, :img_url, :string
  end
end
