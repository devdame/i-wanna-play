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

ActiveRecord::Schema.define(version: 20150824211057) do

  create_table "groups", force: true do |t|
    t.string   "location"
    t.string   "name"
    t.string   "system"
    t.integer  "creator_id"
    t.boolean  "invite_only"
    t.integer  "max_dms"
    t.integer  "max_players"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "memberships", force: true do |t|
    t.integer  "group_id"
    t.integer  "player_id"
    t.string   "role"
    t.string   "klass"
    t.string   "race"
    t.string   "character_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "location"
    t.string   "phone_number"
    t.string   "role_preference"
    t.string   "preferred_game_location"
    t.boolean  "currently_looking"
    t.text     "bio"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
