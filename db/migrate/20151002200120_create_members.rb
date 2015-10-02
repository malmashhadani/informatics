class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :field
      t.string :degree
      t.string :title
      t.text :bio

      t.timestamps null: false
    end
  end
end