class CreateNews < ActiveRecord::Migration[5.2]
  def change
    create_table :news do |t|
      t.string :title
      t.string :story
      t.date :published

      t.timestamps
    end
  end
end
