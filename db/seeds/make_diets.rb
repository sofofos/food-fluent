require 'faker'

# Expanding diet profile for seeded users to categories: diet, allergy, macros
# Since many food restrictions/macro preferences are implicitly part of
# certain diets, allergy and macro assignment is based on the initial diet
# that is randomly assigned to the seeded user

 # macros
@low_carb = HealthLabel.new( name: "Low-Carb", category: :macros )
@low_fat = HealthLabel.new( name: "Low-Fat", category: :macros )
@low_sodium = HealthLabel.new( name: "Low-Sodium", category: :macros )
@low_sugar = HealthLabel.new( name: "Low-Sugar", category: :macros )
@hi_fiber = HealthLabel.new( name: "High-Fiber", category: :macros )
@hi_protein = HealthLabel.new( name: "High-Protein", category: :macros )

# TODO: Encapsulate this monster seed file properly so I can stop
# polluting main with instance variables...

# # allergy
# @alcohol = HealthLabel.new( name: "Alcohol-Free", category: :allergy)
# @dairy = HealthLabel.new( name: "Dairy-Free", category: :allergy)
# @egg = HealthLabel.new( name: "Egg-Free", category: :allergy)
# @fish = HealthLabel.new( name: "Fish-Free", category: :allergy)
# @gluten = HealthLabel.new( name: "Gluten-Free", category: :allergy)
# @peanut = HealthLabel.new( name: "Peanut-Free", category: :allergy)
# @pork = HealthLabel.new( name: "Pork-Free", category: :allergy)
# @red_meat = HealthLabel.new( name: "Red-Meat-Free", category: :allergy)
# @poultry = HealthLabel.new( name: "Poultry-Free", category: :allergy)
# @sesame = HealthLabel.new( name: "Sesame-Free", category: :allergy)
# @shellfish = HealthLabel.new( name: "Shellfish-Free", category: :allergy)
# @soy = HealthLabel.new( name: "Soy-Free", category: :allergy)
# @sulfite = HealthLabel.new( name: "Sulfite-Free", category: :allergy)
# @tree_nut = HealthLabel.new( name: "Tree-Nut-Free", category: :allergy)
# @wheat = HealthLabel.new( name: "Wheat-Free", category: :allergy)

def assign_allergy_macros(labels, user)
  labels.each do |label|
    DietProfile.create!(
      health_label: label,
      user: user
    )
  end
end

def expand_profile(diet_p, user)
  case diet_p.health_label.name
    when "Keto-Friendly"
      assign_allergy_macros([@low_carb, @low_sodium], user)
    when "Kosher"
      assign_allergy_macros([@shellfish, @pork], user)
    when "Mediterranean"
      assign_allergy_macros([@low_sugar, @low_sodium], user)
    when "Paleo"
      assign_allergy_macros([@low_sugar, @dairy, @gluten, @soy, @peanut], user)
    when "Pescatarian"
      assign_allergy_macros([@red_meat, @pork, @poultry], user)    when "Vegan"
      assign_allergy_macros([@dairy, @egg, @fish, @pork, @red_meat, @shellfish], user)
    when "Vegetarian"
      assign_allergy_macros([@pork, @red_meat, @shellfish, @fish], user)
  end
end
