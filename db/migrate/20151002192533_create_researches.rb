class CreateResearches < ActiveRecord::Migration
  def change
    create_table :researches do |t|
      t.string :topic
      t.text :description
      t.string :field

      t.timestamps null: false
    end
  end
end
