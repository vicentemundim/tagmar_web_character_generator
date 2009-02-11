# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090208154552) do

  create_table "belongings", :force => true do |t|
    t.string   "type"
    t.string   "identifier"
    t.string   "name"
    t.text     "description"
    t.integer  "minimum_strength"
    t.integer  "minimum_height"
    t.integer  "first_column"
    t.integer  "nineth_column"
    t.integer  "sixteenth_column"
    t.integer  "base_damage"
    t.integer  "range"
    t.integer  "absorption"
    t.integer  "bronze_coins_cost"
    t.integer  "defense_increase"
    t.string   "special_effect"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "characters", :force => true do |t|
    t.string   "name"
    t.text     "biography"
    t.integer  "age"
    t.integer  "level"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "race_id"
    t.integer  "profession_id"
    t.string   "god"
    t.string   "social_class"
    t.integer  "intelect"
    t.integer  "aura"
    t.integer  "charisma"
    t.integer  "strength"
    t.integer  "physical"
    t.integer  "agility"
    t.integer  "current_experience"
    t.integer  "physical_energy"
    t.integer  "heroic_energy"
    t.integer  "combat_accumulated_points"
    t.integer  "magic_accumulated_points"
    t.integer  "skill_accumulated_points"
    t.string   "focus"
    t.integer  "current_bronze_coins"
    t.integer  "current_silver_coins"
    t.integer  "current_gold_coins"
    t.integer  "height"
    t.integer  "weight"
  end

  create_table "professions", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "skill_points_per_level"
    t.integer  "combat_points_per_level"
    t.boolean  "can_use_magic"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "identifier"
  end

  create_table "races", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "intelect_modifier"
    t.integer  "aura_modifier"
    t.integer  "charisma_modifier"
    t.integer  "strength_modifier"
    t.integer  "physical_modifier"
    t.integer  "agility_modifier"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "identifier"
  end

  create_table "skills", :force => true do |t|
    t.string   "identifier"
    t.string   "name"
    t.text     "description"
    t.string   "base_attribute"
    t.integer  "cost"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
    t.boolean  "is_admin"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

end
