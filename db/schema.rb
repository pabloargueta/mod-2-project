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

ActiveRecord::Schema.define(version: 2018_08_22_013410) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "home_owners", force: :cascade do |t|
    t.string "address"
    t.integer "homeowners_association_id"
    t.float "account_balance"
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["homeowners_association_id"], name: "index_home_owners_on_homeowners_association_id"
    t.index ["username"], name: "index_home_owners_on_username", unique: true
  end

  create_table "homeowners_associations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.integer "home_owner_id"
    t.float "total_due"
    t.datetime "date_created"
    t.text "description"
    t.boolean "is_paid"
    t.float "total_outstanding"
    t.integer "invoice_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["home_owner_id"], name: "index_invoices_on_home_owner_id"
    t.index ["invoice_category_id"], name: "index_invoices_on_invoice_category_id"
  end

  create_table "payments", force: :cascade do |t|
    t.integer "invoice_id"
    t.datetime "date_paid"
    t.integer "home_owner_id"
    t.float "payment_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["home_owner_id"], name: "index_payments_on_home_owner_id"
    t.index ["invoice_id"], name: "index_payments_on_invoice_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
