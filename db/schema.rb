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

ActiveRecord::Schema.define(version: 20160916152905) do

  create_table "clients", id: :string, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "twitter_handle"
    t.string   "refer_url"
    t.string   "name"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "tweets", primary_key: "tweet_id", id: :string, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "client_id"
    t.text     "tweet_text",           limit: 65535
    t.datetime "tweet_time"
    t.integer  "tweet_favorite_count"
    t.integer  "tweet_retweet_count"
    t.string   "referral_code"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

end
