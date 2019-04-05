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

ActiveRecord::Schema.define(version: 2019_04_03_092749) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bills", force: :cascade do |t|
    t.bigint "utility_id"
    t.datetime "bill_date"
    t.integer "cost"
    t.string "payment_type"
    t.string "payment_freq"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["utility_id"], name: "index_bills_on_utility_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.string "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "password_digest"
    t.string "location"
    t.integer "house_size"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "utilities", force: :cascade do |t|
    t.bigint "company_id"
    t.bigint "user_id"
    t.string "utility_type"
    t.datetime "start_date"
    t.datetime "renewal_date"
    t.string "payment_type"
    t.string "payment_freq"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_utilities_on_company_id"
    t.index ["user_id"], name: "index_utilities_on_user_id"
  end

  add_foreign_key "bills", "utilities"
  add_foreign_key "utilities", "companies"
  add_foreign_key "utilities", "users"
end
