require "json"
require "rest-client"

print "cleaning db... "

HealthLabel.destroy_all
Dish.destroy_all
Restaurant.destroy_all
User.destroy_all
puts "done! nice clean database"
puts "generating shit.."

health_tags = %w[alcohol-free immuno-supportive celery-free crustacean-free dairy-free egg-free
  fish-free fodmap-free gluten-free keto-friendly kidney-friendly kosher low-potassium
  lupine-free Mediterranean mustard-free low-fat-abs No-oil-added low-sugar paleo peanut-free]

health_tags.each do |health|
  HealthLabel.create!(
    name: health
  )
end

15.times do |i|
  i += 1
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    location: Faker::Address.full_address
  )
  restaurant.save!

# introducing Edamam food api to generate dishes
  base = "https://api.edamam.com/api/recipes/v2?type=public"
  app_id = "c635e655"
  app_key = "0ce249ab10cb9770c69b865d5a953ffe"
  img_size = "LARGE"
  meal_type = "Dinner"
  dish_type = "Starter"
  query_specs = "&random=true&field=label&field=image&field=healthLabels"

  # first request: starters
  request = "#{base}&q=&app_id=#{app_id}&app_key=#{app_key}&imageSize=#{img_size}&mealType=#{meal_type}&dishType=#{dish_type}#{query_specs}"
  response = RestClient.get request
  dish_data = JSON.parse(response)

  5.times do |dish|
    dish = Dish.new(
      name: dish_data.hits[0].recipe.label,
      restaurant: restaurant,
      img_url: dish_data.hits[0].recipe.image,
      dish_type: dish_type
      )









  

    dish.save!

    rand(1..6).times do
      dish.health_labels << HealthLabel.all.sample
    end
  end
end

puts "generating users.."
renters = []

10.times do |i|
  i += 1
  user = User.create!(
    name: Faker::Name.name,
    username: Faker::Internet.username,
    password: "password",
    email: "user#{i}@gmail.com")
  # renters << user
  rand(1..5).times do
    DietProfile.create!(
      health_label: HealthLabel.all.sample,
      user: user)
  end
end



