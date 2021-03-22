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

ActiveRecord::Schema.define(version: 2021_03_22_015321) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.bigint "phone"
    t.string "address"
    t.string "city"
    t.string "country"
    t.integer "zipcode"
    t.string "website"
    t.string "github"
    t.string "linkedin"
    t.string "tweeter"
    t.text "about_me"
    t.string "technologies"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "partners", force: :cascade do |t|
    t.string "company_name"
    t.string "contact_name"
    t.string "address"
    t.integer "zipcode"
    t.string "email"
    t.bigint "phone"
    t.string "website"
    t.text "about_us"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.daterange "duration"
    t.string "prize"
    t.string "technologies"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "partner_id", null: false
    t.bigint "employee_id", null: false
    t.index ["employee_id"], name: "index_projects_on_employee_id"
    t.index ["partner_id"], name: "index_projects_on_partner_id"
  end

  add_foreign_key "projects", "employees"
  add_foreign_key "projects", "partners"
end
