class AddChapterReferenceToNews < ActiveRecord::Migration[5.2]
  def change
    add_reference :news, :chapter, foreign_key: true
  end
end
