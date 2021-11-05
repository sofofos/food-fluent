require_relative 'init-labels'


diets = ["Keto-Friendly", "Kosher", "Mediterranean",
  "Paleo", "Pescatarian", "Vegan", "Vegetarian"]

allergies = ["Alcohol-Free", "Dairy-Free", "Egg-Free", "Fish-Free",
      "Gluten-Free", "Peanut-Free", "Pork-Free", "Poultry-Free",
      "Red-Meat-Free", "Sesame-Free", "Shellfish-Free",
      "Soy-Free", "Sulfite-Free", "Tree-Nut-Free", "Wheat-Free"]

macros = ["High-Fiber", "High-Protein", "Low-Carb",
   "Low-Fat", "Low-Sodium", "Low-Sugar"]

def init_dishes_omni(restaurant)
  dish = Dish.create!(
    name: "Fatouche",
    restaurant: restaurant,
    price: "7",
    img_url: "https://static.wixstatic.com/media/ff5eee_ba7e2cd1b70c484eb58382ad85a3dc0e~mv2_d_5472_3648_s_4_2.jpg/v1/fill/w_232,h_232,usm_1.20_1.00_0.01/file.webp",
    dish_type: "starter"
    )
    health_labels = ["Mediterranean", "Pescatarian", "Vegan", "Vegetarian", "Alcohol-Free", "Dairy-Free", "Egg-Free", "Fish-Free",
                    "Peanut-Free", "Pork-Free", "Poultry-Free", "Red-Meat-Free", "Sesame-Free", "Shellfish-Free", "Soy-Free", 
                    "Tree-Nut-Free"]
    init_labels(health_labels, dish)

  dish = Dish.create!(
    name: "Orzo",
    restaurant: restaurant,
    price: "6.50",
    img_url: "https://static.wixstatic.com/media/ff5eee_6bebef7a2d03466d8d65459ee6a5f26c~mv2_d_5379_3586_s_4_2.jpg/v1/fill/w_232,h_232,usm_1.20_1.00_0.01/file.webp",
    dish_type: "starter"
    )
  health_labels = ["Mediterranean", "Pescatarian", "Vegan", "Vegetarian", "Alcohol-Free", "Dairy-Free", "Egg-Free", "Fish-Free",
                  "Pork-Free", "Poultry-Free", "Red-Meat-Free", "Sesame-Free", "Shellfish-Free", "Soy-Free"]
  init_labels(health_labels, dish)

  dish = Dish.create!(
    name: "Moussaka",
    restaurant: restaurant,
    price: "6.50",
    img_url: "https://static.wixstatic.com/media/ff5eee_26d61179627e4acd8733442d7ad3c837~mv2_d_5297_3531_s_4_2.jpg/v1/fill/w_232,h_232,usm_1.20_1.00_0.01/file.webp",
    dish_type: "starter"
    )
  health_labels = ["Mediterranean", "Pescatarian", "Vegan", "Vegetarian", "Alcohol-Free", "Dairy-Free", "Egg-Free", "Fish-Free",
                  "Peanut-Free", "Pork-Free", "Poultry-Free", "Red-Meat-Free", "Sesame-Free", "Shellfish-Free", "Soy-Free", 
                  "Tree-Nut-Free", "Gluten-Free", "Wheat-Free"]
  init_labels(health_labels, dish)

  dish = Dish.create!(
    name: "Hummus",
    restaurant: restaurant,
    price: "6.50",
    img_url: "https://static.wixstatic.com/media/ff5eee_528e153d5bd84c66ab06ac7c27cdf185~mv2.jpg/v1/fill/w_232,h_232,usm_1.20_1.00_0.01/file.webp",
    dish_type: "starter"
    )
  health_labels = ["Mediterranean", "Pescatarian", "Vegan", "Vegetarian", "Alcohol-Free", "Dairy-Free", "Egg-Free", "Fish-Free",
                  "Peanut-Free", "Pork-Free", "Poultry-Free", "Red-Meat-Free", "Shellfish-Free", "Soy-Free", 
                  "Tree-Nut-Free", "Gluten-Free", "Wheat-Free"]
  init_labels(health_labels, dish)

  dish = Dish.create!(
    name: "Babaghanouj",
    restaurant: restaurant,
    price: "7",
    img_url: "https://static.wixstatic.com/media/ff5eee_4f810bef9be84ea09617bd141e15c05e~mv2.jpg/v1/fill/w_232,h_232,usm_1.20_1.00_0.01/file.webp",
    dish_type: "starter"
    )
    health_labels = ["Mediterranean", "Pescatarian", "Vegan", "Vegetarian", "Alcohol-Free", "Dairy-Free", "Egg-Free", "Fish-Free",
                    "Peanut-Free", "Pork-Free", "Poultry-Free", "Red-Meat-Free", "Shellfish-Free", "Soy-Free", 
                    "Tree-Nut-Free", "Gluten-Free", "Wheat-Free"]
    init_labels(health_labels, dish)

  dish = Dish.create!(
    name: "Kebbe",
    restaurant: restaurant,
    price: "2.50",
    img_url: "https://static.wixstatic.com/media/ff5eee_cda024ae42ec47e18e290533d881ba8a~mv2_d_5472_3648_s_4_2.jpg/v1/fill/w_232,h_232,usm_1.20_1.00_0.01/file.webp",
    dish_type: "starter"
    )
  health_labels = ["Mediterranean", "Pescatarian", "Vegan", "Vegetarian", "Alcohol-Free", "Dairy-Free", "Egg-Free", "Fish-Free",
                  "Peanut-Free", "Pork-Free", "Poultry-Free", "Red-Meat-Free", "Sesame-Free", "Shellfish-Free", "Soy-Free", 
                  "Tree-Nut-Free"]
  init_labels(health_labels, dish)

  dish = Dish.create!(
    name: "Feuilles de vignes / Vine Leaves",
    restaurant: restaurant,
    price: "2.50",
    img_url: "https://static.wixstatic.com/media/ff5eee_3fb24684e5fe476bba0a9516e6ea6ed7~mv2_d_5472_3648_s_4_2.jpg/v1/fill/w_232,h_232,usm_1.20_1.00_0.01/file.webp",
    dish_type: "starter"
    )
  health_labels = ["Mediterranean", "Pescatarian", "Vegan", "Vegetarian", "Alcohol-Free", "Dairy-Free", "Egg-Free", "Fish-Free",
                  "Peanut-Free", "Pork-Free", "Poultry-Free", "Red-Meat-Free", "Sesame-Free", "Shellfish-Free", "Soy-Free", 
                  "Tree-Nut-Free"]
  init_labels(health_labels, dish)

  dish = Dish.create!(
    name: "Extra brochette",
    restaurant: restaurant,
    price: "6",
    img_url: "https://static.wixstatic.com/media/ff5eee_7dbdc5d8171546c5b4563ee3a195f382~mv2.jpg/v1/fill/w_232,h_232,usm_1.20_1.00_0.01/file.webp",
    dish_type: "starter"
    )
  health_labels = ["Mediterranean", "Alcohol-Free", "Dairy-Free", "Egg-Free", "Fish-Free","Peanut-Free", "Pork-Free", "Sesame-Free", 
                  "Shellfish-Free", "Soy-Free", "Tree-Nut-Free", "Keto-Friendly", "Paleo"]
  init_labels(health_labels, dish)

  dish = Dish.create!(
    name: "Akrams Hot Sauce",
    restaurant: restaurant,
    price: "9",
    img_url: "https://static.wixstatic.com/media/ff5eee_4fb61f94f108405d964b59101ae5b1f5~mv2_d_5472_3648_s_4_2.jpg/v1/fill/w_232,h_232,usm_1.20_1.00_0.01/file.webp",
    dish_type: "starter"
    )
  health_labels = ["Mediterranean", "Pescatarian", "Vegan", "Vegetarian", "Alcohol-Free", "Dairy-Free", "Egg-Free", "Fish-Free",
    "Peanut-Free", "Pork-Free", "Poultry-Free", "Red-Meat-Free", "Shellfish-Free", "Soy-Free", 
    "Tree-Nut-Free", "Gluten-Free", "Wheat-Free"]
  init_labels(health_labels, dish)

  dish = Dish.create!(
    name: "Battātå",
    restaurant: restaurant,
    price: "6.50",
    img_url: "https://static.wixstatic.com/media/ff5eee_7dbdc5d8171546c5b4563ee3a195f382~mv2.jpg/v1/fill/w_232,h_232,usm_1.20_1.00_0.01/file.webp",
    dish_type: "starter"
    )
  health_labels = ["Mediterranean", "Pescatarian", "Vegan", "Vegetarian", "Alcohol-Free", "Dairy-Free", "Egg-Free", "Fish-Free",
                  "Peanut-Free", "Pork-Free", "Poultry-Free", "Red-Meat-Free", "Shellfish-Free", "Soy-Free", 
                  "Tree-Nut-Free", "Gluten-Free", "Wheat-Free"]
  init_labels(health_labels, dish)

  dish = Dish.create!(
    name: "Omnivore",
    restaurant: restaurant,
    price: "16.50",
    img_url: "https://static.wixstatic.com/media/ff5eee_0774ad8a37964d2bb805b2a91b2e57e4~mv2_d_5472_3648_s_4_2.jpg/v1/fill/w_232,h_232,usm_1.20_1.00_0.01/file.webp",
    dish_type: "main course"
    )
  health_labels = ["Mediterranean", "Alcohol-Free", "Dairy-Free", "Egg-Free", "Fish-Free","Peanut-Free", "Pork-Free", 
                  "Shellfish-Free", "Soy-Free", "Tree-Nut-Free"]
  init_labels(health_labels, dish)

  dish = Dish.create!(
    name: "Herbivore",
    restaurant: restaurant,
    price: "10.50",
    img_url: "https://static.wixstatic.com/media/ff5eee_40de2f67b022453fa3d3916d2d485ecb~mv2_d_5472_3648_s_4_2.jpg/v1/fill/w_232,h_232,usm_1.20_1.00_0.01/file.webp",
    dish_type: "main course"
    )
  health_labels = ["Mediterranean", "Pescatarian", "Vegan", "Vegetarian", "Alcohol-Free", "Dairy-Free", "Egg-Free", "Fish-Free",
                  "Peanut-Free", "Pork-Free", "Poultry-Free", "Red-Meat-Free", "Sesame-Free", "Shellfish-Free", "Soy-Free", 
                  "Tree-Nut-Free", "Gluten-Free", "Wheat-Free"]
  init_labels(health_labels, dish)

  dish = Dish.create!(
    name: "Carnivore",
    restaurant: restaurant,
    price: "22",
    img_url: "https://static.wixstatic.com/media/ff5eee_4c0a58ced63849c897a563fca247ca13~mv2_d_5472_3648_s_4_2.jpg/v1/fill/w_232,h_232,usm_1.20_1.00_0.01/file.webp",
    dish_type: "main course"
    )
    health_labels = ["Mediterranean", "Alcohol-Free", "Dairy-Free", "Egg-Free", "Fish-Free","Peanut-Free", "Pork-Free", 
                    "Shellfish-Free", "Soy-Free", "Tree-Nut-Free", "gluten-free", "keto-friendly"]
    init_labels(health_labels, dish)

  dish = Dish.create!(
    name: "Djaj Sandwich",
    restaurant: restaurant,
    price: "8.50",
    img_url: "https://d1ralsognjng37.cloudfront.net/cbd12ef3-31bd-42df-b717-e7c271f9b3f7.jpeg",
    dish_type: "main course"
    )
    health_labels = ["Red-Meat-Free", "Pork-Free"]
    init_labels(health_labels, dish)

  dish = Dish.create!(
    name: "Beirut Sandwich",
    restaurant: restaurant,
    price: "8.50",
    img_url: "https://static.wixstatic.com/media/ff5eee_cd28f58ef2f848d3950686100aba2f92~mv2_d_5435_3624_s_4_2.jpg/v1/fill/w_232,h_232,usm_1.20_1.00_0.01/file.webp",
    dish_type: "main course"
    )
    health_labels = ["Red-Meat-Free", "Pork-Free"]
    init_labels(health_labels, dish)

  dish = Dish.create!(
    name: "Roma Sandwich",
    restaurant: restaurant,
    price: "8.50",
    img_url: "https://static.wixstatic.com/media/ff5eee_1d2a7c6874ea4f4c9fb8c514ae088dba~mv2_d_5472_3648_s_4_2.jpg/v1/fill/w_232,h_232,usm_1.20_1.00_0.01/file.webp",
    dish_type: "main course"
    )
  health_labels = ["Red-Meat-Free", "Pork-Free", "Pescetarian"]
  init_labels(health_labels, dish)

  dish = Dish.create!(
    name: "Thai Sandwich",
    restaurant: restaurant,
    price: "8.50",
    img_url: "https://static.wixstatic.com/media/ff5eee_6fbd13407fe8441fb4327be226d301f5~mv2_d_5472_3648_s_4_2.jpg/v1/fill/w_232,h_232,usm_1.20_1.00_0.01/file.webp",
    dish_type: "main course"
    )
  health_labels = ["Vegan"]
  init_labels(health_labels, dish)

  dish = Dish.create!(
    name: "Inca Sandwich",
    restaurant: restaurant,
    price: "8.50",
    img_url: "https://static.wixstatic.com/media/ff5eee_3eadad53d648445b9a98767a1687b952~mv2_d_5472_3648_s_4_2.jpg/v1/fill/w_232,h_232,usm_1.20_1.00_0.01/file.webp",
    dish_type: "main course"
    )
  health_labels = ["Vegan"]
  init_labels(health_labels, dish)

  dish = Dish.create!(
    name: "Bombay Sandwich",
    restaurant: restaurant,
    price: "8.50",
    img_url: "https://static.wixstatic.com/media/ff5eee_fce41117d22b44e2a979584502cf1079~mv2_d_5323_3549_s_4_2.jpg/v1/fill/w_232,h_232,usm_1.20_1.00_0.01/file.webp",
    dish_type: "main course"
    )
  health_labels = ["Vegetarian"]
  init_labels(health_labels, dish)

  dish = Dish.create!(
    name: "Samac Sandwich",
    restaurant: restaurant,
    price: "8.50",
    img_url: "https://static.wixstatic.com/media/ff5eee_f504248501674b648c9e0a3cd381a382~mv2_d_5394_3596_s_4_2.jpg/v1/fill/w_232,h_232,usm_1.20_1.00_0.01/file.webp",
    dish_type: "main course"
    )
  health_labels = ["Red-Meat-Free", "Pork-Free", "Pescetarian"]
  init_labels(health_labels, dish)

  dish = Dish.create!(
    name: "Khodra Sandwich",
    restaurant: restaurant,
    price: "8",
    img_url: "https://static.wixstatic.com/media/ff5eee_fd5e2f7e86944c7993ccc2d403ce6578~mv2_d_5472_3648_s_4_2.jpg/v1/fill/w_232,h_232,usm_1.20_1.00_0.01/file.webp",
    dish_type: "main course"
    )
  health_labels = ["Vegan"]
  init_labels(health_labels, dish)

  dish = Dish.create!(
    name: "Arez Sandwich",
    restaurant: restaurant,
    price: "8.50",
    img_url: "https://static.wixstatic.com/media/ff5eee_c301cffc9363459ebe1ca98e1cfb4ba0~mv2_d_5472_3648_s_4_2.jpg/v1/fill/w_232,h_232,usm_1.20_1.00_0.01/file.webp",
    dish_type: "main course"
    )
  health_labels = ["Vegan"]
  init_labels(health_labels, dish)

  dish = Dish.create!(
    name: "Battata Sandwich",
    restaurant: restaurant,
    price: "8",
    img_url: "https://static.wixstatic.com/media/ff5eee_aaa77eb3e3414b83bfbf88ad121e379a~mv2.jpg/v1/fill/w_232,h_232,usm_1.20_1.00_0.01/file.webp",
    dish_type: "main course"
    )
    health_labels = ["Vegetarian"]
    init_labels(health_labels, dish)
end
