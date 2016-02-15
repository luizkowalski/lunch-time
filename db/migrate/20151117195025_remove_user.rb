class RemoveUser < ActiveRecord::Migration
  def change
    execute <<-SQL
      ALTER TABLE votes DROP COLUMN user_id;
      DROP TABLE users;
    SQL
  end
end
