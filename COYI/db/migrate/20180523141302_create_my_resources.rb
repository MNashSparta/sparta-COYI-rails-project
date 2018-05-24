class CreateMyResources < ActiveRecord::Migration[5.2]
  def change
    create_table :my_resources do |t|
      t.string :title
      t.string :description
      t.integer :status

      t.timestamps
    end
  end
end
