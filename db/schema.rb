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

ActiveRecord::Schema.define(version: 20140218233436) do

  create_table "identities", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

<<<<<<< HEAD
  create_table "rails_admin_histories", force: true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      limit: 2
    t.integer  "year",       limit: 5
=======
  create_table "projects", force: true do |t|
    t.string   "name"
    t.string   "category"
>>>>>>> 36b479f87ee3ed93322a34b683a1c05b89ae208e
    t.datetime "created_at"
    t.datetime "updated_at"
  end

<<<<<<< HEAD
  add_index "rails_admin_histories", ["item", "table", "month", "year"], name: "index_rails_admin_histories"

=======
>>>>>>> 36b479f87ee3ed93322a34b683a1c05b89ae208e
  create_table "time_tables", force: true do |t|
    t.integer  "user_id"
    t.integer  "project_id"
    t.string   "date"
    t.float    "hours"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "string"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.string   "avatars"
    t.string   "country"
    t.boolean  "admin",                  default: false
    t.string   "confirmed"
    t.string   "signer"
    t.string   "shares"
    t.string   "provider"
    t.string   "uid"
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
