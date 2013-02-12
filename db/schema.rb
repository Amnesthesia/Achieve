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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130212212836) do

  create_table "achievements", :force => true do |t|
    t.string   "title"
    t.text     "full_description"
    t.text     "short_description"
    t.decimal  "base_points"
    t.datetime "time_added"
    t.datetime "expires"
    t.string   "img_path"
    t.boolean  "is_global"
    t.boolean  "can_coop"
    t.boolean  "request_review"
    t.boolean  "has_parents"
    t.integer  "user_id"
    t.string   "user_type"
    t.integer  "location_id"
    t.string   "location_type"
    t.integer  "type_id"
    t.string   "type_type"
    t.integer  "mode_id"
    t.string   "mode_type"
    t.integer  "category_id"
    t.string   "category_type"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "achievements_achievements", :force => true do |t|
    t.integer  "achievement_id"
    t.string   "achievement_type"
    t.integer  "parent_id"
    t.string   "parent_type"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "activities", :force => true do |t|
    t.integer  "user_id"
    t.integer  "achievement_id"
    t.text     "activity"
    t.datetime "time"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "activities", ["achievement_id"], :name => "index_activities_on_achievement_id"
  add_index "activities", ["user_id"], :name => "index_activities_on_user_id"

  create_table "categories", :force => true do |t|
    t.integer  "category_id"
    t.string   "category_type"
    t.string   "title"
    t.text     "description"
    t.string   "img_path"
    t.integer  "points"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "locations", :force => true do |t|
    t.string   "title"
    t.string   "city"
    t.string   "region"
    t.string   "state"
    t.string   "country"
    t.string   "zipcode"
    t.boolean  "isCircular"
    t.float    "x"
    t.float    "y"
    t.float    "z"
    t.float    "w"
    t.float    "radius"
    t.datetime "time"
    t.string   "img_path"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "microposts", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "time"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "modes", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "img_path"
    t.decimal  "multiplier"
    t.datetime "time"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "img_path"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "types", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "img_path"
    t.integer  "points"
    t.datetime "time"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.integer  "age"
    t.integer  "gender"
    t.string   "city"
    t.string   "country"
    t.string   "zipcode"
    t.string   "img_path"
    t.integer  "role_id"
    t.string   "role_type"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

  create_table "users_achievements", :force => true do |t|
    t.integer  "achievement_id"
    t.integer  "user_id"
    t.integer  "coop_status"
    t.boolean  "complete"
    t.boolean  "tracked"
    t.string   "user_type"
    t.string   "achievement_type"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

end
