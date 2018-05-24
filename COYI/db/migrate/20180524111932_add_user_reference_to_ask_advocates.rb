class AddUserReferenceToAskAdvocates < ActiveRecord::Migration[5.2]
  def change
    add_reference :ask_advocates, :user, foreign_key: true 
  end
end
