class AddDueTimeTask < ActiveRecord::Migration[7.0]
  def change 
    add_column :tasks, :duetime, :DateTime
    remove_column :tasks, :due, :string
  end
end
