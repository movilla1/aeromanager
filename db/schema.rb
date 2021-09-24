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

ActiveRecord::Schema.define(version: 2021_09_22_222907) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "aeroclubs", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone"
    t.string "web"
    t.string "facebook"
    t.string "lat"
    t.string "long"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "airplanes", force: :cascade do |t|
    t.string "make"
    t.string "model"
    t.date "purchased_date"
    t.string "designation"
    t.bigint "aeroclub_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aeroclub_id"], name: "index_airplanes_on_aeroclub_id"
  end

  create_table "club_members", force: :cascade do |t|
    t.bigint "aeroclub_id"
    t.bigint "user_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.boolean "active", default: true
    t.boolean "banned", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "instructor"
    t.index ["aeroclub_id"], name: "index_club_members_on_aeroclub_id"
    t.index ["user_id"], name: "index_club_members_on_user_id"
  end

  create_table "consumables", force: :cascade do |t|
    t.bigint "user_id"
    t.integer "created_by_id"
    t.integer "updated_by_id"
    t.string "description"
    t.float "quantity"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_consumables_on_user_id"
  end

  create_table "flight_logs", force: :cascade do |t|
    t.bigint "airplane_id"
    t.bigint "user_id"
    t.datetime "flight_start", null: false
    t.datetime "flight_end", null: false
    t.float "normalized_duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "flight_type"
    t.integer "instructor_id"
    t.string "origin_airport"
    t.string "destination_airport"
    t.integer "odo_start"
    t.integer "odo_end"
    t.index ["airplane_id"], name: "index_flight_logs_on_airplane_id"
    t.index ["user_id"], name: "index_flight_logs_on_user_id"
  end

  create_table "invoice_rows", force: :cascade do |t|
    t.bigint "invoice_id"
    t.string "description"
    t.float "quantity"
    t.float "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["invoice_id"], name: "index_invoice_rows_on_invoice_id"
  end

  create_table "invoices", force: :cascade do |t|
    t.bigint "user_id"
    t.integer "creator_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_invoices_on_user_id"
  end

  create_table "maintenance_records", force: :cascade do |t|
    t.bigint "airplane_id"
    t.bigint "user_id"
    t.string "description"
    t.integer "hours_extended"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["airplane_id"], name: "index_maintenance_records_on_airplane_id"
    t.index ["user_id"], name: "index_maintenance_records_on_user_id"
  end

  create_table "prices", force: :cascade do |t|
    t.float "amount"
    t.string "name"
    t.boolean "active", default: true
    t.datetime "date_deactivated"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.integer "role"
    t.boolean "active"
    t.boolean "confirmed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "license"
    t.integer "license_type"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
end
