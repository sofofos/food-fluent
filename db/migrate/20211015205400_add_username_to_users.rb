class AddUsernameToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :friends, :username, :string
  end
end
