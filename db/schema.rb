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

ActiveRecord::Schema.define(version: 2020_08_19_160815) do

  create_table "kids", force: :cascade do |t|
    t.string "f_name"
    t.string "l_name"
    t.date "birth"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "milestone_id"
    t.index ["milestone_id"], name: "index_kids_on_milestone_id"
  end

  create_table "milestones", force: :cascade do |t|
    t.string "title"
    t.date "date"
    t.integer "age"
    t.string "location"
    t.text "content"
    t.datetime "updated_at", precision: 6, null: false
    t.date "published"
  end

  add_foreign_key "kids", "milestones"
end
