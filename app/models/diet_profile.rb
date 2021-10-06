class DietProfile < ApplicationRecord
  belongs_to :user
  belongs_to :healthLabel
end
