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
  location: Faker::Address.street_address + ", Montreal, QC",
  phone_number: generate_number
  )
  # generating url after creating restaurant bcus uses name attribute
  restaurant.website = generate_website(restaurant.name)

  restaurant.save!
  restaurant
end
