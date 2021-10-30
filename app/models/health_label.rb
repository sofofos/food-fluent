class HealthLabel < ApplicationRecord
  has_many :dish_health_labels, dependent: :destroy
  has_many :dishes, through: :dish_health_labels
  has_many :diet_profiles, dependent: :destroy

  validates :category, presence: true

  enum category: { diet: "diet", allergy: "allergies", macro: "macros"}

  diets = ["Keto-Friendly", "Kosher", "Mediterranean",
           "Paleo", "Pescatarian", "Vegan", "Vegetarian"]

  allergies = ["Alcohol-Free", "Dairy-Free", "Egg-Free", "Fish-Free",
               "Gluten-Free", "Peanut-Free", "Pork-Free", "Poultry-Free",
               "Red-Meat-Free", "Sesame-Free", "Shellfish-Free",
               "Soy-Free", "Sulfite-Free", "Tree-Nut-Free", "Wheat-Free"]

  macros = ["High-Fiber", "High-Protein", "Low-Carb",
            "Low-Fat", "Low-Sodium", "Low-Sugar"]

  enum labels: { diets: diets, allergies: allergies, macros: macros }

  def assign_icon(health_label)
    label = health_label.name.downcase

    case health_label.category
    when "diet"
      health_label.icon_path = "#{label.split('-').first}.svg"
    when "allergy"
      health_label.icon_path = "#{label.gsub('-free', '')}.svg"
    when "macros"
      health_label.icon_path = "#{label}.svg"
    end
    path = "app/assets/images/#{health_label.icon_path}"
    File.file?(path) ? "good" : health_label.icon_path = "leaf-test.png"
    health_label.save!
  end
end
