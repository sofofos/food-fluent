class Friend < ApplicationRecord
  belongs_to :user_as_inviter, :class_name => 'User', foreign_key: :inviter_id
  belongs_to :user_as_invitee, :class_name => 'User', foreign_key: :invitee_id
end
