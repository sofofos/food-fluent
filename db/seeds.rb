require './storage/make_dishes.rb'
require './storage/load_files.rb'

require 'faker'

print "cleaning db... "

HealthLabel.destroy_all
Dish.destroy_all
Restaurant.destroy_all
User.destroy_all
puts "done! nice clean database"
puts "generating yummy foods.."

load_files

10.times do |i|
  i += 1
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    location: Faker::Address.full_address
  )
  restaurant.save!

# first request: starters
  5.times{ make_dish(restaurant, @starters_hash, i) }
  puts "I am outside the dish-maker, this is my index i: #{i}"

# second request: main courses
  5.times{ make_dish(restaurant, @salad_hash, i) }
  puts "I am outside the dish-maker, this is my index i: #{i}"

# third request: salads
  5.times{ make_dish(restaurant, @main_hash, i) }
  puts "I am outside the dish-maker, this is my index i: #{i}"

# fourth request: desserts
  5.times{ make_dish(restaurant, @desserts_hash, i) }
  puts "I am outside the dish-maker, this is my index i: #{i}"
end

puts "generating users.."

10.times do |i|
  i += 1
  user = User.create!(
    name: "#{Faker::Name.first_name} #{Faker::Name.last_name}",
    password: "password",
    email: "user#{i}@gmail.com")

# Assign a "slightly less random" username based on name and a fruit..
    user[:username] = "#{user[:name].first(4).downcase}_#{Faker::Food.fruits.split.first.downcase}"
    user.save!

  rand(1..5).times do
    DietProfile.create!(
      health_label: HealthLabel.all.sample,
      user: user)
  end
end
