require_relative 'load_files'
require_relative 'make_restaurants'
require_relative 'make_dishes'
require_relative 'generate_users'

print "cleaning db... "

HealthLabel.destroy_all
Dish.destroy_all
Restaurant.destroy_all
User.destroy_all
puts "done! nice clean database"

puts "generating nice restos with yummy foods.."

load_files(0)

30.times do |i|
  # puts "calling restaurant maker dish maker"
  restaurant = generate_restaurant
  make_dishes(restaurant, i)
end

puts "generating users.."

10.times do |i|
  i += 1
  user = generate_users(i)
  assign_username(user)
  add_diets(user)
end

puts "generating friends"
10.times do |i|
  i += User.first.id
  user = User.find(i)
  add_friends(user)
end

puts "done!"
puts "created #{Dish.all.count} dishes, #{Restaurant.all.count} restaurants, and #{User.all.count} users with 3 friends each"
puts "bye bye"


