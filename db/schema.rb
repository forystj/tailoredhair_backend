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

ActiveRecord::Schema.define(version: 2018_01_30_172947) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lookcomments", force: :cascade do |t|
    t.bigint "look_id"
    t.bigint "comment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id"], name: "index_lookcomments_on_comment_id"
    t.index ["look_id"], name: "index_lookcomments_on_look_id"
  end

  create_table "looks", force: :cascade do |t|
    t.string "image"
    t.string "caption"
    t.integer "likes"
    t.string "tags", array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usercomments", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "comment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id"], name: "index_usercomments_on_comment_id"
    t.index ["user_id"], name: "index_usercomments_on_user_id"
  end

  create_table "userlooks", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "look_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["look_id"], name: "index_userlooks_on_look_id"
    t.index ["user_id"], name: "index_userlooks_on_user_id"
  end

  create_table "userposts", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_userposts_on_post_id"
    t.index ["user_id"], name: "index_userposts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.boolean "stylist_status"
    t.boolean "client_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
    t.string "location"
    t.string "specialty", array: true
    t.string "enjoy", array: true
  end

  add_foreign_key "lookcomments", "comments"
  add_foreign_key "lookcomments", "looks"
  add_foreign_key "usercomments", "comments"
  add_foreign_key "usercomments", "users"
  add_foreign_key "userlooks", "looks"
  add_foreign_key "userlooks", "users"
  add_foreign_key "userposts", "posts"
  add_foreign_key "userposts", "users"
end
