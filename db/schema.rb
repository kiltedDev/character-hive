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

ActiveRecord::Schema.define(version: 20171212013243) do

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
    t.boolean "acrobatics", default: false, null: false
    t.boolean "bluff", default: false, null: false
    t.boolean "climb", default: false, null: false
    t.boolean "diplomacy", default: false, null: false
    t.boolean "disable_device", default: false, null: false
    t.boolean "disguise", default: false, null: false
    t.boolean "escape_artist", default: false, null: false
    t.boolean "fly", default: false, null: false
    t.boolean "heal", default: false, null: false
    t.boolean "intimidate", default: false, null: false
    t.boolean "knowledge_arcana", default: false, null: false
    t.boolean "knowledge_dungeoneering", default: false, null: false
    t.boolean "knowledge_local", default: false, null: false
    t.boolean "knowledge_nature", default: false, null: false
    t.boolean "knowledge_planes", default: false, null: false
    t.boolean "knowledge_religion", default: false, null: false
    t.boolean "knowledge_history", default: false, null: false
    t.boolean "knowledge_engineering", default: false, null: false
    t.boolean "knowledge_geography", default: false, null: false
    t.boolean "knowledge_nobility", default: false, null: false
    t.boolean "perception", default: false, null: false
    t.boolean "ride", default: false, null: false
    t.boolean "sense_motive", default: false, null: false
    t.boolean "spellcraft", default: false, null: false
    t.boolean "stealth", default: false, null: false
    t.boolean "survival", default: false, null: false
    t.boolean "swim", default: false, null: false
    t.boolean "use_magic_device", default: false, null: false
    t.boolean "appraise", default: false, null: false
    t.boolean "handle_animal", default: false, null: false
    t.boolean "linguistics", default: false, null: false
    t.boolean "sleight_of_hand", default: false, null: false
    t.boolean "profession", default: false, null: false
    t.boolean "craft", default: false, null: false
    t.index ["name"], name: "index_character_classes_on_name", unique: true
  end

  create_table "character_size_categories", force: :cascade do |t|
    t.integer "character_id", null: false
    t.integer "size_category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  create_table "details_panels", force: :cascade do |t|
    t.string "player_name", null: false
    t.string "campaign"
    t.string "gender"
    t.string "alignment", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "character_id", null: false
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

  create_table "size_categories", force: :cascade do |t|
    t.string "creature_size", null: false
    t.integer "size_modifier", null: false
    t.integer "special_size_modifier", null: false
    t.integer "fly_modifier", null: false
    t.integer "stealth_modifier", null: false
    t.integer "base_reach", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
