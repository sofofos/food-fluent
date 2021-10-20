class Dish < ApplicationRecord
  belongs_to :restaurant
  has_many :dish_health_labels
  has_many :health_labels, through: :dish_health_labels
end
