class AddUserReferenceToNews < ActiveRecord::Migration[5.2]
  def change
    remove_column :news, :user
    add_reference :news, :user, foreign_key: true
  end
end
