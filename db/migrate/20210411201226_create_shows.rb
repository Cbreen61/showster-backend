class CreateShows < ActiveRecord::Migration[6.1]
  def change
    create_table :shows do |t|
      t.string :title
      t.string :status
      t.date :release_date
      t.integer :seasons
      t.integer :likes
      t.integer :dislikes
      t.text :description

      t.timestamps
    end
  end
end
