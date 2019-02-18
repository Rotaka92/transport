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

ActiveRecord::Schema.define(version: 2019_01_31_091737) do

  create_table "demand_sites", force: :cascade do |t|
    t.string "name"
    t.float "demand"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "problems", force: :cascade do |t|
    t.float "ofv"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "supply_sites", force: :cascade do |t|
    t.string "name"
    t.float "capacity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transportations", force: :cascade do |t|
    t.integer "supply_site_id"
    t.integer "demand_site_id"
    t.float "cost_factor"
    t.float "transported_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["demand_site_id"], name: "index_transportations_on_demand_site_id"
    t.index ["supply_site_id", "demand_site_id"], name: "index_transportations_on_supply_site_id_and_demand_site_id", unique: true
    t.index ["supply_site_id"], name: "index_transportations_on_supply_site_id"
  end

end
