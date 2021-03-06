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

ActiveRecord::Schema.define(version: 20160916141026) do

  create_table "admin_users", force: :cascade do |t|
    t.string   "first_name",      limit: 255,              null: false
    t.string   "last_name",       limit: 255,              null: false
    t.string   "email",           limit: 100, default: "", null: false
    t.string   "username",        limit: 25
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest", limit: 255
  end

  add_index "admin_users", ["username"], name: "index_admin_users_on_username", using: :btree

  create_table "currencies", force: :cascade do |t|
    t.string   "name",       limit: 255, null: false
    t.string   "iso",        limit: 3,   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exchange_rates", force: :cascade do |t|
    t.string   "from_currency_id", limit: 3
    t.string   "to_currency_id",   limit: 3
    t.decimal  "rate",                       precision: 8, scale: 5, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "exchange_rates", ["from_currency_id"], name: "index_exchange_rates_on_from_currency_id", using: :btree
  add_index "exchange_rates", ["to_currency_id"], name: "index_exchange_rates_on_to_currency_id", using: :btree

end
