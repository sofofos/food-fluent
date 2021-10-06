class DietProfile < ApplicationRecord
  belongs_to :user
  belongs_to :health_label
end
