class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :content
      t.belongs_to :movie
      t.belongs_to :user
      t.datetime :commenttime

      t.timestamps
    end
  end
end
