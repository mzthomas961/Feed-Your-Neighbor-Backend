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

ActiveRecord::Schema.define(version: 2021_04_14_011515) do

  create_table "food_listings", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "image"
    t.string "cuisine"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_food_listings_on_user_id"
  end

  create_table "notifications", force: :cascade do |t|
    t.boolean "accepted"
    t.boolean "rejected"
    t.boolean "active"
    t.integer "user_id", null: false
    t.integer "trade_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["trade_id"], name: "index_notifications_on_trade_id"
    t.index ["user_id"], name: "index_notifications_on_user_id"
  end

  create_table "trades", force: :cascade do |t|
    t.integer "buyer_foodListing_id", null: false
    t.integer "seller_foodListing_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["buyer_foodListing_id"], name: "index_trades_on_buyer_foodListing_id"
    t.index ["seller_foodListing_id"], name: "index_trades_on_seller_foodListing_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.string "password"
    t.string "borough"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "food_listings", "users"
  add_foreign_key "notifications", "trades"
  add_foreign_key "notifications", "users"
  add_foreign_key "trades", "food_listings", column: "buyer_foodListing_id"
  add_foreign_key "trades", "food_listings", column: "seller_foodListing_id"
end
