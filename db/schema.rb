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

ActiveRecord::Schema.define(:version => 20120505004553) do

  create_table "flights", :force => true do |t|
    t.string   "arrival"
    t.datetime "arrival_time"
    t.string   "departure"
    t.datetime "departure_time"
    t.integer  "passenger_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.boolean  "isinter"
  end

  add_index "flights", ["passenger_id"], :name => "index_flights_on_passenger_id"

  create_table "households", :force => true do |t|
    t.string   "address"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "luggages", :force => true do |t|
    t.string   "description"
    t.decimal  "weight"
    t.integer  "passenger_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "sizetype"
  end

  add_index "luggages", ["passenger_id"], :name => "index_luggages_on_passenger_id"

  create_table "passengers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
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
    t.boolean  "admin"
    t.integer  "household_id"
  end

  add_index "passengers", ["email"], :name => "index_passengers_on_email", :unique => true
  add_index "passengers", ["household_id"], :name => "index_passengers_on_household_id"
  add_index "passengers", ["reset_password_token"], :name => "index_passengers_on_reset_password_token", :unique => true

end
