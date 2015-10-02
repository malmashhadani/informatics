class CreateAboutus < ActiveRecord::Migration
  def change
    create_table :aboutus do |t|
      t.string :name
      t.string :field
      t.string :degree
      t.text :bio

      t.timestamps null: false
    end
  end
end
