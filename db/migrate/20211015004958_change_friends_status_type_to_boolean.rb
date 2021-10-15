class ChangeFriendsStatusTypeToBoolean < ActiveRecord::Migration[6.1]
  def change
    change_column :friends, :status, :boolean
  end
end
