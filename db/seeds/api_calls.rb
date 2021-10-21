require 'json'
require 'rest-client'
require 'faker'

require './db/seeds.rb'

dish_type = Dish.dish_types

def api_call(dish_type, opt = "")
  base = "https://api.edamam.com/api/recipes/v2?type=public"
  app_id = "c635e655"
  app_key = "0ce249ab10cb9770c69b865d5a953ffe"
  img_size = "LARGE"
  meal_type = "Dinner"
  query_specs = "&random=true&field=label&field=image&field=healthLabels&field=dishType"

  request = "#{base}&q=#{opt}&app_id=#{app_id}&app_key=#{app_key}&imageSize=#{img_size}&mealType=#{meal_type}&dishType=#{dish_type}#{query_specs}"
  response = RestClient.get request
  JSON.parse(response)
end


# first request: starters
data_hash = api_call(dish_type[:starter])
File.write("storage/starters#{@idx}.json", JSON.dump(data_hash))

# second request: main courses
data_hash = api_call(dish_type[:main])
File.write("storage/mains#{@idx}.json", JSON.dump(data_hash))

#  third request: salads
data_hash = api_call(dish_type[:salad])
File.write("storage/salads#{@idx}.json", JSON.dump(data_hash))

#  fourth request: desserts
fruit = Faker::Food.fruits
data_hash = api_call(dish_type[:dessert], fruit)
File.write("storage/desserts#{@idx}.json", JSON.dump(data_hash))
puts "Today's desserts are inspired by #{fruit}! Enjoy"

# Updating index for next api_call / restaurant
@idx += 1

puts "Ensuring I am not executed again for 30 seconds, pls wait..."
sleep(30)
puts "Proceed!"
