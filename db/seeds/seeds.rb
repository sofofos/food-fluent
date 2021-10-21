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
@idx = 0

10.times do |i|
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    location: Faker::Address.full_address
  )
  restaurant.save!

# first request: starters
  5.times do |j|
    j += (i * 5)
    make_dish(restaurant, @starters_hash, j)
# second request: main courses
    make_dish(restaurant, @salad_hash, j)
# third request: salads
    make_dish(restaurant, @main_hash, j)
# fourth request: desserts
    make_dish(restaurant, @desserts_hash, j)
# go to next dataset
    update_index if j >= 19
    puts j
  end
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