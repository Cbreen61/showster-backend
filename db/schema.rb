# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_04_11_201710) do

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "status"
    t.string "species"
    t.text "description"
    t.integer "show_id", null: false
    t.integer "likes", default: 0
    t.integer "dislikes", default: 0
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["show_id"], name: "index_characters_on_show_id"
  end

  create_table "shows", force: :cascade do |t|
    t.string "title"
    t.string "status"
    t.date "release_date"
    t.integer "seasons"
    t.integer "likes", default: 0
    t.integer "dislikes", default: 0
    t.text "description"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "characters", "shows"
end
