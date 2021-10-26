require 'faker'


  # macros
  low_carb = HealthLabel.new( name: "Low-Carb", category: :macros )
  low_fat = HealthLabel.new( name: "Low-Fat", category: :macros )
  low_sodium = HealthLabel.new( name: "Low-Sodium", category: :macros )
  low_sugar = HealthLabel.new( name: "Low-Sugar", category: :macros )
  hi_fiber = HealthLabel.new( name: "High-Fiber", category: :macros )
  hi_protein = HealthLabel.new( name: "High-Protein", category: :macros )

  # allergy
  alcohol = HealthLabel.new( name: "Alcohol-Free", category: :allergy)
  dairy = HealthLabel.new( name: "Dairy-Free", category: :allergy)
  egg = HealthLabel.new( name: "Egg-Free", category: :allergy)
  fish = HealthLabel.new( name: "Fish-Free", category: :allergy)
  gluten = HealthLabel.new( name: "Gluten-Free", category: :allergy)
  peanut = HealthLabel.new( name: "Peanut-Free", category: :allergy)
  pork = HealthLabel.new( name: "Pork-Free", category: :allergy)
  red_meat = HealthLabel.new( name: "Red-Meat-Free", category: :allergy)
  poultry = HealthLabel.new( name: "Poultry-Free", category: :allergy)
  sesame = HealthLabel.new( name: "Sesame-Free", category: :allergy)
  shellfish = HealthLabel.new( name: "Shellfish-Free", category: :allergy)
  soy = HealthLabel.new( name: "Soy-Free", category: :allergy)
  sulfite = HealthLabel.new( name: "Sulfite-Free", category: :allergy)
  tree_nut = HealthLabel.new( name: "Tree-Nut-Free", category: :allergy)
  wheat = HealthLabel.new( name: "Wheat-Free", category: :allergy)

  def assign_allergy_macros(labels, user)
    labels.each do |label|
      diet_p = DietProfile.create!(
        health_label: label,
        user: user
      )
    end
  end

10.times do |i|
  i += 1
  user = User.create!(
    name: "#{Faker::Name.first_name} #{Faker::Name.last_name}",
    password: "password",
    email: "user#{i}@foodies.com")

# Assign a "slightly less random" username based on name and a fruit..
    user[:username] = "#{user[:name].first(4).downcase}_#{Faker::Food.fruits.split.first.downcase}"
    user.save!

  rand(1..3).times do
    @diet_p = DietProfile.create!(
      health_label: HealthLabel.all.sample,
      user: user)
  end
    case @diet_p.health_label.name
      when "Keto-Friendly"
        # puts "in ketosis"
        assign_allergy_macros([low_carb, low_sodium], user)
      when "Kosher"
        # puts "in kosher"
        assign_allergy_macros([shellfish, pork], user)
      when "Mediterranean"
        # puts "in greece"
        assign_allergy_macros([low_sugar, low_sodium], user)
      when "Paleo"
        # puts "in a cave"
        assign_allergy_macros([low_sugar, dairy, gluten, soy, peanut], user)
      when "Pescatarian"
        # puts "under the sea"
        assign_allergy_macros([red_meat, pork, poultry], user)
      when "Vegan"
        # puts "with the pixies of the forest"
        assign_allergy_macros([dairy, egg, fish, pork, red_meat, shellfish], user)
      when "Vegetarian"
        # puts "hunting bugs at night"
        assign_allergy_macros([pork, red_meat, shellfish, fish], user)
    end

  #strip duplicate health_labels from diet_profile
  user.diet_profiles = user.diet_profiles.all.uniq(&:health_label_id)
  end
