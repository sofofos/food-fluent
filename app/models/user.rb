class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :friends_as_inviter, foreign_key: :inviter_id, class_name: "Friend"
  has_many :friends_as_invitee, foreign_key: :invitee_id, class_name: "Friend"
end
