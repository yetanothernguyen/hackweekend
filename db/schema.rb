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

ActiveRecord::Schema.define(:version => 20110730181155) do

  create_table "authentications", :force => true do |t|
    t.integer  "user_id"
    t.integer  "uid"
    t.string   "provider"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "positions", :force => true do |t|
    t.decimal  "latitude",   :precision => 10, :scale => 6
    t.decimal  "longitude",  :precision => 10, :scale => 6
    t.decimal  "accuracy",   :precision => 10, :scale => 2
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quest_entries", :force => true do |t|
    t.integer  "user_id"
    t.integer  "quest_id"
    t.integer  "votes_count", :default => 0
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quest_participations", :force => true do |t|
    t.integer  "user_id"
    t.integer  "quest_id"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quests", :force => true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.integer  "city_id"
    t.date     "expired_at"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "votes_count", :default => 0
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "votes", :force => true do |t|
    t.integer  "user_id"
    t.integer  "votable_id"
    t.string   "votable_type"
    t.integer  "vote"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
