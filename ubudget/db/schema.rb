# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151015193046) do

  create_table "financials", force: :cascade do |t|
    t.decimal  "wage"
    t.decimal  "interest"
    t.decimal  "investments"
    t.decimal  "misc_income"
    t.decimal  "rent"
    t.decimal  "home_maintenance"
    t.decimal  "electricity"
    t.decimal  "water"
    t.decimal  "gas_oil"
    t.decimal  "phone"
    t.decimal  "food"
    t.decimal  "insurance"
    t.decimal  "car_payment"
    t.decimal  "gas"
    t.decimal  "car_insurance"
    t.decimal  "credit_cards"
    t.decimal  "student_loan"
    t.decimal  "other_loans"
    t.decimal  "misc_expenses"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "user_id"
    t.decimal  "second_mortgage"
    t.decimal  "auto_repairs"
    t.decimal  "other_auto"
    t.decimal  "dining_out"
    t.decimal  "dental_insurance"
    t.decimal  "home_improvement"
    t.decimal  "dry_cleaning"
    t.decimal  "laundry"
    t.decimal  "childcare"
    t.decimal  "cable"
    t.decimal  "travel"
    t.decimal  "internet"
    t.decimal  "computer_costs"
    t.decimal  "baby_costs"
    t.decimal  "other_expenses1"
    t.decimal  "other_expenses2"
    t.decimal  "other_expenses3"
    t.decimal  "other_income1"
    t.decimal  "other_income2"
    t.decimal  "spouse_income"
    t.decimal  "life_insurance"
    t.decimal  "home_insurance"
    t.decimal  "emergency_savings"
    t.decimal  "college_savings"
    t.decimal  "retirement_savings"
    t.decimal  "other_savings"
    t.decimal  "entertainment"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
