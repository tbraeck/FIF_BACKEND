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

ActiveRecord::Schema[7.2].define(version: 2024_10_06_230942) do
  create_table "accepted_products", force: :cascade do |t|
    t.integer "seller_id", null: false
    t.string "product_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["seller_id"], name: "index_accepted_products_on_seller_id"
  end

  create_table "donors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.text "email"
    t.integer "phone_number"
    t.integer "zip_code"
    t.string "product_type"
    t.string "brand"
    t.string "how_broken"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "brand"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sellers", force: :cascade do |t|
    t.string "company_name"
    t.string "address"
    t.string "zip_code"
    t.text "email"
    t.integer "phone_number"
    t.string "accepted_product"
    t.string "type_of_repair"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "accepted_products", "sellers"
end
