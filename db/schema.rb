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

ActiveRecord::Schema.define(version: 20150717022714) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "guardians", force: :cascade do |t|
    t.string   "weburl"
    t.string   "webtitle"
    t.string   "webPublicationDate"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "instagrams", force: :cascade do |t|
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "niles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nprs", force: :cascade do |t|
    t.string   "link"
    t.string   "title"
    t.string   "teaser"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nyts", force: :cascade do |t|
    t.string   "url"
    t.string   "title"
    t.string   "abstract"
    t.string   "published_date"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "soundcs", force: :cascade do |t|
    t.string   "embedhtml"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "twits", force: :cascade do |t|
    t.string   "url"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usas", force: :cascade do |t|
    t.string   "link"
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",            null: false
    t.string   "email"
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "youtubes", force: :cascade do |t|
    t.string   "embedhtml"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
