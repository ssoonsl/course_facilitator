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

ActiveRecord::Schema.define(version: 20171001010346) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "batch_objectives", force: :cascade do |t|
    t.bigint "batch_id", null: false
    t.bigint "week_plan_id"
    t.bigint "day_plan_id"
    t.bigint "learning_objective_id", null: false
    t.bigint "learning_outcome_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["batch_id"], name: "index_batch_objectives_on_batch_id"
    t.index ["day_plan_id"], name: "index_batch_objectives_on_day_plan_id"
    t.index ["learning_objective_id"], name: "index_batch_objectives_on_learning_objective_id"
    t.index ["learning_outcome_id"], name: "index_batch_objectives_on_learning_outcome_id"
    t.index ["week_plan_id"], name: "index_batch_objectives_on_week_plan_id"
  end

  create_table "batches", force: :cascade do |t|
    t.string "code", default: "", null: false
    t.date "start_date", default: "2000-01-01", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "day_plans", force: :cascade do |t|
    t.bigint "week_plan_id", null: false
    t.integer "day", default: 0, null: false
    t.text "morning", default: "", null: false
    t.text "afterlunch", default: "", null: false
    t.text "afternoon", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["week_plan_id"], name: "index_day_plans_on_week_plan_id"
  end

  create_table "learning_objectives", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.text "description", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "learning_outcomes", force: :cascade do |t|
    t.bigint "learning_objective_id"
    t.text "description", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["learning_objective_id"], name: "index_learning_outcomes_on_learning_objective_id"
  end

  create_table "week_plans", force: :cascade do |t|
    t.bigint "batch_id", null: false
    t.integer "week", default: 0, null: false
    t.date "start_date", default: "2000-01-01", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["batch_id"], name: "index_week_plans_on_batch_id"
  end

  add_foreign_key "day_plans", "week_plans"
  add_foreign_key "learning_outcomes", "learning_objectives"
  add_foreign_key "week_plans", "batches"
end
