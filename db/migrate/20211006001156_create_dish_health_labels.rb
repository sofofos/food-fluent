class CreateDishHealthLabels < ActiveRecord::Migration[6.1]
  def change
    create_table :dish_health_labels do |t|
      t.references :dish, null: false, foreign_key: true
      t.references :healthLabel, null: false, foreign_key: true

      t.timestamps
    end
  end
end
