class AddUserToVotes < ActiveRecord::Migration
  def change
    add_column :votes, :user, :string
  end
end
