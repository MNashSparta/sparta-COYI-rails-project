class AddUserReftomyresources < ActiveRecord::Migration[5.2]
  def change
    add_reference :my_resources, :user, foreign_key: true
  end
end
