class Dish < ApplicationRecord
  belongs_to :restaurant
  has_many :dish_health_labels
  has_many :health_labels, through: :dish_health_labels

  enum dish_type: {
    main_course: "main course",
    starter: "starter",
    salad: "salad",
    dessert: "desserts"
  }
end
