class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :friends_as_inviter, class_name: "Friend", foreign_key: :inviter_id
  has_many :friends_as_invitee, class_name: "Friend", foreign_key: :invitee_id

  has_many :request_sent, class_name: 'Friend',
                          foreign_key: 'inviter_id',
                          inverse_of: 'inviter',
                          dependent: :destroy

  has_many :request_received, class_name: 'Friend',
                              foreign_key: 'invitee_id',
                              inverse_of: 'invitee',
                              dependent: :destroy

  has_many :friends, -> { merge(Friend.friends) }, through: :request_sent, source: :invitee
  has_many :pending_requests, -> { merge(Friend.not_friends) }, through: :request_sent, source: :invitee
  has_many :received_requests, -> { merge(Friend.not_friends) }, through: :friend_request, source: :sent_by
end
