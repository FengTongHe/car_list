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

ActiveRecord::Schema[7.0].define(version: 2022_10_08_045800) do
  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "manufactures", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "model_categories", force: :cascade do |t|
    t.integer "model_id", null: false
    t.integer "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_model_categories_on_category_id"
    t.index ["model_id"], name: "index_model_categories_on_model_id"
  end

  create_table "models", force: :cascade do |t|
    t.string "name"
    t.string "fuel"
    t.integer "horsepower"
    t.integer "cylinder"
    t.string "transmission"
    t.string "driven_wheel"
    t.integer "door"
    t.string "size"
    t.string "style"
    t.integer "highway_mpg"
    t.integer "city_mpg"
    t.integer "popularity"
    t.integer "msrp"
    t.integer "year_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["year_id"], name: "index_models_on_year_id"
  end

  create_table "years", force: :cascade do |t|
    t.integer "year"
    t.integer "manufacture_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["manufacture_id"], name: "index_years_on_manufacture_id"
    t.index ["year", "manufacture_id"], name: "index_years_on_year_and_manufacture_id", unique: true
  end

  add_foreign_key "model_categories", "categories"
  add_foreign_key "model_categories", "models"
  add_foreign_key "models", "years"
  add_foreign_key "years", "manufactures"
end
