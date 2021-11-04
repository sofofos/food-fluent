class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # after_create :random_avatar

  has_friendship

  has_many :diet_profiles, dependent: :destroy
  has_many :health_labels, through: :diet_profiles

  # def random_avatar
  #   avatars = ["avatars/chris.png", "avatars/sofia.png", "avatars/vivi.png"]
  #   self.avatar_path = avatars.sample if self.avatar_path.nil?
  #   self.save!
  # end

end
