class ChangePublishedToTimestampInNews < ActiveRecord::Migration[5.2]
  def change
    change_column :news, :published, :datetime
  end
end
