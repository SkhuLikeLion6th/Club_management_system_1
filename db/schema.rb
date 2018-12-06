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

ActiveRecord::Schema.define(version: 20181202131350) do

  create_table "apply_contents", force: :cascade do |t|
    t.integer  "apply_form_id"
    t.integer  "user_id"
    t.text     "content1"
    t.text     "content2"
    t.text     "content3"
    t.text     "content4"
    t.text     "content5"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "apply_forms", force: :cascade do |t|
    t.integer  "club_id"
    t.string   "title1"
    t.string   "title2"
    t.string   "title3"
    t.string   "title4"
    t.string   "title5"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "club_meetings", force: :cascade do |t|
    t.string   "name"
    t.string   "content"
    t.integer  "club_id"
    t.integer  "user_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "club_members", force: :cascade do |t|
    t.integer  "club_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["club_id"], name: "index_club_members_on_club_id"
    t.index ["user_id"], name: "index_club_members_on_user_id"
  end

  create_table "clubs", force: :cascade do |t|
    t.string   "club_name"
    t.text     "introduce"
    t.string   "img_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string   "name"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.string   "title"
    t.text     "body"
    t.string   "subject"
    t.integer  "user_id",          null: false
    t.integer  "parent_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["commentable_id", "commentable_type"], name: "index_comments_on_commentable_id_and_commentable_type"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string   "department_name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "grades", force: :cascade do |t|
    t.string   "grade_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "group_members", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "small_group_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["small_group_id"], name: "index_group_members_on_small_group_id"
    t.index ["user_id"], name: "index_group_members_on_user_id"
  end

  create_table "group_options", force: :cascade do |t|
    t.integer  "small_group_id"
    t.string   "apply_active",   default: "1"
    t.string   "view_active",    default: "1"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["small_group_id"], name: "index_group_options_on_small_group_id"
  end

  create_table "meetings", force: :cascade do |t|
    t.string   "name"
    t.string   "content"
    t.integer  "club_id"
    t.integer  "user_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "options", force: :cascade do |t|
    t.integer  "club_id"
    t.string   "apply_active", default: "1"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "content"
    t.text     "title"
    t.integer  "user_id"
    t.integer  "club_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "s_apply_contents", force: :cascade do |t|
    t.integer  "s_apply_form_id"
    t.integer  "user_id"
    t.text     "content1"
    t.text     "content2"
    t.text     "content3"
    t.text     "content4"
    t.text     "content5"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "s_apply_forms", force: :cascade do |t|
    t.integer  "small_group_id"
    t.string   "title1"
    t.string   "title2"
    t.string   "title3"
    t.string   "title4"
    t.string   "title5"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "small_groups", force: :cascade do |t|
    t.text     "group_name"
    t.string   "introduce"
    t.string   "img_url",    default: ""
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",  null: false
    t.string   "encrypted_password",     default: "",  null: false
    t.integer  "department_id",                        null: false
    t.string   "name",                                 null: false
    t.string   "phone_number",                         null: false
    t.string   "mail",                                 null: false
    t.integer  "grade_id",                             null: false
    t.string   "authorization",          default: "2"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "videos", force: :cascade do |t|
    t.string   "content"
    t.text     "title"
    t.integer  "user_id"
    t.integer  "club_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_videos_on_user_id"
  end

end
