class UpdateColumnToTextInNews < ActiveRecord::Migration[5.2]
  def change
    change_column :news, :story, :text
  end
end
