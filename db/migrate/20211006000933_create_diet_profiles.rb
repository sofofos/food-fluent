class CreateDietProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :diet_profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.references :health_label, null: false, foreign_key: true

      t.timestamps
    end
  end
end
