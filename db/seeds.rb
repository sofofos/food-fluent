# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "cleaning db..."

HealthLabel.destroy_all
Dish.destroy_all
Restaurant.destroy_all
User.destroy_all
puts "nice clean database"
puts "generating shit.."

health_tags = %w[alcohol-free immuno-supportive celery-free crustacean-free dairy-free egg-free
  fish-free fodmap-free gluten-free keto-friendly kidney-friendly kosher low-potassium
  lupine-free Mediterranean mustard-free low-fat-abs No-oil-added low-sugar paleo peanut-free]

health_tags.each do |health|
  HealthLabel.create!(
    name: health
  )
end

7.times do |i|
  i += 1
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    location: Faker::Address.full_address
  )
  restaurant.save!
  dish = Dish.new(
    name: Faker::Food.dish,
    restaurant: restaurant
  )
  dish.save!
  rand(1..6).times do
    dish.health_labels << HealthLabel.all.sample
  end
end

puts "generating renters.."
renters = []

5.times do |i|
  i += 1
  user = User.create!(
    name: Faker::Name.name,
    password: "password",
    email: "user#{i}@gmail.com")
  renters << user
end



