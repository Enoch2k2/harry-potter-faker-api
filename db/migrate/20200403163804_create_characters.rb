class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :quote
      t.string :house
      t.string :location

      t.timestamps
    end
  end
end
