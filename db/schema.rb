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

ActiveRecord::Schema.define(version: 20140710192728) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: true do |t|
    t.string  "name"
    t.integer "user_id"
    t.date    "start_date"
    t.date    "end_date"
  end

  create_table "courses_students", id: false, force: true do |t|
    t.integer "course_id"
    t.integer "student_id"
  end

  add_index "courses_students", ["course_id", "student_id"], name: "index_courses_students_on_course_id_and_student_id", using: :btree

  create_table "courses_users", force: true do |t|
    t.integer "course_id"
    t.integer "user_id"
  end

  add_index "courses_users", ["course_id", "user_id"], name: "index_courses_users_on_course_id_and_user_id", using: :btree

  create_table "questions", force: true do |t|
    t.integer "session_id"
    t.boolean "pending"
    t.string  "question"
    t.text    "answer"
  end

  create_table "sessions", force: true do |t|
    t.integer  "course_id"
    t.string   "name"
    t.datetime "date"
    t.integer  "sequence_num"
  end

  create_table "users", force: true do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "type"
  end

end
