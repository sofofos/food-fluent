class HealthLabel < ApplicationRecord
  has_many :dish_health_labels, dependent: :destroy
  has_many :dishes, through: :dish_health_labels
end
