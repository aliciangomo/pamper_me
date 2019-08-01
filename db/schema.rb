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

ActiveRecord::Schema.define(version: 2019_07_31_100847) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "treatment_id"
    t.date "date"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "payment_type"
    t.integer "amount_cents", default: 0, null: false
    t.jsonb "payment"
    t.index ["treatment_id"], name: "index_bookings_on_treatment_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "photos", force: :cascade do |t|
    t.string "data"
    t.bigint "provider_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["provider_id"], name: "index_photos_on_provider_id"
  end

  create_table "providers", force: :cascade do |t|
    t.string "location"
    t.string "photo"
    t.string "statement"
    t.text "description"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "neighborhood"
    t.float "latitude"
    t.float "longitude"
    t.string "phone_number"
    t.index ["user_id"], name: "index_providers_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "provider_id"
    t.text "content"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["provider_id"], name: "index_reviews_on_provider_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "treatments", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "provider_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "category"
    t.integer "price_cents", default: 0, null: false
    t.index ["provider_id"], name: "index_treatments_on_provider_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.string "provider"
    t.string "uid"
    t.string "token"
    t.integer "expires_at"
    t.boolean "expires"
    t.string "refresh_token"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "treatments"
  add_foreign_key "bookings", "users"
  add_foreign_key "photos", "providers"
  add_foreign_key "providers", "users"
  add_foreign_key "reviews", "providers"
  add_foreign_key "reviews", "users"
  add_foreign_key "treatments", "providers"
end
