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

ActiveRecord::Schema.define(:version => 20120120162919) do

  create_table "akupons", :force => true do |t|
    t.integer  "promotion_id"
    t.integer  "user_id"
    t.date     "purchase"
    t.date     "use"
    t.string   "unique_code"
    t.boolean  "is_delete"
    t.boolean  "is_canceled"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "region_id"
    t.boolean  "is_avtive"
    t.boolean  "is_delete"
    t.string   "who_delete"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "promotions", :force => true do |t|
    t.integer  "region_id"
    t.integer  "partner_id"
    t.integer  "category_id"
    t.integer  "user_id"
    t.boolean  "is_active"
    t.boolean  "is_delete",         :default => false
    t.string   "who_delete"
    t.boolean  "on_top"
    t.date     "start_action"
    t.date     "stop_action"
    t.string   "title"
    t.text     "short_description"
    t.text     "description"
    t.text     "terms"
    t.float    "costs"
    t.integer  "volume"
    t.integer  "left"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regions", :force => true do |t|
    t.string   "name_region"
    t.text     "description"
    t.boolean  "is_active"
    t.boolean  "is_delete"
    t.string   "who_delete"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "",     :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "",     :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "role",                                  :default => "user"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
