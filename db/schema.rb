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

ActiveRecord::Schema.define(version: 20170717074744) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chemical_consumables", force: :cascade do |t|
    t.string "title", default: "", null: false
    t.string "pack_form", default: "", null: false
    t.integer "amount", default: 0, null: false
    t.integer "ph_rate", default: 0, null: false
    t.string "additional_info", default: ""
    t.string "purpose", default: "", null: false
    t.string "possessor_type"
    t.bigint "possessor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["possessor_id", "possessor_type"], name: "index_chemical_consumables_on_possessor_id_and_possessor_type"
    t.index ["possessor_type", "possessor_id"], name: "index_chemical_consumables_on_possessor_type_and_possessor_id"
  end

  create_table "consumables", force: :cascade do |t|
    t.string "title", default: "", null: false
    t.string "pack_form", default: "", null: false
    t.integer "amount", default: 0, null: false
    t.string "possessor_type"
    t.bigint "possessor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["possessor_id", "possessor_type"], name: "index_consumables_on_possessor_id_and_possessor_type"
    t.index ["possessor_type", "possessor_id"], name: "index_consumables_on_possessor_type_and_possessor_id"
  end

  create_table "equipment", force: :cascade do |t|
    t.string "title", default: "", null: false
    t.string "owner", default: "", null: false
    t.string "kind", default: "", null: false
    t.string "additional_info", default: ""
    t.integer "amount", default: 0, null: false
    t.string "possessor_type"
    t.bigint "possessor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["possessor_id", "possessor_type"], name: "index_equipment_on_possessor_id_and_possessor_type"
    t.index ["possessor_type", "possessor_id"], name: "index_equipment_on_possessor_type_and_possessor_id"
  end

  create_table "facilities", force: :cascade do |t|
    t.string "title", default: "", null: false
    t.string "supervisor", default: "", null: false
    t.string "address", default: "", null: false
    t.string "manager", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inventories", force: :cascade do |t|
    t.string "title", default: "", null: false
    t.integer "amount", default: 0, null: false
    t.string "kind", default: "", null: false
    t.string "possessor_type"
    t.bigint "possessor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["possessor_id", "possessor_type"], name: "index_inventories_on_possessor_id_and_possessor_type"
    t.index ["possessor_type", "possessor_id"], name: "index_inventories_on_possessor_type_and_possessor_id"
  end

  create_table "storages", force: :cascade do |t|
    t.bigint "facility_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["facility_id"], name: "index_storages_on_facility_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "storages", "facilities"
end
