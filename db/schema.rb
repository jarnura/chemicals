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

ActiveRecord::Schema.define(version: 20170402071618) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chemicals", force: :cascade do |t|
    t.string   "name"
    t.string   "chemical_name"
    t.integer  "cas"
    t.string   "description"
    t.string   "melting_point"
    t.string   "boiling_point"
    t.string   "molecular_weight"
    t.string   "hazardous_level"
    t.string   "safety_description"
    t.string   "transport_info"
    t.integer  "category_id"
    t.integer  "manufacture_id"
    t.integer  "state_id"
    t.string   "place"
    t.string   "production"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "manufactures", force: :cascade do |t|
    t.string   "name"
    t.string   "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "brief_description"
    t.integer  "category_id"
    t.text     "properties"
    t.string   "chemical_name"
    t.integer  "manufacture_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "registerchemicals", force: :cascade do |t|
    t.string   "marketing_name"
    t.integer  "cas"
    t.string   "chemical_name"
    t.string   "other_name"
    t.string   "molecular_formula"
    t.string   "structural_formula"
    t.integer  "molecular_weight"
    t.string   "number_amw"
    t.integer  "weight_amw"
    t.string   "percentage_less_full"
    t.string   "percentage_less_half"
    t.string   "degree_of_purity"
    t.string   "hazardous_imp"
    t.string   "non_hazardous_imp"
    t.integer  "year"
    t.integer  "tonne"
    t.integer  "manufacture_id"
    t.integer  "chemical_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "states", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.integer  "ibn"
    t.string   "email"
    t.string   "company_name"
    t.integer  "mobile_no"
    t.string   "job"
    t.string   "company_pro"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
