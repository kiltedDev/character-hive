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

ActiveRecord::Schema.define(version: 20171104231740) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "character_classes", force: :cascade do |t|
    t.string "name", null: false
    t.integer "hit_die", null: false
    t.string "bab", null: false
    t.integer "base_skills", null: false
    t.boolean "caster", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_character_classes_on_name", unique: true
  end

  create_table "characters", force: :cascade do |t|
    t.string "name", null: false
    t.string "character_class", null: false
    t.integer "level", null: false
    t.integer "user_id", null: false
    t.integer "race_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "race_name", default: "Human", null: false
  end

  create_table "levels", force: :cascade do |t|
    t.integer "character_id", null: false
    t.integer "character_class_id", null: false
    t.integer "level_number", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "races", force: :cascade do |t|
    t.string "name", null: false
    t.string "vision", default: "Normal", null: false
    t.boolean "wild", default: false, null: false
    t.integer "strength", default: 0, null: false
    t.integer "constitution", default: 0, null: false
    t.integer "dexterity", default: 0, null: false
    t.integer "intelligence", default: 0, null: false
    t.integer "wisdom", default: 0, null: false
    t.integer "charisma", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_races_on_name", unique: true
  end

  create_table "stat_values", force: :cascade do |t|
    t.integer "name", null: false
    t.integer "value", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "username", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
