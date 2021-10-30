class AddIconPathToHealthLabels < ActiveRecord::Migration[6.1]
  def change
    add_column :health_labels, :icon_path, :string
  end
end
