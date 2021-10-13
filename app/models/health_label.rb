class HealthLabel < ApplicationRecord
  belongs_to :ingredient
  has_many :diet_profiles
end
