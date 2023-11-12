class AddColumnUserId < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :owner_id, :integer
  end
end
