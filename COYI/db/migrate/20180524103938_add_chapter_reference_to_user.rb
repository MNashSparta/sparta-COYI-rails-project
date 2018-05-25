class AddChapterReferenceToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :chapter, foreign_key: true
  end
end
