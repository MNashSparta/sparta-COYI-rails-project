class CreateAskAdvocates < ActiveRecord::Migration[5.2]
  def change
    create_table :ask_advocates do |t|
      t.string :question

      t.timestamps
    end
  end
end
