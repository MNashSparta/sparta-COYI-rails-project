class AddUseridref < ActiveRecord::Migration[5.2]
  def change
    add_reference :my_resources, :user_id, foreign_key: true
  end
end
