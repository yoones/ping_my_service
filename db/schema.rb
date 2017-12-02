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

ActiveRecord::Schema.define(version: 20171201083112) do

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "last_status_check"
    t.index ["name"], name: "index_services_on_name", unique: true
  end

  create_table "status_check_histories", force: :cascade do |t|
    t.integer "status_check_id"
    t.boolean "success"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "status_checks", force: :cascade do |t|
    t.integer "service_id"
    t.string "name"
    t.string "selector"
    t.string "expected_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "last_status_check"
    t.index ["service_id"], name: "index_status_checks_on_service_id"
  end

end
