require "json"
require "rest-client"

print "cleaning db... "

HealthLabel.destroy_all
Dish.destroy_all
Restaurant.destroy_all
User.destroy_all
puts "done! nice clean database"
puts "generating yummy foods.."

dish_type = {
  main: "main course",
  starter: "starter",
  salad: "salad",
  dessert: "desserts"
}

def api_call(dish_type)
  base = "https://api.edamam.com/api/recipes/v2?type=public"
  app_id = "c635e655"
  app_key = "0ce249ab10cb9770c69b865d5a953ffe"
  img_size = "LARGE"
  meal_type = "Dinner"
  query_specs = "&random=true&field=label&field=image&field=healthLabels&field=dishType"

  request = "#{base}&q=&app_id=#{app_id}&app_key=#{app_key}&imageSize=#{img_size}&mealType=#{meal_type}&dishType=#{dish_type}#{query_specs}"
  response = RestClient.get request
  JSON.parse(response)
end

def make_dish(restaurant, dish_data, j)
  dish = Dish.new(
    name: dish_data["hits"][j]["recipe"]["label"],
    restaurant: restaurant,
    img_url: dish_data["hits"][j]["recipe"]["image"],
    dish_type: dish_data["hits"][j]["recipe"]["dishType"][0]
    )
  dish.save!

  dish_health_labels = dish_data["hits"][j]["recipe"]["healthLabels"]
  dish_health_labels.each do |label|
    dish_label = HealthLabel.create!(
      name: label)
    DishHealthLabel.new(
      dish_id: dish.id,
      health_label_id: dish_label.id)
  end
  j+=1
end


15.times do |i|
  i += 1
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    location: Faker::Address.full_address
  )
  restaurant.save!


# first request: starters
  dish_data = api_call(dish_type[:starter])
  5.times{ make_dish(restaurant, dish_data, i) }

# second request: main courses
  dish_data = api_call(dish_type[:main])
  5.times{ make_dish(restaurant, dish_data, i) }

# third request: salads
  dish_data = api_call(dish_type[:salad])
  5.times{ make_dish(restaurant, dish_data, i) }

# fourth request: desserts
  dish_data = api_call(dish_type[:dessert])
  5.times{ make_dish(restaurant, dish_data, i) }

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

  rand(1..5).times do
    DietProfile.create!(
      health_label: HealthLabel.all.sample,
      user: user)
  end
end
