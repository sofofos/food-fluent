class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :friends_as_inviter, class_name: "Friend", foreign_key: :inviter_id
  has_many :friends_as_invitee, class_name: "Friend", foreign_key: :invitee_id
end
