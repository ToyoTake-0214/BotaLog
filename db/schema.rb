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

ActiveRecord::Schema[7.2].define(version: 2026_06_26_014834) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "plant_boards", force: :cascade do |t|
    t.text "plant_name", null: false
    t.text "body"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "plant_board_image"
    t.integer "watering_interval_days"
    t.date "last_watered_on"
    t.index ["user_id"], name: "index_plant_boards_on_user_id"
  end

  create_table "plants", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "plant_board_id"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "plant_image"
    t.index ["plant_board_id"], name: "index_plants_on_plant_board_id"
    t.index ["user_id"], name: "index_plants_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name", null: false
    t.string "email"
    t.string "password_digest", null: false
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_name"], name: "index_users_on_user_name", unique: true
  end

  add_foreign_key "plant_boards", "users"
  add_foreign_key "plants", "plant_boards"
  add_foreign_key "plants", "users"
end
