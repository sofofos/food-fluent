require_relative 'init_labels'

def init_dishes_omni(restaurant)
  Dish.create!(
    name: "Fatouche",
    price: "7"
    img_url: "https://static.wixstatic.com/media/ff5eee_ba7e2cd1b70c484eb58382ad85a3dc0e~mv2_d_5472_3648_s_4_2.jpg/v1/fill/w_232,h_232,usm_1.20_1.00_0.01/file.webp"
    dish_type: ["starter"]
    )
    health_labels = ["Vegan", "Vegetarian"]
    init_labels(health_labels)

  Dish.create!(
    name: "Orzo",
    price: "6.50",
    img_url: "https://static.wixstatic.com/media/ff5eee_6bebef7a2d03466d8d65459ee6a5f26c~mv2_d_5379_3586_s_4_2.jpg/v1/fill/w_232,h_232,usm_1.20_1.00_0.01/file.webp"
    dish_type: ["starter"]
    )
  health_labels = ["Vegan", "Vegetarian"]
  init_labels(health_labels)

  Dish.create!(
    name: "Moussaka",
    price: "6.50",
    img_url: "https://static.wixstatic.com/media/ff5eee_26d61179627e4acd8733442d7ad3c837~mv2_d_5297_3531_s_4_2.jpg/v1/fill/w_232,h_232,usm_1.20_1.00_0.01/file.webp"
    dish_type: ["starter"]
    )
  health_labels = ["Red-Meat-Free", "Shellfish-Free"]
  init_labels(health_labels)


  Dish.create!(
    name: "Hummus",
    price: "6.50",
    img_url: "https://static.wixstatic.com/media/ff5eee_528e153d5bd84c66ab06ac7c27cdf185~mv2.jpg/v1/fill/w_232,h_232,usm_1.20_1.00_0.01/file.webp"
    dish_type: ["starter"]
    )
  health_labels = ["Vegan", "Vegetarian", "Gluten-Free"]
  init_labels(health_labels)

  Dish.create!(
    name: "Babaghanouj",
    price: "7"
    img_url: "https://static.wixstatic.com/media/ff5eee_4f810bef9be84ea09617bd141e15c05e~mv2.jpg/v1/fill/w_232,h_232,usm_1.20_1.00_0.01/file.webp"
    dish_type: ["starter"]
    )
    health_labels = ["Vegan", "Vegetarian", "Gluten-Free"]
    init_labels(health_labels)

  Dish.create!(
    name: "Kebbe",
    price: "2.50",
    img_url: "https://static.wixstatic.com/media/ff5eee_cda024ae42ec47e18e290533d881ba8a~mv2_d_5472_3648_s_4_2.jpg/v1/fill/w_232,h_232,usm_1.20_1.00_0.01/file.webp"
    dish_type: ["starter"]
    )
  health_labels = ["Vegan", "Vegetarian", "Gluten-Free"]
  init_labels(health_labels)

  Dish.create!(
    name: "Feuilles de vignes / Vine Leaves",
    price: "2.50",
    img_url: "https://static.wixstatic.com/media/ff5eee_3fb24684e5fe476bba0a9516e6ea6ed7~mv2_d_5472_3648_s_4_2.jpg/v1/fill/w_232,h_232,usm_1.20_1.00_0.01/file.webp"
    dish_type: ["starter"]
    )
  health_labels = ["Red-Meat-Free", "Pork-Free"]
  init_labels(health_labels)

  Dish.create!(
    name: "Extra brochette",
    price: "6"
    img_url: "https://static.wixstatic.com/media/ff5eee_7dbdc5d8171546c5b4563ee3a195f382~mv2.jpg/v1/fill/w_232,h_232,usm_1.20_1.00_0.01/file.webp"
    dish_type: ["starter"]
    )
  health_labels = ["Pork-Free"]
  init_labels(health_labels)

  Dish.create!(
    name: "Akrams Hot Sauce",
    price: "9"
    img_url: "https://static.wixstatic.com/media/ff5eee_4fb61f94f108405d964b59101ae5b1f5~mv2_d_5472_3648_s_4_2.jpg/v1/fill/w_232,h_232,usm_1.20_1.00_0.01/file.webp"
    dish_type: ["starter"]
    )
  health_labels = ["Pork-Free"]
  init_labels(health_labels)

  Dish.create!(
    name: "Battātå",
    price: "6.50",
    img_url: "https://static.wixstatic.com/media/ff5eee_7dbdc5d8171546c5b4563ee3a195f382~mv2.jpg/v1/fill/w_232,h_232,usm_1.20_1.00_0.01/file.webp"
    dish_type: ["starter"]
    )

  Dish.create!(
    name: "Omnivore",
    price: "16.50",
    img_url: "https://static.wixstatic.com/media/ff5eee_0774ad8a37964d2bb805b2a91b2e57e4~mv2_d_5472_3648_s_4_2.jpg/v1/fill/w_232,h_232,usm_1.20_1.00_0.01/file.webp"
    dish_type: ["main course"]
    )

  Dish.create!(
    name: "Herbivore"
    price: "10.50",
    img_url: "https://static.wixstatic.com/media/ff5eee_40de2f67b022453fa3d3916d2d485ecb~mv2_d_5472_3648_s_4_2.jpg/v1/fill/w_232,h_232,usm_1.20_1.00_0.01/file.webp"
    dish_type: ["main course"]
    )
  health_labels = ["Pork-Free"]
  init_labels(health_labels)

  Dish.create!(
    name: "Carnivore",
    price: "22", "gluten-free", "keto-friendly"
    img_url: "https://static.wixstatic.com/media/ff5eee_4c0a58ced63849c897a563fca247ca13~mv2_d_5472_3648_s_4_2.jpg/v1/fill/w_232,h_232,usm_1.20_1.00_0.01/file.webp"
    dish_type: ["main course"]
    )

  Dish.create!(
    name: "Djaj Sandwich",
    price: "8.50",
    img_url: "https://d1ralsognjng37.cloudfront.net/cbd12ef3-31bd-42df-b717-e7c271f9b3f7.jpeg"
    dish_type: ["main course"]
    )
    health_labels = ["Red-Meat-Free", "Pork-Free"]
    init_labels(health_labels)

  Dish.create!(
    name: "Beirut Sandwich",
    price: "8.50",
    img_url: "https://static.wixstatic.com/media/ff5eee_cd28f58ef2f848d3950686100aba2f92~mv2_d_5435_3624_s_4_2.jpg/v1/fill/w_232,h_232,usm_1.20_1.00_0.01/file.webp"
    dish_type: ["main course"]
    )
    health_labels = ["Red-Meat-Free", "Pork-Free"]
    init_labels(health_labels)

  Dish.create!(
    name: "Roma Sandwich",
    price: "8.50",
    img_url: "https://static.wixstatic.com/media/ff5eee_1d2a7c6874ea4f4c9fb8c514ae088dba~mv2_d_5472_3648_s_4_2.jpg/v1/fill/w_232,h_232,usm_1.20_1.00_0.01/file.webp"
    dish_type: ["main course"]
    )
  health_labels = ["Red-Meat-Free", "Pork-Free", "Pescetarian"]
  init_labels(health_labels)

  Dish.create!(
    name: "Thai Sandwich",
    price: "8.50",
    img_url: "https://static.wixstatic.com/media/ff5eee_6fbd13407fe8441fb4327be226d301f5~mv2_d_5472_3648_s_4_2.jpg/v1/fill/w_232,h_232,usm_1.20_1.00_0.01/file.webp"
    dish_type: ["main course"]
    )
  health_labels = ["Vegan"]
  init_labels(health_labels)

  Dish.create!(
    name: "Inca Sandwich",
    price: "8.50",
    img_url: "https://static.wixstatic.com/media/ff5eee_3eadad53d648445b9a98767a1687b952~mv2_d_5472_3648_s_4_2.jpg/v1/fill/w_232,h_232,usm_1.20_1.00_0.01/file.webp"
    dish_type: ["main course"]
    )
  health_labels = ["Vegan"]
  init_labels(health_labels)

  Dish.create!(
    name: "Bombay Sandwich",
    price: "8.50",
    img_url: "https://static.wixstatic.com/media/ff5eee_fce41117d22b44e2a979584502cf1079~mv2_d_5323_3549_s_4_2.jpg/v1/fill/w_232,h_232,usm_1.20_1.00_0.01/file.webp"
    dish_type: ["main course"]
    )
  health_labels = ["Vegetarian"]
  init_labels(health_labels)

  Dish.create!(
    name: "Samac Sandwich",
    price: "8.50",
    img_url: "https://static.wixstatic.com/media/ff5eee_f504248501674b648c9e0a3cd381a382~mv2_d_5394_3596_s_4_2.jpg/v1/fill/w_232,h_232,usm_1.20_1.00_0.01/file.webp"
    dish_type: ["main course"]
    )
  health_labels = ["Red-Meat-Free", "Pork-Free", "Pescetarian"]
  init_labels(health_labels)

  Dish.create!(
    name: "Khodra Sandwich",
    price: "8"
    img_url: "https://static.wixstatic.com/media/ff5eee_fd5e2f7e86944c7993ccc2d403ce6578~mv2_d_5472_3648_s_4_2.jpg/v1/fill/w_232,h_232,usm_1.20_1.00_0.01/file.webp"
    dish_type: ["main course"]
    )
  health_labels = ["Vegan"]
  init_labels(health_labels)

  Dish.create!(
    name: "Arez Sandwich",
    price: "8.50",
    img_url: "https://static.wixstatic.com/media/ff5eee_c301cffc9363459ebe1ca98e1cfb4ba0~mv2_d_5472_3648_s_4_2.jpg/v1/fill/w_232,h_232,usm_1.20_1.00_0.01/file.webp"
    dish_type: ["main course"]
    )
  health_labels = ["Vegan"]
  init_labels(health_labels)

  Dish.create!(
    name: "Battata Sandwich",
    price: "8"
    img_url: "https://static.wixstatic.com/media/ff5eee_aaa77eb3e3414b83bfbf88ad121e379a~mv2.jpg/v1/fill/w_232,h_232,usm_1.20_1.00_0.01/file.webp"
    dish_type: ["main course"]
    )
    health_labels = ["Vegetarian"]
    init_labels(health_labels)
end
