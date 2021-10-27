# coding utf-8
require 'json'
require 'rest-client'
require 'faker'

dish_type = Dish.dish_types

def api_call(dish_type, opt = "")
  base = "https://api.edamam.com/api/recipes/v2?type=public"
  app_id = "c635e655"
  app_key = "0ce249ab10cb9770c69b865d5a953ffe"
  img_size = "LARGE"
  meal_type = "Dinner"
  query_specs = "&random=true&field=label&field=image&field=healthLabels&field=dietLabels"

  request = "#{base}&q=#{opt}&app_id=#{app_id}&app_key=#{app_key}&imageSize=#{img_size}&mealType=#{meal_type}&dishType=#{dish_type}#{query_specs}"

  begin
  response = RestClient.get request
  rescue RestClient::ExceptionWithResponse
    puts "Too many requests! Prepare for 1 min snooze before resuming.."
    sleep(60)
  retry
  JSON.parse(response)
  end
end

def write_files(dish_type, i)
  fruit = ["apple", "orange", "cherry", "grapes", "peach"].sample

  dish_type.each do |key, value|
    data = key == :dessert ? api_call(value, fruit) : api_call(value)
    File.write("storage/#{key}#{i}.json", JSON.dump(data))
  end
  puts "Batch #{i}'s desserts are inspired by #{fruit}! Enjoy"
end

def update_index
  dir = 'storage'
  num = Dir[File.join(dir, '**', '*.json')].count { |file| File.file?(file) }
  num / 4
end


# Will produce 3 batch of dishes (starter, salad, main, dessert)
idx = update_index

3.times do |i|
  write_files(dish_type, idx + i )
end

puts "Bye bye"

