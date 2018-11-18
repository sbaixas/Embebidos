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

ActiveRecord::Schema.define(version: 2018_11_18_220409) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "states", force: :cascade do |t|
    t.float "temperature"
    t.float "humidity"
    t.float "air_quality"
    t.float "smoke"
    t.string "rgb_1"
    t.string "rbg_2"
    t.integer "count"
    t.integer "stepper_1"
    t.integer "stepper_2"
    t.integer "servo_1"
    t.integer "servo_2"
    t.integer "servo_3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
