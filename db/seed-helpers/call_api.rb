require 'json'
require 'rest-client'
require 'faker'

@dish_types = Dish.dish_types

def api_query(dish_type, opt = "")
  puts "Calling Edamam, ring ring.."

  base = "https://api.edamam.com/api/recipes/v2?type=public"
  app_id = "c635e655"
  app_key = "0ce249ab10cb9770c69b865d5a953ffe"
  img_size = "LARGE"
  meal_type = "Dinner"
  query_specs = "&random=true&field=label&field=image&field=healthLabels&field=dietLabels&field=dishType"

  request = "#{base}&q=#{opt}&app_id=#{app_id}&app_key=#{app_key}&imageSize=#{img_size}&mealType=#{meal_type}&dishType=#{dish_type}#{query_specs}"

  begin
  response = RestClient.get request
  rescue RestClient::ExceptionWithResponse
    puts "Too many requests! Prepare for 1 min snooze before resuming.."
    sleep(60)
  retry
  end
  JSON.parse(response)
end

def save_queries(dish_types, i)
  fruit = ["apple", "orange", "cherry", "grapes", "peach"].sample

  dish_types.each do |key, value|
    data = key == :dessert ? api_query(value, fruit) : api_query(value)
    File.write("storage/#{key}#{i}.json", JSON.dump(data))
  end
  puts "Batch #{i}'s desserts are inspired by #{fruit}! Enjoy"
end
