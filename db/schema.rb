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

ActiveRecord::Schema.define(:version => 20140323182949) do

  create_table "bookings", :force => true do |t|
    t.integer  "scheduled_tour_id"
    t.integer  "user_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "bookings", ["scheduled_tour_id"], :name => "index_bookings_on_scheduled_tour_id"
  add_index "bookings", ["user_id"], :name => "index_bookings_on_user_id"

  create_table "reviews", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.float    "rank"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "user_id"
    t.integer  "tour_id"
  end

  add_index "reviews", ["tour_id"], :name => "index_reviews_on_tour_id"
  add_index "reviews", ["user_id"], :name => "index_reviews_on_user_id"

  create_table "scheduled_tours", :force => true do |t|
    t.integer  "tour_id"
    t.datetime "start_time", :limit => 255
    t.datetime "end_time",   :limit => 255
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "scheduled_tours", ["tour_id"], :name => "index_scheduled_tours_on_tour_id"

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       :limit => 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

  create_table "tours", :force => true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.string   "loc_name"
    t.string   "loc_lat"
    t.string   "loc_lon"
    t.decimal  "prize"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "description"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "last_name"
    t.string   "first_name"
    t.string   "phone"
    t.string   "verification_string"
    t.boolean  "is_verify"
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "venues", :force => true do |t|
    t.integer  "tour_id"
    t.string   "name"
    t.float    "lat"
    t.float    "lon"
    t.string   "image_url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
