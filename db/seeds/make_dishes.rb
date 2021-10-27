# make the dishes for restaurants in db/seeds.rb
require './db/seeds/load_files'

LABELS =["Alcohol-Free",
         "Dairy-Free",
         "Egg-Free",
         "Fish-Free",
         "Gluten-Free",
         "High-Fiber",
         "High-Protein",
         "Keto-Friendly",
         "Kosher",
         "Low-Carb",
         "Low-Fat",
         "Low-Sodium",
         "Low-Sugar",
         "Mediterranean",
         "Paleo",
         "Peanut-Free",
         "Pescatarian",
         "Pork-Free",
         "Poultry-Free",
         "Red-Meat-Free",
         "Sesame-Free",
         "Shellfish-Free",
         "Soy-Free",
         "Sulfite-Free",
         "Tree-Nut-Free",
         "Vegan",
         "Vegetarian",
         "Wheat-Free"]

 ERRORS = [NoMethodError, ArgumentError]

def make_dish(restaurant, dish_data, i)
  # if index for dishes reaches max dataset entries:
  i >= 20 ? j = i - 20 : j = i

  if j < 20 && dish_data["hits"][j]["recipe"]["dishType"].count == 1
    dish = Dish.new(
      name: dish_data["hits"][j]["recipe"]["label"],
      restaurant: restaurant,
      img_url: dish_data["hits"][j]["recipe"]["image"],
      dish_type: dish_data["hits"][j]["recipe"]["dishType"][0])

    dish.save!
    make_dish_labels(dish_data, dish, j)
  end
end

def make_dish_labels(dish_data, dish, j)
  health_labels = dish_data["hits"][j]["recipe"]["healthLabels"]
  health_labels << dish_data["hits"][i]["recipe"]["dietLabels"]

  dish_health_labels = health_labels.select{ |label| LABELS.include?(label) }

  dish_health_labels.each do |label|

    dish_label = HealthLabel.find_by(name: label) || HealthLabel.create(name: label)
    dish_label.category = :diet
    dish_label.save!

    dhl = DishHealthLabel.new(dish_id: dish.id, health_label_id: dish_label.id)
    dhl.save!
  end
end
