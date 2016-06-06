# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160606003029) do

  create_table "games", force: :cascade do |t|
    t.integer  "home_team_id"
    t.integer  "away_team_id"
    t.integer  "inning_count"
    t.integer  "home_team_run"
    t.integer  "away_team_run"
    t.integer  "home_team_hit"
    t.integer  "away_team_hit"
    t.integer  "home_team_error"
    t.integer  "away_team_error"
    t.string   "winning_team"
    t.string   "losing_team"
    t.date     "date"
    t.string   "game_type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "hitter_stats", force: :cascade do |t|
    t.integer  "at_bat"
    t.integer  "plate_appearance"
    t.integer  "total_hit"
    t.integer  "single"
    t.integer  "double"
    t.integer  "triple"
    t.integer  "home_run"
    t.integer  "run"
    t.integer  "rbi"
    t.integer  "steal"
    t.integer  "walk"
    t.integer  "hit_by_pitch"
    t.integer  "strikeout"
    t.integer  "lineout"
    t.integer  "popout"
    t.integer  "flyout"
    t.integer  "groundout"
    t.integer  "sacrifice_out"
    t.integer  "base_on_error"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "player_id"
  end

  create_table "leagues", force: :cascade do |t|
    t.string   "league_name"
    t.integer  "league_id"
    t.boolean  "baseball"
    t.integer  "max_player"
    t.integer  "season_length"
    t.integer  "commissioner_id"
    t.integer  "team_count"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "city"
    t.string   "state"
    t.string   "zip"
  end

  create_table "lineups", force: :cascade do |t|
    t.integer  "team_id"
    t.integer  "player_id"
    t.string   "name"
    t.string   "batting_order"
    t.string   "player_position"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "players", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "birthday"
    t.integer  "uniform_number"
    t.string   "gender"
    t.integer  "team_id"
    t.integer  "height_ft"
    t.integer  "height_in"
    t.integer  "weight"
    t.string   "position"
    t.string   "bats"
    t.string   "throws"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "post_seasons", force: :cascade do |t|
    t.integer  "post_season_id"
    t.integer  "length"
    t.integer  "team_count"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "post_season_name"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "regular_seasons", force: :cascade do |t|
    t.integer  "league_id"
    t.integer  "length"
    t.integer  "team_count"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "season_name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "team_name"
    t.integer  "roster_count"
    t.integer  "league_id"
    t.boolean  "baseball"
    t.integer  "manager_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
