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

ActiveRecord::Schema.define(version: 20170417103313) do

  create_table "fpl_players", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint   "fpl_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "team_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "gw_1"
    t.integer  "gw_2"
    t.integer  "gw_3"
    t.integer  "gw_4"
    t.integer  "gw_5"
    t.integer  "gw_6"
    t.integer  "gw_7"
    t.integer  "gw_8"
    t.integer  "gw_9"
    t.integer  "gw_10"
    t.integer  "gw_11"
    t.integer  "gw_12"
    t.integer  "gw_13"
    t.integer  "gw_14"
    t.integer  "gw_15"
    t.integer  "gw_16"
    t.integer  "gw_17"
    t.integer  "gw_18"
    t.integer  "gw_19"
    t.integer  "gw_20"
    t.integer  "gw_21"
    t.integer  "gw_22"
    t.integer  "gw_23"
    t.integer  "gw_24"
    t.integer  "gw_25"
    t.integer  "gw_26"
    t.integer  "gw_27"
    t.integer  "gw_28"
    t.integer  "gw_29"
    t.integer  "gw_30"
    t.integer  "gw_31"
    t.integer  "gw_32"
    t.integer  "gw_33"
    t.integer  "gw_34"
    t.integer  "gw_35"
    t.integer  "gw_36"
    t.integer  "gw_37"
    t.integer  "gw_38"
    t.index ["fpl_id"], name: "index_fpl_players_on_fpl_id", unique: true, using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "provider",                             default: "email", null: false
    t.string   "uid",                                  default: "",      null: false
    t.string   "encrypted_password",                   default: "",      null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                        default: 0,       null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "name"
    t.string   "nickname"
    t.string   "image"
    t.string   "email"
    t.text     "tokens",                 limit: 65535
    t.datetime "created_at",                                             null: false
    t.datetime "updated_at",                                             null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true, using: :btree
  end

end
