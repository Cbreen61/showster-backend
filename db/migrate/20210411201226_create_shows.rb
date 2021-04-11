class CreateShows < ActiveRecord::Migration[6.1]
  def change
    create_table :shows do |t|
      t.string :title
      t.string :status
      t.date :release_date
      t.integer :seasons
      t.integer :likes, default: 0
      t.integer :dislikes, default: 0
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
