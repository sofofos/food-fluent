# make the dishes for restaurants in db/seeds.rb
require './db/seeds/load_files'

ERRORS = [NoMethodError, ArgumentError]

def make_dish(restaurant, dish_data, i)
# if index for dishes reaches max dataset entries:
  i > 20 ? j = i - 20 : j = i
  @count_errors = 0

  @dish = Dish.new(
    name: dish_data["hits"][j]["recipe"]["label"],
    restaurant: restaurant,
    img_url: dish_data["hits"][j]["recipe"]["image"],
    dish_type: dish_data["hits"][j]["recipe"]["dishType"][0]
  )
rescue *ERRORS
  j += 1
  @count_errors += 1
else
  @dish.save!
  make_dish_labels(dish_data, j)
end

def make_dish_labels(dish_data, j)
  dish_health_labels = dish_data["hits"][j]["recipe"]["healthLabels"]
  dish_health_labels.each do |label|
    dish_label = HealthLabel.create(name: label)
    dhl = DishHealthLabel.new(
      dish_id: @dish.id,
      health_label_id: dish_label.id
    )
    dish_label.save!
    dhl.save!
  end
end
