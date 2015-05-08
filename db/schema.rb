# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 0) do

  create_table "cards", force: true do |t|
    t.integer "sku"
  end

  create_table "guests", force: true do |t|
    t.string  "name"
    t.string  "address"
    t.string  "gift"
    t.string  "status"
    t.text    "wording"
    t.integer "user_id"
    t.integer "card_id"
  end

  add_index "guests", ["card_id"], name: "index_guests_on_card_id"
  add_index "guests", ["user_id"], name: "index_guests_on_user_id"

  create_table "users", force: true do |t|
    t.string "name"
  end

end
