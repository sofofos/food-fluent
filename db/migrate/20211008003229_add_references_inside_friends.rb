class AddReferencesInsideFriends < ActiveRecord::Migration[6.1]
  def change
      add_reference :friends, :inviter, foreign_key: { to_table: :users }
      add_reference :friends, :invitee, foreign_key: { to_table: :users }
  end
end
