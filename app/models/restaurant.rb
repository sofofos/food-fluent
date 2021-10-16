class Restaurant < ApplicationRecord
  has_many :dishes, dependent: :destroy
end
