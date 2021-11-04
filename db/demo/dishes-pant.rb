require_relative 'init-labels'

def init_dishes_pant(restaurant)
  dish = Dish.create!(
    name: "Falafel Sandwich",
    restaurant: restaurant,
    price: "8.95",
    dish_type: "main",
    img_url: "https://images.koomi.com/koomi_images/21franchise/3b/48/180x180_3b48e87e86bb3b7ead041d705a788fad.jpeg"
    )
    health_labels = ["Vegan"]
    init_labels(health_labels, dish)

  dish = Dish.create!(
    name: "Tempeh Sandwich",
    restaurant: restaurant,
    price: "8.95",
    dish_type: "main",
    img_url: "https://images.koomi.com/koomi_images/21franchise/de/a5/180x180_dea53134fd96712f11b594c9e9297ea7.jpeg"
    )
    health_labels = ["Vegan"]
    init_labels(health_labels, dish)

  dish = Dish.create!(
    name: "Shawarma Sandwich",
    restaurant: restaurant,
    price: "8.95",
    dish_type: "main",
    img_url: "https://images.koomi.com/koomi_images/21franchise/79/e5/180x180_79e52325315d5cb4f3b286f61452c18d.jpeg"
    )
    health_labels = ["Vegan"]
    init_labels(health_labels, dish)

  dish = Dish.create!(
    name: "Burger Sandwich",
    restaurant: restaurant,
    price: "8.95",
    dish_type: "main",
    img_url: "https://images.koomi.com/koomi_images/21franchise/3d/ff/180x180_3dff0530c169b6f05a2c8a5a535a78f7.jpeg"
    )
    health_labels = ["Vegan"]
    init_labels(health_labels, dish)

  dish = Dish.create!(
    name: "Hummus & Falafel Plate",
    restaurant: restaurant,
    price: "12.9",
    dish_type: "main",
    img_url: "https://images.koomi.com/koomi_images/21franchise/8e/ad/180x180_8ead0a6043c99900f6b023ef64ed1dca.jpeg"
    )
    health_labels = ["Vegan"]
    init_labels(health_labels, dish)

  dish = Dish.create!(
    name: "Hummus & Tempeh Plate",
    restaurant: restaurant,
    price: "12.9",
    dish_type: "main",
    img_url: "https://images.koomi.com/koomi_images/21franchise/ef/a4/180x180_efa4e4c9af3e3cd2d7fe987a72513ee5.jpeg"
    )
    health_labels = ["Vegan"]
    init_labels(health_labels, dish)

  dish = Dish.create!(
    name: "Hummus & Shawarma Plate",
    restaurant: restaurant,
    price: "12.9",
    dish_type: "main",
    img_url: "https://images.koomi.com/koomi_images/21franchise/d5/f2/180x180_d5f20b9f1beb6238a7d46f0bf0d4320e.jpeg"
    )
    health_labels = ["Vegan"]
    init_labels(health_labels, dish)

  dish = Dish.create!(
    name: "Hummus & Burger Plate",
    restaurant: restaurant,
    price: "12.9",
    dish_type: "main",
    img_url: "https://images.koomi.com/koomi_images/21franchise/d0/54/180x180_d05460e64dfeb7f30a3253f173d68c2a.jpeg"
    )
    health_labels = ["Vegan"]
    init_labels(health_labels, dish)

  dish = Dish.create!(
    name: "Falafel Bowl",
    restaurant: restaurant,
    price: "12.9",
    dish_type: "main",
    img_url: "https://images.koomi.com/koomi_images/21franchise/19/78/180x180_19782dc652fc464b3dd4aa40f953bce1.jpeg"
    )
    health_labels = ["Vegan"]
    init_labels(health_labels, dish)

  dish = Dish.create!(
    name: "Tempeh Bowl",
    restaurant: restaurant,
    price: "12.9",
    dish_type: "main",
    img_url: "https://images.koomi.com/koomi_images/21franchise/75/a1/180x180_75a1e5a2da9e7e840ad1f7f21a4f3abf.jpeg"
    )
    health_labels = ["Vegan"]
    init_labels(health_labels, dish)

  dish = Dish.create!(
    name: "Shawarma Bowl",
    restaurant: restaurant,
    price: "12.9",
    dish_type: "main",
    img_url: "https://images.koomi.com/koomi_images/21franchise/05/63/180x180_0563172eb9b69f27e44139a7cea1f592.jpeg"
    )
    health_labels = ["Vegan"]
    init_labels(health_labels, dish)

  dish = Dish.create!(
    name: "Burger Bowl",
    restaurant: restaurant,
    price: "12.9",
    dish_type: "main",
    img_url: "https://images.koomi.com/koomi_images/21franchise/6c/03/180x180_6c03a598395ad90862be081f8a8ef5f0.jpeg"
    )
    health_labels = ["Vegan"]
    init_labels(health_labels, dish)

  dish = Dish.create!(
    name: "Sweet Potato Poutine (small)",
    restaurant: restaurant,
    price: "7.95",
    dish_type: "starter",
    img_url: "https://images.koomi.com/koomi_images/21franchise/ab/e6/180x180_abe618199c998d09a0f4f71d17a6da22.jpeg"
    )
    health_labels = ["Vegan"]
    init_labels(health_labels, dish)

  dish = Dish.create!(
    name: "Sweet Potato Fries (small)",
    restaurant: restaurant,
    price: "4.95",
    dish_type: "starter",
    img_url: "https://images.koomi.com/koomi_images/21franchise/d4/43/180x180_d443d7283ca37fcefbdf6641535d793f.jpeg"
    )
    health_labels = ["Vegan"]
    init_labels(health_labels, dish)

  dish = Dish.create!(
    name: "Schnitzels",
    restaurant: restaurant,
    price: "5.95",
    dish_type: "starter",
    img_url: "https://images.koomi.com/koomi_images/21franchise/eb/8d/180x180_eb8dc096734d566770139d65a5ae4f83.jpeg"
    )
    health_labels = ["Vegan"]
    init_labels(health_labels, dish)

  dish = Dish.create!(
    name: "Falafel Side",
    restaurant: restaurant,
    price: "3.95",
    dish_type: "starter",
    img_url: "https://images.koomi.com/koomi_images/21franchise/9f/63/180x180_9f630b589c85b8b7160671d11cf37e03.jpeg"
    )
    health_labels = ["Vegan"]
    init_labels(health_labels, dish)

  dish = Dish.create!(
    name: "Veggie Burger Patty",
    restaurant: restaurant,
    price: "3.95",
    dish_type: "starter",
    img_url: "https://images.koomi.com/koomi_images/21franchise/c3/44/180x180_c3440321f30a0133cd0192751b1f336a.jpeg"
    )
    health_labels = ["Vegan"]
    init_labels(health_labels, dish)

  dish = Dish.create!(
    name: "Hummus with pita",
    restaurant: restaurant,
    price: "5.95",
    dish_type: "starter",
    img_url: "https://images.koomi.com/koomi_images/21franchise/cb/b6/180x180_cbb61bc45a6f633cceb5033d278e95bf.jpeg"
    )
    health_labels = ["Vegan"]
    init_labels(health_labels, dish)

  dish = Dish.create!(
    name: "Jackfruit Shawarma",
    restaurant: restaurant,
    price: "3.95",
    dish_type: "starter",
    img_url: "https://images.koomi.com/koomi_images/21franchise/31/b3/180x180_31b3d5e66b4170d288a8d82e89eaa300.jpeg"
    )
    health_labels = ["Vegan"]
    init_labels(health_labels, dish)

  dish = Dish.create!(
    name: "Snack Attack (to share)",
    restaurant: restaurant,
    price: "14.9",
    dish_type: "starter",
    img_url: "https://images.koomi.com/koomi_images/21franchise/72/20/180x180_722048d0dba758eb3747d68b616a31b3.jpeg"
    )
    health_labels = ["Vegan"]
    init_labels(health_labels, dish)
end

