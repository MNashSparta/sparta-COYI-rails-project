class AddLevelToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :access_level, :integer
  end
end
