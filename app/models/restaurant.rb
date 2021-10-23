class Restaurant < ApplicationRecord
  has_many :dishes, dependent: :destroy

  def dishes_for(user)
    dishes.select { |dish| (user.health_labels - dish.health_labels).empty? }
  end
end
