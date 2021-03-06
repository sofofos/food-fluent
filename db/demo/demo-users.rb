require 'faker'

def generate_users(name)
  prefix = name.downcase.split.first
  User.create!(
    name: name,
    password: "password",
    email: "#{prefix}@gmail.com")
end

def assign_username(user)
  # Assign a "slightly less random" username based on name and a fruit..
    user[:username] = "#{user[:name].first(4).downcase}_#{Faker::Food.fruits.split.first.downcase}"
    user.save!
end

def init_allergies
  alcohol = HealthLabel.create!( name: "Alcohol-Free", category: :allergy)
  dairy = HealthLabel.create!( name: "Dairy-Free", category: :allergy)
  eggs = HealthLabel.create!( name: "Egg-Free", category: :allergy)
  gluten = HealthLabel.create!( name: "Gluten-Free", category: :allergy)
  peanut = HealthLabel.create!( name: "Peanut-Free", category: :allergy)
  sesame = HealthLabel.create!( name: "Sesame-Free", category: :allergy)
  shellfish = HealthLabel.create!( name: "Shellfish-Free", category: :allergy)
  soy = HealthLabel.create!( name: "Soy-Free", category: :allergy)

  [alcohol, dairy, eggs, gluten, peanut, sesame, shellfish, soy ]
end

def add_dietp(user)
  labels_d = ["Keto-Friendly", "Kosher", "Paleo", "Pescatarian", "Vegan", "Vegetarian"]
  allergies = init_allergies

  diets = labels_d.map{|label| HealthLabel.create(name: label, category: :diet) }

  rand(1..2).times do
    diet = diets.sample
    DietProfile.create!( health_label: diet, user: user) unless user.health_labels.exists?(diet.id)
  end
  rand(0..2).times do
    allergy = allergies.sample
    DietProfile.create!( health_label: allergy, user: user) unless user.health_labels.exists?(allergy.id)
  end
end


def make_friends(user)
  strangers = User.all.reject{ |usr| usr.id == user.id }
  2.times do
    friend = strangers.sample
    friend.friend_request(user)
  end
  user.requested_friends.each { |friend| user.accept_request(friend) }
end
