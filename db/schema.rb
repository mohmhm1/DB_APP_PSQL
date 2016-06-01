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

ActiveRecord::Schema.define(version: 20160304065225) do

  create_table "docs", force: :cascade do |t|
    t.string   "name"
    t.string   "attachment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "documents", force: :cascade do |t|
    t.string   "filename"
    t.string   "content_type"
    t.binary   "file_contents"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "hards", force: :cascade do |t|
    t.binary   "file_contents"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "inventories", force: :cascade do |t|
    t.string   "Product"
    t.string   "Category"
    t.string   "Location"
    t.string   "SerialNumber"
    t.string   "LotNumber"
    t.date     "ExpirationDate"
    t.integer  "Quantity"
    t.text     "Notes"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "Low_Stock_Indicator"
  end

# Could not dump table "newest" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "people", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.integer  "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "post_attachments", force: :cascade do |t|
    t.integer  "post_id"
    t.string   "attachment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.date     "date_of_service"
    t.string   "Via"
    t.string   "person"
    t.string   "customer"
    t.string   "FAS"
    t.string   "FSE"
    t.string   "code"
    t.string   "instrument"
    t.text     "complaint"
    t.text     "Diagnosis"
    t.boolean  "resolved",        default: false
    t.string   "filename"
    t.string   "content_type"
    t.binary   "file_contents"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "sites", force: :cascade do |t|
    t.string   "site"
    t.string   "location"
    t.string   "contacts"
    t.string   "email"
    t.date     "installed"
    t.string   "FSE"
    t.date     "PQandTraining"
    t.string   "FAS"
    t.string   "TrainedOn"
    t.string   "SxSerialNumber"
    t.string   "MappingTool"
    t.string   "RGQSN"
    t.string   "RgqSoftware"
    t.string   "SAReporter"
    t.string   "AssayPackage"
    t.boolean  "NGS"
    t.string   "NGSassay"
    t.string   "NGSSXSN"
    t.string   "ST401i"
    t.string   "ST401e"
    t.string   "SQ301"
    t.string   "SQSuite"
    t.string   "SQreporter"
    t.date     "NGSInstall"
    t.string   "NGSFSE"
    t.date     "NGSPQandTraining"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "uploads", force: :cascade do |t|
    t.string   "url"
    t.string   "name"
    t.text     "Description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
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

# Could not dump table "velas" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

end
