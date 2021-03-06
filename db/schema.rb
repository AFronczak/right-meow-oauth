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

ActiveRecord::Schema.define(version: 20160922190717) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "care_providers", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "phone"
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "pet_types", force: :cascade do |t|
    t.string   "type_of_pet"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "pets", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.integer  "pet_type_id"
    t.index ["pet_type_id"], name: "index_pets_on_pet_type_id", using: :btree
    t.index ["user_id"], name: "index_pets_on_user_id", using: :btree
  end

  create_table "specializations", force: :cascade do |t|
    t.integer  "care_provider_id"
    t.integer  "pet_type_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["care_provider_id"], name: "index_specializations_on_care_provider_id", using: :btree
    t.index ["pet_type_id"], name: "index_specializations_on_pet_type_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "address"
    t.string   "provider"
    t.string   "uid"
    t.string   "nickname"
    t.string   "access_token"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_foreign_key "pets", "pet_types"
  add_foreign_key "pets", "users"
end
