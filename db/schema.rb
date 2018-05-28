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

ActiveRecord::Schema.define(version: 20180528180228) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"
  enable_extension "hstore"
  enable_extension "fuzzystrmatch"
  enable_extension "pg_trgm"
  enable_extension "pgcrypto"

  create_table "checkpoints", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_checkpoints_on_user_id"
  end

  create_table "measurement_types", force: :cascade do |t|
    t.string "name"
    t.string "units"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "measurements", force: :cascade do |t|
    t.bigint "checkpoint_id"
    t.bigint "measurement_type_id"
    t.integer "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["checkpoint_id"], name: "index_measurements_on_checkpoint_id"
    t.index ["measurement_type_id"], name: "index_measurements_on_measurement_type_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "birthdate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "checkpoints", "users"
  add_foreign_key "measurements", "checkpoints"
  add_foreign_key "measurements", "measurement_types"
end
