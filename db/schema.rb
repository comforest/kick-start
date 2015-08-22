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

ActiveRecord::Schema.define(version: 20150822125012) do

  create_table "homeworks", force: :cascade do |t|
    t.integer  "working_id"
    t.integer  "meeting_id"
    t.integer  "homework_id"
    t.integer  "member_id"
    t.text     "content"
    t.text     "rating"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "lessons", force: :cascade do |t|
    t.integer  "lesson_id"
    t.integer  "professor_id"
    t.string   "subject"
    t.text     "working"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "meetings", force: :cascade do |t|
    t.integer  "meeting_id"
    t.integer  "working_id"
    t.datetime "day"
    t.string   "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "professors", force: :cascade do |t|
    t.integer  "professor_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "students", force: :cascade do |t|
    t.integer  "student_id"
    t.string   "name"
    t.string   "major"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workings", force: :cascade do |t|
    t.integer  "working_id"
    t.integer  "lesson_id"
    t.text     "team"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
