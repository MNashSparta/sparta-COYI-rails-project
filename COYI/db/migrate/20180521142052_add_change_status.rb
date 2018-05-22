class AddChangeStatus < ActiveRecord::Migration[5.2]
  def change

    change_column :projects, :status, 'integer USING CAST(status AS integer)'
    change_column_default :projects, :status, to: 0
  end
end
