# make the dishes for restaurants in db/seeds.rb
require './db/seeds/load_files'

LABELS = [ "Keto-Friendly",
 "Kosher",
 "Low Sugar",
 "Mediterranean",
 "Paleo",
 "Pescatarian",
 "Sugar-Conscious",
 "Vegan",
 "Vegetarian" ]

 ERRORS = [NoMethodError, ArgumentError]

def make_dish(restaurant, dish_data, i)
  # if index for dishes reaches max dataset entries:
  i >= 20 ? j = i - 20 : j = i
  puts "#{j}"

  if j < 20 && dish_data["hits"][j]["recipe"]["dishType"].count == 1
    dish = Dish.new(
      name: dish_data["hits"][j]["recipe"]["label"],
      restaurant: restaurant,
      img_url: dish_data["hits"][j]["recipe"]["image"],
      dish_type: dish_data["hits"][j]["recipe"]["dishType"][0]
      )
    puts "created a dish: #{dish.name}"
    dish.save!
    make_dish_labels(dish_data, dish, j)
  end
end

def make_dish_labels(dish_data, dish, j)
  health_labels = dish_data["hits"][j]["recipe"]["healthLabels"]

  dish_health_labels = health_labels.select{ |label| LABELS.include?(label) }

  dish_health_labels.each do |label|
    dish_label = HealthLabel.create(name: label)
    dhl = DishHealthLabel.new(
      dish_id: dish.id,
      health_label_id: dish_label.id
      )
    dish_label.save!
    dhl.save!
  end
end
