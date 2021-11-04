# make the dishes for restaurants in db/seeds.rb

DIET = HealthLabel.labels[:diets]
ALLERGIE = HealthLabel.labels[:allergies]
MACRO = HealthLabel.labels[:macros]

def make_dish(restaurant, dish_data, i)
  # if index for dishes reaches max dataset entries:
  j = i % 20
  # puts "j inside make_dish: #{j}"

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
  labels = dish_data["hits"][j]["recipe"]["healthLabels"]
  labels << dish_data["hits"][j]["recipe"]["dietLabels"]

  dhls = labels.select { |label| DIET.include?(label) || ALLERGIE.include?(label) || MACRO.include?(label) }

  dhls.each do |label|
    dish_label = HealthLabel.find_by(name: label) || HealthLabel.create(name: label)
    case
    when ALLERGIES.include?(label)
      dish_label.category = :allergy
    when MACROS.include?(label)
      dish_label.category = :macro
    when DIETS.include?(label)
      dish_label.category = :diet
    end
    dish_label.save!

    dhl = DishHealthLabel.new(dish_id: dish.id, health_label_id: dish_label.id)
    dhl.save!
  end
end

 def make_dishes(restaurant, nth_resto)
  5.times do |j|
  # index for dishes ( up to 20 entries/ json file )
    j += (nth_resto * 5)
    # puts "j in make_dishes: #{j}"

  # first request: starters
    make_dish(restaurant, @starter_hash, j)
  # second request: main courses
    make_dish(restaurant, @salad_hash, j)
  # third request: salads
    make_dish(restaurant, @main_hash, j)
  # fourth request: desserts
    make_dish(restaurant, @dessert_hash, j)

  # go to next dataset
    nth_file = (nth_resto + 1) / 4
    load_files(nth_file) if (j + 1) % 20 == 0
  end
end
