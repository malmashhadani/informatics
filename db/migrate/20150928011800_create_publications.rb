class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string :title
      t.string :authors
      t.text :abstract
      t.integer :year
      t.string :conference

      t.timestamps null: false
    end
  end
end
