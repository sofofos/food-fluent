class RemoveIngredientFromHealthLabel < ActiveRecord::Migration[6.1]
  def change
    remove_reference :health_labels, :ingredient, index: true, foreign_key: true
  end
end
