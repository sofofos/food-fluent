# require 'faker'

# 10.times do |i|
#   i += 1
#   user = User.create!(
#     name: "#{Faker::Name.first_name} #{Faker::Name.last_name}",
#     password: "password",
#     email: "user#{i}@gmail.com")

# # Assign a "slightly less random" username based on name and a fruit..
#     user[:username] = "#{user[:name].first(4).downcase}_#{Faker::Food.fruits.split.first.downcase}"
#     user.save!

#   rand(1..3).times do
#     diet_p = DietProfile.create!(
#       health_label: HealthLabel.all.sample,
#       category: "diet"
#       user: user)
#     case diet_p.health_label
#     when

#   end

#   #strip duplicate health_labels from diet_profile
#   user.diet_profiles = user.diet_profiles.all.uniq(&:health_label_id)
# end
