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

ActiveRecord::Schema.define(version: 20170228031358) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "campgrounds", force: :cascade do |t|
    t.string  "name"
    t.text    "description"
    t.string  "image_url"
    t.integer "facility_id"
    t.integer "park_id"
    t.index ["park_id"], name: "index_campgrounds_on_park_id", using: :btree
  end

  create_table "comments", force: :cascade do |t|
    t.integer "user_id"
    t.text    "body"
    t.string  "target_type"
    t.integer "target_id"
    t.index ["target_type", "target_id"], name: "index_comments_on_target_type_and_target_id", using: :btree
    t.index ["user_id"], name: "index_comments_on_user_id", using: :btree
  end

  create_table "gear_lists", force: :cascade do |t|
    t.string  "item"
    t.integer "quantity"
    t.integer "trip_id"
    t.index ["trip_id"], name: "index_gear_lists_on_trip_id", using: :btree
  end

  create_table "parks", force: :cascade do |t|
    t.integer "rec_area_number"
    t.string  "name"
    t.text    "description"
    t.string  "image_url"
  end

  create_table "trips", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "leader_id"
    t.integer  "gear_list_id"
    t.integer  "campground_id"
    t.index ["campground_id"], name: "index_trips_on_campground_id", using: :btree
    t.index ["gear_list_id"], name: "index_trips_on_gear_list_id", using: :btree
  end

  create_table "user_trips", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "trip_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trip_id"], name: "index_user_trips_on_trip_id", using: :btree
    t.index ["user_id"], name: "index_user_trips_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "email"
    t.string   "image"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_foreign_key "campgrounds", "parks"
  add_foreign_key "gear_lists", "trips"
  add_foreign_key "trips", "campgrounds"
  add_foreign_key "trips", "gear_lists"
  add_foreign_key "trips", "users", column: "leader_id"
end
