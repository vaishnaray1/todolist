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

ActiveRecord::Schema.define(version: 2022_05_24_203452) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "citext"
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "title"
    t.integer "items_count", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "interactions", force: :cascade do |t|
    t.bigint "item_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["item_id"], name: "index_interactions_on_item_id"
    t.index ["user_id"], name: "index_interactions_on_user_id"
  end

  create_table "items", force: :cascade do |t|
    t.bigint "owner_id", null: false
    t.bigint "category_id", null: false
    t.string "priority", default: "Normal"
    t.boolean "completed", default: false
    t.datetime "due_date"
    t.text "description"
    t.integer "interactions_count", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_items_on_category_id"
    t.index ["owner_id"], name: "index_items_on_owner_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.citext "username"
    t.integer "items_count", default: 0
    t.boolean "private"
    t.integer "tasks_count", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "interactions", "items"
  add_foreign_key "interactions", "users"
  add_foreign_key "items", "categories"
  add_foreign_key "items", "users", column: "owner_id"
end
