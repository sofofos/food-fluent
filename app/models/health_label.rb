class HealthLabel < ApplicationRecord
  has_many :dish_health_labels, dependent: :destroy
  has_many :dishes, through: :dish_health_labels
  has_many :diet_profiles, dependent: :destroy

  validates :category, presence: true

  enum category: { diet: "diet", allergy: "allergies", macros: "macros"}

  diets = ["Keto-Friendly", "Kosher", "Mediterranean",
           "Paleo", "Pescatarian", "Vegan", "Vegetarian"]

  allergies = ["Alcohol-Free", "Dairy-Free", "Egg-Free", "Fish-Free",
               "Gluten-Free", "Peanut-Free", "Pork-Free", "Poultry-Free",
               "Red-Meat-Free", "Sesame-Free", "Shellfish-Free",
               "Soy-Free", "Sulfite-Free", "Tree-Nut-Free", "Wheat-Free"]

  macros = ["High-Fiber", "High-Protein", "Low-Carb",
            "Low-Fat", "Low-Sodium", "Low-Sugar"]

  enum labels: { diets: diets, allergies: allergies, macros: macros }
end
