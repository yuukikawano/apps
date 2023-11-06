class AddColumnToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :done_task, :integer, default: 0
  end
end
