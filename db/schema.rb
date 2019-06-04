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

ActiveRecord::Schema.define(version: 20190601061759) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "audiences", force: :cascade do |t|
    t.bigint "event_id"
    t.bigint "role_id"
    t.bigint "user_id"
    t.index ["event_id"], name: "index_aadiences_on_event_id"
    t.index ["role_id"], name: "index_audiences_on_role_id"
    t.index ["user_id"], name: "index_audiences_on_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.text "description"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "handouts", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "session_id"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["session_id"], name: "index_handouts_on_session_id"
    t.index ["user_id"], name: "index_handouts_on_user_id"
  end

  create_table "organisations", force: :cascade do |t|
    t.string "name"
    t.string "abbr"
    t.string "email"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organisations_users", id: false, force: :cascade do |t|
    t.bigint "organisation_id", null: false
    t.bigint "user_id", null: false
    t.index ["organisation_id", "user_id"], name: "index_organisations_users_on_organisation_id_and_user_id"
    t.index ["user_id", "organisation_id"], name: "index_organisations_users_on_user_id_and_organisation_id"
  end

  create_table "privileges", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "privileges_roles", id: false, force: :cascade do |t|
    t.bigint "role_id", null: false
    t.bigint "privilege_id", null: false
    t.index ["privilege_id", "role_id"], name: "index_privileges_roles_on_privilege_id_and_role_id"
    t.index ["role_id", "privilege_id"], name: "index_privileges_roles_on_role_id_and_privilege_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.string "title"
    t.text "learning_objectives"
    t.datetime "start_date"
    t.integer "duration"
    t.string "picture_url"
    t.bigint "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_sessions_on_event_id"
  end

  create_table "sessions_topics", id: false, force: :cascade do |t|
    t.bigint "session_id", null: false
    t.bigint "topic_id", null: false
    t.index ["session_id"], name: "index_sessions_topics_on_session_id_and_topic_id"
    t.index ["topic_id"], name: "index_sessions_topics_on_topic_id_and_session_id"
  end

  create_table "sessions_users", id: false, force: :cascade do |t|
    t.bigint "session_id", null: false
    t.bigint "user_id", null: false
    t.index ["session_id", "user_id"], name: "index_sessions_users_on_session_id_and_user_id"
    t.index ["user_id", "session_id"], name: "index_sessions_users_on_user_id_and_session_id"
  end

  create_table "topics", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "full_name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "audiences", "events"
  add_foreign_key "audiences", "roles"
  add_foreign_key "audiences", "users"
  add_foreign_key "handouts", "sessions"
  add_foreign_key "handouts", "users"
  add_foreign_key "sessions", "events"
end
