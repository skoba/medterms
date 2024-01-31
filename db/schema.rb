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

ActiveRecord::Schema[7.1].define(version: 2024_01_31_101806) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hotcodes", force: :cascade do |t|
    t.string "standard_hot"
    t.string "hot7"
    t.string "manufacturer_code"
    t.string "preparation_code"
    t.string "logistics_code"
    t.string "jan"
    t.string "mhlw"
    t.string "yj"
    t.string "receden_code1"
    t.string "receden_code2"
    t.string "notice"
    t.string "product_name"
    t.string "receden_name"
    t.string "unit"
    t.string "package_style"
    t.integer "package_unit_num"
    t.string "package_unit_unit"
    t.integer "total_package_unit_num"
    t.string "total_package_unit_unit"
    t.string "category"
    t.string "manufacturer"
    t.string "seller"
    t.string "update_category"
    t.date "update_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "receden_drugs", force: :cascade do |t|
    t.integer "update_category"
    t.string "master_type"
    t.string "drug_code"
    t.integer "kanji_len"
    t.string "kanji_name"
    t.integer "kana_len"
    t.string "kana_name"
    t.integer "unit_code"
    t.integer "unit_len"
    t.string "unit_name"
    t.integer "price_category"
    t.decimal "price"
    t.integer "reserved13"
    t.integer "narcotics_category"
    t.integer "nerve_destroying"
    t.integer "bio"
    t.integer "generic"
    t.integer "reserved18"
    t.integer "dent_specific"
    t.integer "enhancer"
    t.decimal "injection_volume"
    t.integer "registration_category"
    t.integer "product_name_code"
    t.integer "old_price_category"
    t.decimal "old_price"
    t.integer "kanji_update_category"
    t.integer "kana_update_category"
    t.integer "drug_form"
    t.text "reserve29"
    t.date "updated_date"
    t.date "abolition_date"
    t.string "mhlwcode"
    t.integer "publication_order"
    t.date "expiration_date"
    t.text "product_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
