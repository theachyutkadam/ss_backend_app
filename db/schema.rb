# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_06_15_103056) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.integer "type"
    t.float "balance"
    t.bigint "customer_id", null: false
    t.integer "status"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_accounts_on_customer_id"
  end

  create_table "cards", force: :cascade do |t|
    t.string "name"
    t.integer "csv"
    t.string "pin"
    t.string "number"
    t.integer "type"
    t.datetime "expired_at"
    t.integer "status"
    t.bigint "account_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["account_id"], name: "index_cards_on_account_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "contact"
    t.date "birth_date"
    t.text "address"
    t.string "is_deleted"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "employees", force: :cascade do |t|
    t.integer "status"
    t.string "salary"
    t.datetime "date_of_joining"
    t.integer "position"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.text "narration"
    t.string "credit_amount"
    t.string "debit_amount"
    t.string "closing_balance"
    t.bigint "customer_id", null: false
    t.bigint "account_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["account_id"], name: "index_transactions_on_account_id"
    t.index ["customer_id"], name: "index_transactions_on_customer_id"
  end

  add_foreign_key "accounts", "customers"
  add_foreign_key "cards", "accounts"
  add_foreign_key "transactions", "accounts"
  add_foreign_key "transactions", "customers"
end
