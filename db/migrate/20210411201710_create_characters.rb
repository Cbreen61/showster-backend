class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :status
      t.string :species
      t.text :descripption
      t.belongs_to :show, null: false, foreign_key: true
      t.integer :likes
      t.integer :dislikes

      t.timestamps
    end
  end
end
