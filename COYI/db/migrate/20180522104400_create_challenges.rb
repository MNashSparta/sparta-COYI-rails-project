class CreateChallenges < ActiveRecord::Migration[5.2]
  def change
    create_table :challenges do |t|
      t.string :emailaddress
      t.string :firstname
      t.string :lastname
      t.string :location
      t.string :organisation

      t.timestamps
    end
  end
end
