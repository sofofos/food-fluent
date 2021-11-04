require_relative 'demo-users'
require_relative 'init-restos'
require_relative 'dishes-omni'
require_relative 'dishes-pant'

print "cleaning db... "

HealthLabel.destroy_all
Dish.destroy_all
Restaurant.destroy_all
User.destroy_all
puts "done! nice clean database"

puts "generating montreal restaurants for your demo delight..."

users = ["Veronica Vargas Zaraza", "Francesco Perrozzi", "Kevin Hookumchand",
         "Chris Gamboa", "Jeremy Boxerman", "Juan Arciniegas",
         "Jeremie Antoine", "Sofia Alvarez"]

paths = ["avatars/vero-avatar.png",
         "avatars/fran-avatar.jpeg",
         "avatars/kev-avatar.jpg",
         "avatars/chris-avatar.png",
         "avatars/jerb-avatar.jpeg",
         "avatars/juan-avatar.jpg",
         "avatars/jera-avatar.jpeg",
         "avatars/sof-avatar.jpg"]


puts "generating classmates... "



users.each_with_index do |name, i|
  user = generate_users(name)
  assign_username(user)
  add_dietp(user)
  user.avatar_path = paths[i]
  user.save!
end

puts "generating friends"
users.each_with_index do |_,i|
  i += User.first.id
  user = User.find(i)
  make_friends(user)
end

puts "initializing montreal restos"

our_two = init_restos
init_dishes_omni(our_two[0])
init_dishes_pant(our_two[1])

puts "done! Happy Demo!"
