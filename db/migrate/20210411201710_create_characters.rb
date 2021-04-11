class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :status
      t.string :species
      t.text :description
      t.belongs_to :show, null: false, foreign_key: true
      t.integer :likes, default: 0
      t.integer :dislikes, default: 0
      t.string :image

      t.timestamps
    end
  end
end
