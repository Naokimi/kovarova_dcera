# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_28_135219) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adventures", force: :cascade do |t|
    t.float "current_chapter"
    t.string "load_code"
    t.string "email"
    t.boolean "test"
    t.integer "player_amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "non_player_characters", force: :cascade do |t|
    t.string "name"
    t.integer "max_hp"
    t.integer "hp_left"
    t.bigint "adventure_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["adventure_id"], name: "index_non_player_characters_on_adventure_id"
  end

  create_table "player_characters", force: :cascade do |t|
    t.string "name"
    t.string "class"
    t.string "race"
    t.string "player_name"
    t.bigint "adventure_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["adventure_id"], name: "index_player_characters_on_adventure_id"
  end

  add_foreign_key "non_player_characters", "adventures"
  add_foreign_key "player_characters", "adventures"
end
