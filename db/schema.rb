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

ActiveRecord::Schema.define(version: 20140317054815) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blog_authors", force: true do |t|
    t.string   "display_name", limit: 45, null: false
    t.string   "first_name",   limit: 45
    t.string   "last_name",    limit: 45
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "blog_categories", force: true do |t|
    t.string   "name",        limit: 45,                null: false
    t.string   "name_clean",  limit: 45,                null: false
    t.boolean  "enabled",                default: true
    t.integer  "count_value",            default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "blog_comments", force: true do |t|
    t.text     "comment",                    null: false
    t.boolean  "mark_read",  default: false
    t.boolean  "visible",    default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "blog_posts", force: true do |t|
    t.string   "title",            limit: 144,                null: false
    t.text     "article"
    t.string   "title_clean",      limit: 144
    t.string   "file",             limit: 45
    t.string   "banner_image",     limit: 144
    t.boolean  "featured",                     default: true
    t.boolean  "enabled",                      default: true
    t.boolean  "comments_enabled",             default: true
    t.integer  "views",                        default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "blog_relateds", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "blog_tags", force: true do |t|
    t.string   "tag",        limit: 45, null: false
    t.string   "tag_clean",  limit: 45, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "blog_users", force: true do |t|
    t.string   "name",       limit: 45,                null: false
    t.string   "email",      limit: 45,                null: false
    t.string   "website",    limit: 45,                null: false
    t.boolean  "enabled",               default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
