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

ActiveRecord::Schema.define(version: 20170501222247) do

  create_table "railway_stations", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "railway_stations_routes", force: :cascade do |t|
    t.integer "railway_station_id"
    t.integer "route_id"
  end

  create_table "routes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seats", force: :cascade do |t|
    t.string  "number"
    t.integer "wagon_id"
    t.index ["wagon_id"], name: "index_seats_on_wagon_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.string   "start"
    t.string   "end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "train_id"
    t.integer  "user_id"
    t.string   "name"
    t.string   "surname"
    t.index ["train_id"], name: "index_tickets_on_train_id"
    t.index ["user_id"], name: "index_tickets_on_user_id"
  end

  create_table "trains", force: :cascade do |t|
    t.string   "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "route_id"
    t.index ["route_id"], name: "index_trains_on_route_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "login"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wagons", force: :cascade do |t|
    t.string  "w_type"
    t.integer "train_id"
    t.integer "number"
    t.integer "upper_seats"
    t.integer "lower_seats"
    t.index ["train_id"], name: "index_wagons_on_train_id"
  end

end
