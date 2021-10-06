class DishHealthLabel < ApplicationRecord
  belongs_to :dish
  belongs_to :health_label
end
