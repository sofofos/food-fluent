class DishHealthLabel < ApplicationRecord
  belongs_to :dish
  belongs_to :healthLabel
end
