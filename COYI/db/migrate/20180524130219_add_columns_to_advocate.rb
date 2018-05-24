class AddColumnsToAdvocate < ActiveRecord::Migration[5.2]
  def change
    rename_column :ask_advocates, :question, :title
    add_column :ask_advocates, :body, :text
    add_column :ask_advocates, :email_to, :integer
  end
end
