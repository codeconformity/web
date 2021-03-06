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

ActiveRecord::Schema.define(version: 20130802055512) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  create_table "user_accounts", id: false, force: true do |t|
    t.uuid     "id",                               null: false
    t.string   "uid",                 default: "", null: false
    t.string   "provider",            default: "", null: false
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",       default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.uuid     "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_accounts", ["uid", "provider"], name: "index_user_accounts_on_uid_and_provider", unique: true, using: :btree

  create_table "users", id: false, force: true do |t|
    t.uuid   "id",                      null: false
    t.string "nickname",   default: "", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "email",      default: "", null: false
    t.string "avatar_url"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["nickname"], name: "index_users_on_nickname", unique: true, using: :btree

end
