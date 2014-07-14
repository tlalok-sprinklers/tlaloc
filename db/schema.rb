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

ActiveRecord::Schema.define(version: 20140714033323) do

  create_table "program_stations", force: true do |t|
    t.integer  "program_id"
    t.integer  "station_id"
    t.integer  "duration"
    t.integer  "order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "program_stations", ["program_id"], name: "index_program_stations_on_program_id"
  add_index "program_stations", ["station_id"], name: "index_program_stations_on_station_id"

  create_table "programs", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedules", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "program_id"
    t.integer  "start_time"
    t.datetime "last_run"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "schedules", ["program_id"], name: "index_schedules_on_program_id"

  create_table "stations", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "enabled"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
