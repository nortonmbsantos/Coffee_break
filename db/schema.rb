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

ActiveRecord::Schema.define(version: 2018_09_29_171002) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "coffee_times", force: :cascade do |t|
    t.bigint "worker_id"
    t.bigint "coffee_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coffee_type_id"], name: "index_coffee_times_on_coffee_type_id"
    t.index ["worker_id"], name: "index_coffee_times_on_worker_id"
  end

  create_table "coffee_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "occupation_coffee_permissions", force: :cascade do |t|
    t.bigint "occupation_id"
    t.bigint "coffee_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coffee_type_id"], name: "index_occupation_coffee_permissions_on_coffee_type_id"
    t.index ["occupation_id"], name: "index_occupation_coffee_permissions_on_occupation_id"
  end

  create_table "occupations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workers", force: :cascade do |t|
    t.string "name"
    t.bigint "occupation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["occupation_id"], name: "index_workers_on_occupation_id"
  end

  add_foreign_key "coffee_times", "coffee_types"
  add_foreign_key "coffee_times", "workers"
  add_foreign_key "occupation_coffee_permissions", "coffee_types"
  add_foreign_key "occupation_coffee_permissions", "occupations"
  add_foreign_key "workers", "occupations"
end
