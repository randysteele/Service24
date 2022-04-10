# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 202203139999999) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.text "description"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "billing_address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "city"
    t.string "state"
    t.string "zip"
  end

  create_table "sites", force: :cascade do |t|
    t.string "name"
    t.integer "number"
    t.integer "phone"
    t.string "address"
    t.string "acct_mgr"
    t.string "branch_mgr"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "city"
    t.string "state"
    t.string "zip"
    t.bigint "client_id", null: false
    t.index ["client_id"], name: "index_sites_on_client_id"
  end

  create_table "technicians", force: :cascade do |t|
    t.string "name"
    t.string "tech_id"
    t.string "phone"
    t.string "email"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "workorders", force: :cascade do |t|
    t.string "category"
    t.string "caller"
    t.string "PO"
    t.text "work_requested"
    t.datetime "schedule_date"
    t.datetime "completion_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "site_id", null: false
    t.index ["site_id"], name: "index_workorders_on_site_id"
  end

  add_foreign_key "sites", "clients"
  add_foreign_key "workorders", "sites"
end
