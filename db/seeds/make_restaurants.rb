require './db/seeds/make_dishes.rb'
require 'faker'

def generate_number
  prefix = Faker::PhoneNumber.extension(length: 3)
  line = Faker::PhoneNumber.extension(length: 4)
  "(514) #{prefix}-#{line}"
end

def generate_website(name)
  web_name = name.downcase.gsub(" ", "-")
  "http://www.#{web_name}.com"
end

def generate_restaurant
  restaurant = Restaurant.new(
  name: Faker::Restaurant.name,
  location: Faker::Address.street_address + ", Montreal, QC"
  phone_number: generate_number
  )
  # generating url after creating restaurant bcus uses name attribute
  generate_website(restaurant.name)

  restaurant.save!
  restaurant
end

def make_dishes(restaurant)
  5.times do |j|
  # index for dishes ( up to 20 entries/ json file )
    j += (i * 5)

  # first request: starters
    make_dish(restaurant, @starters_hash, j)
  # second request: main courses
    make_dish(restaurant, @salad_hash, j)
  # third request: salads
    make_dish(restaurant, @main_hash, j)
  # fourth request: desserts
    make_dish(restaurant, @desserts_hash, j)

  # go to next dataset
    update_index if j >= 19
  end
end
