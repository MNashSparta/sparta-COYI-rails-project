class CreateHundredDayChallenges < ActiveRecord::Migration[5.2]
  def change
    create_table :hundred_day_challenges do |t|
      t.string :Email
      t.string :Address
      t.string :First_name
      t.string :Last_name
      t.string :Location
      t.string :Organisation

      t.timestamps
    end
  end
end
