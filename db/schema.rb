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

ActiveRecord::Schema.define(version: 20140202180713) do

  create_table "accounts", force: true do |t|
    t.decimal  "balance"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "accounts", ["user_id"], name: "index_accounts_on_user_id"

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
  end

  create_table "comments", force: true do |t|
    t.integer  "user_id"
    t.text     "body"
    t.integer  "video_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["user_id"], name: "index_comments_on_user_id"
  add_index "comments", ["video_id"], name: "index_comments_on_video_id"

  create_table "purchases", force: true do |t|
    t.integer  "user_id"
    t.integer  "video_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "purchases", ["user_id"], name: "index_purchases_on_user_id"
  add_index "purchases", ["video_id"], name: "index_purchases_on_video_id"

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "account_id"
  end

  add_index "users", ["account_id"], name: "index_users_on_account_id"

  create_table "videos", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.date     "date"
    t.time     "duration"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "youtube_id"
    t.integer  "category_id"
    t.decimal  "price",       precision: 8, scale: 2
    t.integer  "user_id"
  end

  add_index "videos", ["category_id"], name: "index_videos_on_category_id"
  add_index "videos", ["user_id"], name: "index_videos_on_user_id"

end
