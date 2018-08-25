# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_08_16_025101) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "emails", force: :cascade do |t|
    t.date "senddate"
    t.string "subject"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notes", force: :cascade do |t|
    t.integer "customers"
    t.text "body"
    t.text "shopping"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "openhour_id"
    t.index ["openhour_id"], name: "index_notes_on_openhour_id"
  end

  create_table "oh_vols", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "openhour_id"
    t.bigint "volunteer_id"
    t.index ["openhour_id"], name: "index_oh_vols_on_openhour_id"
    t.index ["volunteer_id"], name: "index_oh_vols_on_volunteer_id"
  end

  create_table "openhours", force: :cascade do |t|
    t.date "date"
    t.boolean "posted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shop_vols", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "openhour_id"
    t.bigint "volunteer_id"
    t.index ["openhour_id"], name: "index_shop_vols_on_openhour_id"
    t.index ["volunteer_id"], name: "index_shop_vols_on_volunteer_id"
  end

  create_table "shoppers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.text "notes"
    t.boolean "activestatus"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "volunteers", force: :cascade do |t|
    t.string "name", null: false
    t.string "email"
    t.string "phone"
    t.text "notes"
    t.boolean "activestatus"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role"
  end

  add_foreign_key "notes", "openhours"
  add_foreign_key "oh_vols", "openhours"
  add_foreign_key "oh_vols", "volunteers"
  add_foreign_key "shop_vols", "openhours"
  add_foreign_key "shop_vols", "volunteers"
end
