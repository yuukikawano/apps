class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :memo
      t.string :due
      t.references :user, index: true, foreign_key: true


      t.timestamps
    end
  end
end
