class AddUsersReferencesToFriends < ActiveRecord::Migration[6.1]
  def change
    add_reference :friends, :inviter, foreign_key:{to_table: :users}
    add_reference :friends, :invitee, foreign_key:{to_table: :users}
    add_column :friends, :status, :string
  end
end
