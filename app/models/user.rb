class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_friendship

  has_many :diet_profiles, dependent: :destroy
  has_many :health_labels, through: :diet_profiles

end
