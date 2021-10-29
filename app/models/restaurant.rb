class Restaurant < ApplicationRecord
  has_many :dishes, dependent: :destroy

  def dishes_for(user)
    dishes.select { |dish| (user.health_labels - dish.health_labels).empty? }
  end

  def compatibility(users)
    counter = users.map { |user| (dishes_for(user).count.to_f * 100 / dishes.count).round }
    counter.sum(0.0) / counter.size
  end
end
