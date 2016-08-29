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

ActiveRecord::Schema.define(version: 20160829073416) do

  create_table "careers", force: :cascade do |t|
    t.string   "advertiser"
    t.string   "title"
    t.text     "description"
    t.text     "qualification"
    t.string   "contract_nature"
    t.decimal  "salary"
    t.datetime "start_date"
    t.datetime "application_deadline"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "career_img_file_name"
    t.string   "career_img_content_type"
    t.integer  "career_img_file_size"
    t.datetime "career_img_updated_at"
    t.integer  "user_id"
  end

  add_index "careers", ["user_id"], name: "index_careers_on_user_id"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contact_forms", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.text     "message"
    t.string   "nickname"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "ontechnologies", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.string   "url"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "user_id"
    t.string   "ontechnology_img_file_name"
    t.string   "ontechnology_img_content_type"
    t.integer  "ontechnology_img_file_size"
    t.datetime "ontechnology_img_updated_at"
  end

  add_index "ontechnologies", ["user_id"], name: "index_ontechnologies_on_user_id"

  create_table "pictures", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "user_id"
  end

  add_index "pictures", ["user_id"], name: "index_pictures_on_user_id"

  create_table "products", force: :cascade do |t|
    t.string   "title"
    t.string   "url"
    t.text     "description"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "price"
    t.string   "product_img_file_name"
    t.string   "product_img_content_type"
    t.integer  "product_img_file_size"
    t.datetime "product_img_updated_at"
    t.integer  "user_id"
  end

  add_index "products", ["user_id"], name: "index_products_on_user_id"

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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
