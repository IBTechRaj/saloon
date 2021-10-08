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

ActiveRecord::Schema.define(version: 2021_10_08_072724) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.datetime "apptdate"
    t.string "service"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "appttime"
    t.string "saloonspa"
    t.index ["user_id"], name: "index_appointments_on_user_id"
  end

  create_table "businesses", force: :cascade do |t|
    t.datetime "bdate"
    t.time "bstarttime"
    t.time "bendtime"
    t.string "bservice"
    t.integer "brevenue"
    t.bigint "saloonspa_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["saloonspa_id"], name: "index_businesses_on_saloonspa_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "mobile"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_clients_on_user_id"
  end

  create_table "jwt_denylist", force: :cascade do |t|
    t.string "jti", null: false
    t.datetime "exp", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["jti"], name: "index_jwt_denylist_on_jti"
  end

  create_table "saloonspas", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "pincode"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "gstin"
    t.string "pan"
    t.integer "chairs"
    t.index ["user_id"], name: "index_saloonspas_on_user_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "stype"
    t.integer "sduration"
    t.integer "sprice"
    t.bigint "saloonspa_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["saloonspa_id"], name: "index_services_on_saloonspa_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "worktimes", force: :cascade do |t|
    t.integer "weekday"
    t.time "opens"
    t.time "closes"
    t.bigint "saloonspa_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["saloonspa_id"], name: "index_worktimes_on_saloonspa_id"
  end

  add_foreign_key "appointments", "users"
  add_foreign_key "businesses", "saloonspas"
  add_foreign_key "clients", "users"
  add_foreign_key "saloonspas", "users"
  add_foreign_key "services", "saloonspas"
  add_foreign_key "worktimes", "saloonspas"
end
