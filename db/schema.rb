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

ActiveRecord::Schema.define(version: 20170525191715) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "material_units", force: :cascade do |t|
    t.string "unitType"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "materials", force: :cascade do |t|
    t.string "trade"
    t.string "itemCode"
    t.string "description"
    t.string "itemUnit"
    t.decimal "unitPrice", precision: 8, scale: 2
    t.string "orderUnit"
    t.decimal "conversionRate", precision: 4, scale: 2
    t.date "priceDate"
    t.integer "priceAge"
    t.decimal "markup"
    t.decimal "wastePercent"
    t.decimal "wasteQuantity"
    t.string "jobCostCode"
    t.integer "productionRate"
    t.text "note"
    t.string "laborClassCode"
    t.decimal "laborClassRate"
    t.integer "unit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
