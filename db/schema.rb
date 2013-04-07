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

ActiveRecord::Schema.define(:version => 20130407025218) do

  create_table "commute_attributes", :force => true do |t|
    t.integer  "cash"
    t.boolean  "cash_fr"
    t.integer  "calories"
    t.boolean  "calories_fr"
    t.integer  "envfp"
    t.boolean  "envfp_fr"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "commutetype_id"
  end

  create_table "commutes", :force => true do |t|
    t.string   "name"
    t.datetime "start"
    t.datetime "end"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
    t.integer  "distance"
    t.integer  "passenger"
  end

  create_table "commutes_commutetypes", :id => false, :force => true do |t|
    t.integer "commute_id"
    t.integer "commutetype_id"
  end

  create_table "commutetypes", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "destinations", :force => true do |t|
    t.string   "name"
    t.integer  "distance"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
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
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
