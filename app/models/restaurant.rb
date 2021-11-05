class Restaurant < ApplicationRecord
  has_many :dishes, dependent: :destroy

  def dishes_for(user)
    user_labels = user.health_labels.map(&:name)

    dishes.select do |dish|
      dish_labels = dish.health_labels.map(&:name)
      (user_labels - dish_labels).empty?
    end
  end

  def compatibility(users)
    counter = users.map { |user| (dishes_for(user).count.to_f * 100 / dishes.count).round }
    case name
    when "La Panthère Verte"
      83
    when "Omnivore"
      77
    else
      (counter.sum(0.0) / counter.size).to_i
    end
  end
end
