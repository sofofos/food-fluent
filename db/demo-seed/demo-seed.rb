require_relative 'make_restaurants'
require_relative 'make_dishes'
require_relative 'mtl-restos'
require_relative 'demo-dishes'
require_relative 'demo-users'

print "cleaning db... "

HealthLabel.destroy_all
Dish.destroy_all
Restaurant.destroy_all
User.destroy_all
puts "done! nice clean database"

puts "generating montreal restaurants for your demo delight..."

users = ['Sofia Alvarez', 'Jeremie Antoine', 'Juan Arciniegas',
         'Jeremy Boxerman', 'Chris Gamboa', 'Kevin Hookumchand',
         'Francesco Perrozzi', 'Veronica Vargas Zaraza']
urls = [
  'https://res.cloudinary.com/wagon/image/upload/c_fi…,h_200,w_200/v1635998095/tkd0goosnoz6k0vcf3ia.jpg',
  'https://avatars.githubusercontent.com/u/80538704?v=4',
  'https://res.cloudinary.com/wagon/image/upload/c_fi…,h_200,w_200/v1635996534/qo7q1da3doc8go7plui8.jpg',
  'https://avatars.githubusercontent.com/u/82000043?v=4',
  'https://avatars.githubusercontent.com/u/82340344?v=4',
  'https://res.cloudinary.com/wagon/image/upload/c_fi…,h_200,w_200/v1620407999/fpyumlsv3pwpiknhfzyg.jpg',
  'https://avatars.githubusercontent.com/u/63886360?v=4',
  'https://avatars.githubusercontent.com/u/36909683?v=4']

users.each_with_index do |name, i|
  user = generate_users(name)
  assign_username(user)
  add_dietp(user)
  user.avatar_path = urls[i]
end

init_restos
init_dishes_pant(Restaurant.find_by(name:"La Panthère Verte"))
init_dishes_omni(Restaurant.find_by(name:"Omnivore"))
