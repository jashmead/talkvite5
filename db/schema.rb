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

ActiveRecord::Schema.define(version: 20130804233923) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "filepaths", force: true do |t|
    t.integer  "metafile_id"
    t.string   "pathname"
    t.string   "file_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "name"
    t.string   "location_type"
    t.string   "street1"
    t.string   "street2"
    t.string   "city"
    t.string   "country"
    t.string   "post_code"
    t.text     "address_full"
    t.float    "longitude"
    t.float    "latitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", force: true do |t|
    t.integer  "user_from_id"
    t.integer  "user_to_id"
    t.string   "message_type"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "metafiles", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "meta_type"
    t.text     "meta_data"
    t.text     "meta_controls"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "metalinks", force: true do |t|
    t.integer  "metafile_from_id"
    t.integer  "metafile_to_id"
    t.string   "metalink_type"
    t.string   "metalink_data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.integer  "user_id"
    t.integer  "talk_id"
    t.string   "post_type"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subjects", force: true do |t|
    t.integer  "metafile_id"
    t.integer  "talk_id"
    t.string   "subject_type"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", force: true do |t|
    t.string   "tag_code"
    t.integer  "tagable_id"
    t.string   "tagable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "talks", force: true do |t|
    t.integer  "user_id"
    t.string   "subject"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "location_id"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "location_id"
  end

end
