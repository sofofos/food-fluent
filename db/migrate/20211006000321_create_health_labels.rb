class CreateHealthLabels < ActiveRecord::Migration[6.1]
  def change
    create_table :health_labels do |t|
      t.string :name
      t.references :ingredient, null: false, foreign_key: true
      t.string :category

      t.timestamps
    end
  end
end
