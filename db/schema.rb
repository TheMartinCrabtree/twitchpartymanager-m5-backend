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

ActiveRecord::Schema.define(version: 2019_10_30_201134) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "announcements", force: :cascade do |t|
    t.string "title"
    t.text "bodytext"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "eventname"
    t.datetime "dateandtime"
    t.string "serverinfo"
    t.string "voip"
    t.text "eventnote"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "joinuserevents", force: :cascade do |t|
    t.string "ingamename"
    t.boolean "inparty"
    t.boolean "waitlist"
    t.bigint "user_id"
    t.bigint "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_joinuserevents_on_event_id"
    t.index ["user_id"], name: "index_joinuserevents_on_user_id"
  end

  create_table "servernames", force: :cascade do |t|
    t.string "serveraddress"
    t.text "servernote"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usernames", force: :cascade do |t|
    t.string "password_digest"
    t.boolean "subscriber"
    t.boolean "follower"
    t.boolean "administrator"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.boolean "subscriber"
    t.boolean "follower"
    t.boolean "administrator"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "voips", force: :cascade do |t|
    t.string "servername"
    t.string "voipaddress"
    t.text "servernote"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "joinuserevents", "events"
  add_foreign_key "joinuserevents", "users"
end
