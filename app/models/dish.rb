class Dish < ApplicationRecord
  belongs_to :restaurant
  has_many :dish_health_labels
  has_many :health_labels, through: :dish_health_labels

  enum dish_type: {
    starter: "starter",
    salad: "salad",
    main: "main course",
    dessert: "desserts"
  }
end
