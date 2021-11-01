require 'faker'
require_relative 'make_diets'

def generate_users(i)
  User.create!(
    name: "#{Faker::Name.first_name} #{Faker::Name.last_name}",
    password: "password",
    email: "user#{i}@gmail.com")
end

def assign_username(user)
  # Assign a "slightly less random" username based on name and a fruit..
    user[:username] = "#{user[:name].first(4).downcase}_#{Faker::Food.fruits.split.first.downcase}"
    user.save!
end

def add_diets(user)
  rand(1..3).times do
    diet = DietProfile.create!(
          health_label: HealthLabel.all(&:diet).sample,
          user: user)
    # expand_profile(diet, user)
  end

  #strip duplicate health_labels from diet_profile
  user.diet_profiles = user.diet_profiles.all.uniq(&:health_label_id)
end

def add_friends(user)
  strangers = User.all.reject{ |usr| usr.id == user.id }
  3.times do |i|
    friend = strangers.sample
    friend.friend_request(user)
  end
  user.requested_friends.each { |friend| user.accept_request(friend) }
end

def assign_avatar(user)
  avatars = ["chris.png", "sofia.png", "vivi.png"]
  user.avatar_path = avatars.sample
  user.save!
end
