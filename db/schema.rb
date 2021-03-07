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

ActiveRecord::Schema.define(version: 2021_03_07_174542) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "study_sessions", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "total_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_study_sessions_on_user_id"
  end

  create_table "study_tasks", force: :cascade do |t|
    t.bigint "study_session_id", null: false
    t.bigint "task_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["study_session_id"], name: "index_study_tasks_on_study_session_id"
    t.index ["task_id"], name: "index_study_tasks_on_task_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.boolean "completed", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_tasks_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "playlist", default: "https://open.spotify.com/embed/playlist/0vvXsWCC9xrXsKd4FyS8kM"
    t.integer "timer_interval", default: 25
    t.integer "timer_break", default: 5
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "study_sessions", "users"
  add_foreign_key "study_tasks", "study_sessions"
  add_foreign_key "study_tasks", "tasks"
  add_foreign_key "tasks", "users"
end
