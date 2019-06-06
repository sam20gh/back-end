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

ActiveRecord::Schema.define(version: 2019_06_04_132556) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "airports", force: :cascade do |t|
    t.string "name"
    t.string "iatacode"
    t.string "icaocode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer "airport_id"
    t.integer "user_id"
    t.string "comment_title"
    t.string "comment_content"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flights", force: :cascade do |t|
    t.string "departure_iataCode"
    t.string "departure_icaoCode"
    t.datetime "departure_scheduledTime"
    t.datetime "departure_estimatedTime"
    t.datetime "departure_estimatedRunway"
    t.datetime "departure_actualRunway"
    t.string "airline"
    t.string "airline_iataCod"
    t.string "airline_icaoCode"
    t.string "arrival_iataCode"
    t.string "arrival_icaoCode"
    t.datetime "arrival_estimatedTime"
    t.datetime "arrival_estimatedRunway"
    t.datetime "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "my_airports", force: :cascade do |t|
    t.integer "airport_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "my_flights", force: :cascade do |t|
    t.integer "flight_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "routes", force: :cascade do |t|
    t.integer "airport_id"
    t.integer "flight_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "first_name"
    t.string "last_name"
    t.string "dob"
    t.integer "miles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
  end

end
