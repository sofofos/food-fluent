class AddStatusToFriends < ActiveRecord::Migration[6.1]
  def change
    add_column :friends, :status, :boolean, default: false
  end
end
