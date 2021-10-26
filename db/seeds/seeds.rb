require './db/seeds/load_files.rb'
require './db/seeds/make_restaurants.rb'
require './db/seeds/make_diets.rb'

print "cleaning db... "

HealthLabel.destroy_all
Dish.destroy_all
Restaurant.destroy_all
User.destroy_all
puts "done! nice clean database"

puts "generating yummy foods.."

# set index for datasets in load_files.rb
@idx = 0
load_files

20.times do |i|
  restaurant = generate_restaurant
  make_dishes(restaurant, i)
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

  rand(1..3).times do
    diet_p = DietProfile.create!(
      health_label: HealthLabel.all.sample,
      user: user)
    expand_profile(diet_p, user)
  end

  #strip duplicate health_labels from diet_profile
  user.diet_profiles = user.diet_profiles.all.uniq(&:health_label_id)
end

puts "done!"
puts "created #{Dish.all.count} dishes, #{Restaurant.all.count} restaurants, and #{User.all.count} users"
puts "bye bye"


